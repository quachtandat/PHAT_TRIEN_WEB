using Newtonsoft.Json;
using Project.Models;

namespace Project.Helpers
{
    // Lớp tĩnh dùng để thao tác với giỏ hàng qua Session
    public static class CartService
    {   // Tên khóa để lưu giỏ hàng trong Session
        private const string CARTKEY = "cart";
        // Lấy giỏ hàng từ Session
        public static List<CartItem> GetCart(ISession session)
        {   // Lấy chuỗi JSON từ session theo key "cart"
            var json = session.GetString(CARTKEY);
            // Nếu không có dữ liệu hoặc chuỗi rỗng → trả về danh sách trống
            // Ngược lại → chuyển chuỗi JSON thành List<CartItem>
            return string.IsNullOrEmpty(json)
                ? new List<CartItem>()
                : JsonConvert.DeserializeObject<List<CartItem>>(json) ?? new List<CartItem>();
        }
        // Lưu danh sách sản phẩm vào Session
        public static void SaveCart(ISession session, List<CartItem> cart)
        {
            session.SetString(CARTKEY, JsonConvert.SerializeObject(cart));// Chuyển danh sách sản phẩm sang JSON và lưu vào session
        }
        // Xóa giỏ hàng khỏi Session
        public static void ClearCart(ISession session)
        {
            session.Remove(CARTKEY);// Xóa giỏ hàng khỏi session bằng cách remove key "cart"
        }
    }

}
