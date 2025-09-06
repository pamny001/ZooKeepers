namespace ZooKeepers.Models
{
    public class EventAnimal
    {
        public int EventID { get; set; }
        public Event Event { get; set; }

        public int AnimalID { get; set; }
        public Animal Animal { get; set; }
    }
}
