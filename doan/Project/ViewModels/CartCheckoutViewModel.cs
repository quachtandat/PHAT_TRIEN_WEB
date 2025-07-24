
using Project.Models;

namespace Project.ViewModels
{
    public class CartCheckoutViewModel
    {
        public List<CartItem> CartItems { get; set; } = new();
        public OrderInfoViewModel OrderInfo { get; set; } = new();
    }
}
