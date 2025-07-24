using System.ComponentModel.DataAnnotations;

namespace Project.ViewModels
{
    public class OrderInfoViewModel
    {
        [Required]
        public string Address { get; set; } = null!;

        [Required]
        [RegularExpression(@"^0\d{9}$", ErrorMessage = "Số điện thoại phải gồm 10 chữ số và bắt đầu bằng số 0.")]
        public string Phone { get; set; } = null!;
        [Required]
        public string FullName { get; set; } = null!;

    }
}
