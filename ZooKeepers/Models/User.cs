using System;
using System.Collections.Generic;

namespace ZooKeepers.Models
{
    public class User
    {
        public int UserID { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string PasswordHash { get; set; }
        public bool IsMember { get; set; }
        public DateTime CreatedAt { get; set; }

        public ICollection<Order> Orders { get; set; }
    }
}
