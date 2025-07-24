namespace Project.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public decimal? Price { get; set; }
        public int? Quantity { get; set; } // Số lượng tồn kho
        public string? Image { get; set; }
        public string? Description { get; set; }
        public DateTime? DiscountDate { get; set; }        // Ngày bắt đầu khuyến mãi
        public DateTime? DiscountEndDate { get; set; }     // Ngày kết thúc khuyến mãi
        public decimal? DiscountPercent { get; set; }      // Phần trăm giảm giá (%)

        public int? CategoryId { get; set; }  // Khóa ngoại liên kết với Category
        public Category? Category { get; set; } // Quan hệ nhiều-1 với Category
        public ICollection<OrderDetail>? OrderDetail { get; set; } = new List<OrderDetail>(); // Quan hệ 1-nhiều với OrderDetail
    }
}
