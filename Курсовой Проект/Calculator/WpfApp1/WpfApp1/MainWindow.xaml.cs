using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Calculator
{
	public partial class MainWindow : Window
	{
		public MainWindow()
		{
			InitializeComponent();
		}

		private bool button_MorePressed = false;

		#region More Button:
		/*
           * Функция, отвечающая за действия,
           * выполняемые при нажатии визуальной кнопки "more" .
           */
		#endregion
		private void ButtonMore_Pressed(object sender, RoutedEventArgs e)
		{
			double colCount = (double)grid1.ColumnDefinitions.Count;

			if (!button_MorePressed)
			{
				ButtonMore.Content = "back";

				var newColumn = new ColumnDefinition();
				grid1.ColumnDefinitions.Add(newColumn);

				colCount = (double)grid1.ColumnDefinitions.Count;

				Width *= colCount / (colCount - (double)1);

				button_MorePressed = true;
			}
			else
			{
				ButtonMore.Content = "more";

				grid1.ColumnDefinitions.RemoveAt((int)(colCount - 1));

				colCount = (double)grid1.ColumnDefinitions.Count;

				Width *= colCount / (colCount + (double)1);

				button_MorePressed = false;
			}
		}

		#region '=' Click:
		/*
           * Функция, отвечающая за действия,
           * выполняемые при нажатии визуальной кнопки "=" .
           */
		#endregion
		private void ButtonAssign_Click(object sender, RoutedEventArgs e)
		{
			string expression = textBox.Text;
			double result = 0;
			try
			{
				result = Math.Calculate.Using.ReversePolishNotation(expression);
				textBox.Text = result.ToString();
			}
			catch (InvalidOperationException)
			{
				MessageBox.Show("Invalid input expression");
			}
		}

		#region Numbers Buttons:
		/*
           * Функция, отвечающая за действия,
           * выполняемые при нажатии цифровых
           * визуальных кнопок .
           */
		#endregion
		private void NumberButtons_Click(object sender, RoutedEventArgs e)
		{
			textBox.Text += ((Button)e.OriginalSource).Content.ToString();

			((Button)e.OriginalSource).Focusable = false;
		}

		#region Clear Button:
		/*
           * Функция, отвечающая за действия,
           * выполняемые при нажатии визуальной кнопки "AC" .
           */
		#endregion
		private void ClearButton_Click(object sender, RoutedEventArgs e)
		{
			textBox.Text = "";
		}

		#region Operations Button:
		/*
           * Функция, отвечающая за действия,
           * выполняемые при нажатии визуальных кнопок,
           * отвечающих за хранение операций математических выражений .
           */
		#endregion
		private void OperationButtons_Click(object sender, RoutedEventArgs e)
		{
			textBox.Text += $" {((Button)e.OriginalSource).Content} ";
		}

		private void TextBox_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.Key == Key.Enter)
			{
				ButtonAssign_Click(sender, e);
			}
		}
	}
}
