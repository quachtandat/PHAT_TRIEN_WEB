using Microsoft.AspNetCore.Mvc;
using Project.AppData;
using Project.Models;
using Microsoft.EntityFrameworkCore;

namespace Project.Components
{
    public class CategoryViewComponent : ViewComponent
    {
        private readonly AppDBContext _context;
        public CategoryViewComponent(AppDBContext context) { 
            this._context = context;
        }
        public async Task<IViewComponentResult> InvokeAsync() {
            List<Category> categories = await this._context.Categories.ToListAsync();
            return View(categories);
        }
    }
}
