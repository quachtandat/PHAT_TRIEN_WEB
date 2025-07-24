using Microsoft.AspNetCore.Mvc;        
using Newtonsoft.Json;                 
using Project.AppData;                 
using Project.Helpers;                  
using Project.Models;                   
using Project.ViewModels;               

namespace Project.Controllers
{
    public class CartController : Controller
    {
        private readonly AppDBContext _context;

        // Inject DbContext thông qua constructor
        public CartController(AppDBContext context)
        {
            _context = context;
        }

        // Hiển thị trang giỏ hàng
        public IActionResult Index()
        {
            // Lấy danh sách sản phẩm từ session
            var cart = CartService.GetCart(HttpContext.Session);

            // Tạo view model để truyền cho view
            var model = new CartCheckoutViewModel
            {
                CartItems = cart,
                OrderInfo = new OrderInfoViewModel() // Form thông tin khách hàng rỗng ban đầu
            };

            return View("Cart", model); // Trả về view Cart.cshtml
        }

        // Thêm sản phẩm vào giỏ hàng
        public IActionResult AddToCart(int id)
        {
            var product = _context.Products.Find(id); // Tìm sản phẩm theo id
            if (product == null) return NotFound();   // Nếu không có → trả về 404

            var cart = CartService.GetCart(HttpContext.Session); // Lấy giỏ hàng
            var item = cart.FirstOrDefault(p => p.Product.Id == id); // Kiểm tra sản phẩm đã có trong giỏ chưa

            if (item != null)
            {
                item.Quantity++; // Nếu đã có → tăng số lượng
            }
            else
            {
                cart.Add(new CartItem(product, 1)); // Nếu chưa có → thêm mới
            }

            CartService.SaveCart(HttpContext.Session, cart); // Lưu lại giỏ hàng vào session

            return RedirectToAction("Index", "Home"); // Quay về trang chủ
        }

        // Cập nhật số lượng sản phẩm trong giỏ (gửi bằng Ajax)
        [HttpPost]
        public IActionResult UpdateQuantity([FromBody] CartUpdateItem data)
        {
            var cart = CartService.GetCart(HttpContext.Session); // Lấy giỏ hàng
            var item = cart.FirstOrDefault(i => i.Product.Id == data.ProductId); // Tìm sản phẩm cần cập nhật

            if (item != null)
            {
                // Cập nhật số lượng, nếu <= 0 thì đặt lại là 1
                item.Quantity = data.Quantity > 0 ? data.Quantity : 1;
                CartService.SaveCart(HttpContext.Session, cart); // Lưu lại session
                return Ok(); // Trả về 200 OK
            }

            return BadRequest(); // Nếu không tìm thấy sản phẩm → 400
        }

        // Xóa sản phẩm khỏi giỏ hàng
        public IActionResult RemoveFromCart(int id)
        {
            var cart = CartService.GetCart(HttpContext.Session);
            var item = cart.FirstOrDefault(p => p.Product.Id == id);

            if (item != null)
                cart.Remove(item); // Xóa khỏi danh sách

            CartService.SaveCart(HttpContext.Session, cart); // Lưu lại giỏ hàng
            return RedirectToAction("Index"); // Quay lại trang giỏ hàng
        }

        // Bước tạm xác nhận thông tin khách hàng (chưa lưu DB)
        [HttpPost]
        public IActionResult CheckoutTemp(CartCheckoutViewModel model)
        {
            // Kiểm tra thông tin hợp lệ
            if (!ModelState.IsValid)
            {
                // Nếu sai → lấy lại giỏ hàng và trả về view
                model.CartItems = CartService.GetCart(HttpContext.Session);
                return View("Cart", model);
            }

            // Nếu hợp lệ → lưu thông tin khách hàng vào session tạm
            HttpContext.Session.SetString("OrderInfo", JsonConvert.SerializeObject(model.OrderInfo));

            return RedirectToAction("Checkout"); // Chuyển sang bước xác nhận đơn
        }

        // Hiển thị trang xác nhận đơn hàng (sau khi đã điền thông tin)
        [HttpGet]
        public IActionResult Checkout()
        {
            var cart = CartService.GetCart(HttpContext.Session); // Lấy giỏ hàng
            if (!cart.Any()) return RedirectToAction("Index");   // Nếu giỏ trống → quay về

            var orderInfoJson = HttpContext.Session.GetString("OrderInfo"); // Lấy thông tin khách hàng
            if (string.IsNullOrEmpty(orderInfoJson)) return RedirectToAction("Index"); // Nếu chưa có → quay về

            // Dữ liệu ViewModel cho trang xác nhận
            var model = new CartCheckoutViewModel
            {
                CartItems = cart,
                OrderInfo = JsonConvert.DeserializeObject<OrderInfoViewModel>(orderInfoJson)
                              ?? new OrderInfoViewModel()
            };

            return View(model); // Trả về view xác nhận đơn
        }

        // Xác nhận đơn hàng & lưu vào database
        [HttpPost]
        public IActionResult SubmitOrder()
        {
            var cart = CartService.GetCart(HttpContext.Session);
            if (!cart.Any()) return RedirectToAction("Index"); // Nếu trống → hủy

            var orderInfoJson = HttpContext.Session.GetString("OrderInfo");
            if (string.IsNullOrEmpty(orderInfoJson)) return RedirectToAction("Index");

            var model = JsonConvert.DeserializeObject<OrderInfoViewModel>(orderInfoJson);
            if (model == null) return RedirectToAction("Index");

            // Tạo đơn hàng mới
            var order = new Order
            {
                FullName = model.FullName,
                Phone = model.Phone,
                Address = model.Address,
                CreatedAt = DateTime.Now,
                UserId = User.Identity?.Name ?? "guest", // Nếu chưa login thì gán là guest
                Status = "Đang xử lý",
                Total = cart.Sum(i => i.Product.Price * i.Quantity) // Tính tổng tiền
            };

            _context.Orders.Add(order);      // Thêm đơn hàng
            _context.SaveChanges();          // Lưu để có ID

            // Tạo danh sách chi tiết đơn hàng
            var orderDetails = cart.Select(item => new OrderDetail
            {
                OrderId = order.Id,
                ProductId = item.Product.Id,
                Quantity = item.Quantity,
                Price = (double?)item.Product.Price
            }).ToList();

            _context.OrderDetail.AddRange(orderDetails); // Thêm chi tiết
            _context.SaveChanges(); // Lưu

            // Xóa giỏ hàng và thông tin khách hàng trong session
            CartService.ClearCart(HttpContext.Session);
            HttpContext.Session.Remove("OrderInfo");

            return RedirectToAction("Success"); // Chuyển sang trang cảm ơn
        }

        // Trang cảm ơn sau khi đặt hàng thành công
        public IActionResult Success()
        {
            return Content("Cảm ơn bạn đã đặt hàng!");
        }
    }
}
