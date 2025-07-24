using Microsoft.AspNetCore.Mvc;
using Project.AppData;
using Project.Models;

namespace Project.Controllers
{
    public class ProductController : Controller
    {
        private readonly AppDBContext _context;

        public ProductController( AppDBContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Detail( int id)
        {
           
            Product p = (Product)this._context.Products.Find(id);

            // Lấy danh mục riêng
            var category = _context.Categories.Find(p.CategoryId);

            // Gán danh mục vào sản phẩm
            p.Category = category;

            if (p == null)
            {
                return NotFound(); // Trả về 404 nếu không tìm thấy
            }

            return View(p);
        }

        public IActionResult listpro(int id)
        {
            List<Product> plist = this._context.Products.Where(c=>c.CategoryId==id).ToList();
            return View(plist);
        }
    }
}
