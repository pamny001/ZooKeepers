using System;
using System.Collections.Generic;

namespace ZooKeepers.Models
{
    public class Event
    {
        public int EventID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime EventDate { get; set; }
        public string Location { get; set; }

        public ICollection<EventAnimal> EventAnimals { get; set; }
    }
}
