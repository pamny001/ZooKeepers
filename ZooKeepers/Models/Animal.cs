using System.Collections.Generic;

namespace ZooKeepers.Models
{
    public class Animal
    {
        public int AnimalID { get; set; }
        public string Name { get; set; }
        public string Species { get; set; }
        public string Habitat { get; set; }
        public string Description { get; set; }
        public string ImageURL { get; set; }

        public ICollection<EventAnimal> EventAnimals { get; set; }
    }
}
