using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Net.Sockets;
using System.Reflection.Emit;
using ZooKeepers.Models;

namespace ZooKeepers
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options) { }

        public DbSet<User> Users { get; set; }
        public DbSet<Animal> Animals { get; set; }
        public DbSet<Event> Events { get; set; }
        public DbSet<EventAnimal> EventAnimals { get; set; }
        public DbSet<Merchandise> Merchandise { get; set; }
        public DbSet<Ticket> Tickets { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<OrderItem> OrderItems { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Composite key for EventAnimals
            modelBuilder.Entity<EventAnimal>()
                .HasKey(ea => new { ea.EventID, ea.AnimalID });
        }
    }
}
