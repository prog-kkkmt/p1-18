namespace JoinApplication
{
	class User
	{
		public string login,
				    password,
				    email;

		public int id { get; set; }
		public string Login { get { return login; } set { login = value; } }
		public string Email { get { return email; } set { email = value; } }
		public string Password { get { return password; } set { password = value; } }

		public User() { }

		public User(string login, string email, string pass)
		{
			this.login = login;
			this.email = email;
			this.password = pass;
		}
	}
}
