using Microsoft.AspNetCore.Mvc;
using Project.AppData;
using Microsoft.EntityFrameworkCore;

namespace Project.Controllers
{
    public class OrderController : Controller
    {
        private readonly AppDBContext _context;

        public OrderController(AppDBContext context)
        {
            _context = context;
        }

        public IActionResult MyOrders()
        {
            var userId = User.Identity?.Name ?? "guest";
            var orders = _context.Orders
                                 .Where(o => o.UserId == userId)
                                 .OrderByDescending(o => o.CreatedAt)
                                 .ToList();
            return View(orders);
        }

        public IActionResult Details(int id)
        {
            var order = _context.Orders
                                .Include(o => o.OrderDetail)
                                .ThenInclude(od => od.Product)
                                .FirstOrDefault(o => o.Id == id);

            if (order == null) return NotFound();
            return View(order);
        }
    }

}
