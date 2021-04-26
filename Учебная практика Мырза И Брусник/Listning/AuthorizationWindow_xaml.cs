using System.Linq;
using System.Windows;

namespace JoinApplication
{
	public partial class AuthorizationWindow : Window
	{
		public AuthorizationWindow()
		{
			InitializeComponent();
		}

		private void ButtonAuthClick(object sender, RoutedEventArgs e)
		{
			string login = loginTB.Text.Trim();
			string password = passwordTB.Password.Trim();


			User authUser = null;

			using (var db = new ApplicationContext())
			{
				authUser = db.Users.Where(user => user.Login == login && user.Password == password).FirstOrDefault();
			}

			if (authUser != null)
			{
				MessageBox.Show("Accepted!");

				var usp = new UserPageWindow();
				usp.Show();
				Hide();
			}
			else
				MessageBox.Show("This user doesn't register yet!");
		}

		private void RegistrButton(object sender, RoutedEventArgs e)
		{
			var mainWindow = new RegistrationWindow();

			mainWindow.Show();

			Hide();
		}
	}
}
