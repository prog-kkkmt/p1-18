using System.Data.Entity;

namespace JoinApplication
{
	class ApplicationContext : DbContext
	{
		public ApplicationContext() : base("DefaultConnection") { }

		public DbSet<User> Users { get; set; }
	}
}
