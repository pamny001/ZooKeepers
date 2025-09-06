namespace ZooKeepers.Models
{
    public class Ticket
    {
        public int TicketID { get; set; }
        public string TicketType { get; set; }
        public decimal Price { get; set; }
        public int ValidityDays { get; set; }
        public string Description { get; set; }

        public ICollection<OrderItem> OrderItems { get; set; }
    }
}
