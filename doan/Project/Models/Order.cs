using System.ComponentModel.DataAnnotations;

namespace Project.Models
{
    public class Order
    {
        public int Id { get; set; }
        [StringLength(450)]
        public string UserId { get; set; } = null!;
        public string? Status { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string? Address { get; set; }
        public decimal? Total { get; set; }
        public ICollection<OrderDetail> OrderDetail { get; set; } = new List<OrderDetail>();
        public string? FullName { get; set; }
        public string? Phone { get; set; }
    }
}
