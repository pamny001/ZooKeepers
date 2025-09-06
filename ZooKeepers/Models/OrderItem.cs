namespace ZooKeepers.Models
{
    public class OrderItem
    {
        public int OrderItemID { get; set; }
        public int OrderID { get; set; }
        public Order Order { get; set; }

        public int? MerchandiseID { get; set; }
        public Merchandise Merchandise { get; set; }

        public int? TicketID { get; set; }
        public Ticket Ticket { get; set; }

        public int Quantity { get; set; }
        public decimal Price { get; set; }
    }
}
