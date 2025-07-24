namespace Project.Models
{
    public class Category
    {
        public int Id { get; set; } // Mã danh mục
        public string? Name { get; set; } // Tên danh mục
        public string? Description { get; set; }  // Mô tả danh mục

        // Quan hệ 1-nhiều với Product: 1 danh mục có nhiều sản phẩm
        public ICollection<Product>? Products { get; set; } = new List<Product>();
    }
}
