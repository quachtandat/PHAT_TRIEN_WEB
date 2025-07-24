using Microsoft.AspNetCore.Identity;

namespace Project.AppData
{
    public class AppUser : IdentityUser
    {
        public string? Address { get; set; }   // Địa chỉ
    }
}
