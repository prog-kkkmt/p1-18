using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;

namespace JoinApplication
{
	public partial class RegistrationWindow : Window
	{
		ApplicationContext db;

		public RegistrationWindow()
		{
			InitializeComponent();

			db = new ApplicationContext();

			var da = new DoubleAnimation();

			da.From = 0;
			da.To = 450;
			da.Duration = TimeSpan.FromSeconds(3);

			RegButton.BeginAnimation(Button.WidthProperty, da);
		}

		private void ButtonRegistrationClick(object sender, RoutedEventArgs e)
		{
			string login = loginTB.Text.Trim();
			string password = passwordTB.Password.Trim();
			string confirmPass = passwordConfirmTB.Password.Trim();
			string email = emailTB.Text.Trim().ToLower();

			bool isLogin = false,
				isPass = false,
				areEqual = false,
				isEmail = false;

			if (login.Length < 4)
			{
				loginTB.ToolTip = "Login is too small!";
				loginTB.Background = Brushes.Red;
			}
			else if (login.Length > 16)
			{
				loginTB.ToolTip = "Login is too large!";
				loginTB.Background = Brushes.Red;
			}
			else
			{
				loginTB.ToolTip = "";
				loginTB.Background = Brushes.Transparent;

				isLogin = true;
			}

			if (password.Length < 8)
			{
				passwordTB.ToolTip = "Password is too small!";
				passwordTB.Background = Brushes.Red;
			}
			else if (password.Length > 32)
			{
				passwordTB.ToolTip = "Password is too large!";
				passwordTB.Background = Brushes.Red;
			}
			else
			{
				passwordTB.ToolTip = "";
				passwordTB.Background = Brushes.Transparent;

				isPass = true;
			}

			if (confirmPass != password)
			{
				passwordConfirmTB.ToolTip = "Passwords don't match!";
				passwordConfirmTB.Background = Brushes.Red;
			}
			else
			{
				passwordConfirmTB.ToolTip = "";
				passwordConfirmTB.Background = Brushes.Transparent;

				areEqual = true;
			}

			if (!(email.Contains('@') && email.Contains('.')))
			{
				emailTB.ToolTip = "This is not an e-mail!";
				emailTB.Background = Brushes.Red;
			}
			else
			{
				emailTB.ToolTip = "";
				emailTB.Background = Brushes.Transparent;

				isEmail = true;
			}

			if (isLogin && isPass && areEqual && isEmail)
			{
				try
				{
					db.Users.Add(new User(login, email, password));
					db.SaveChanges();

					var authWind = new AuthorizationWindow();

					authWind.Show();

					Hide();

					MessageBox.Show("Accepted!");
				}
				catch (System.Data.Entity.Infrastructure.DbUpdateException)
				{
					MessageBox.Show("User is already registred!");
				}
			}
		}

		private void EnterButton(object sender, RoutedEventArgs e)
		{
			var authWind = new AuthorizationWindow();

			authWind.Show();

			Hide();
		}
	}
}
