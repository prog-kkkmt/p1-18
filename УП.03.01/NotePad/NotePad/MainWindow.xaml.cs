using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace NotePad
{
	/// <summary>
	/// Логика взаимодействия для MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		bool _isFileLoadedExternally = false;
		string _loadedFileDirectory;

		public MainWindow()
		{
			InitializeComponent();
		}

		private void OpenMenuItem_Click(object sender, RoutedEventArgs e)
		{
			var fileDialog = new OpenFileDialog();
			fileDialog.Filter = "Text Files (*.txt)|*.txt|All files (*.*)|*.*";

			if (fileDialog.ShowDialog() == true)
			{
				NotePadTextBox.Text = new StreamReader(
					fileDialog.FileName, Encoding.GetEncoding(1251)).ReadToEnd();
					//File.ReadAllText(fileDialog.FileName);

				_isFileLoadedExternally = true;

				_loadedFileDirectory = fileDialog.FileName;
			}
		}

		private void SaveMenuItem_Click(object sender, RoutedEventArgs e)
		{
			if (!_isFileLoadedExternally && NotePadTextBox.Text != "")
			{
				CreateFile();
			}
			else if (_isFileLoadedExternally && NotePadTextBox.Text != "")
			{
				SaveFile();
			}
		}

		private void SaveFile()
		{
			using (var sw = new StreamWriter(_loadedFileDirectory, false, Encoding.GetEncoding(1251)))
			{
				foreach (var ch4r in NotePadTextBox.Text)
				{
					sw.Write(ch4r);
				}
			}
		}

		private void CreateFile()
		{
			var fileDialog = new SaveFileDialog();
			fileDialog.Filter = "Text Files (*.txt)|*.txt|All files (*.*)|*.*";

			if (fileDialog.ShowDialog() == true)
			{
				var writer = new StreamWriter(fileDialog.FileName, false,
					Encoding.GetEncoding(1251));

				writer.Write(NotePadTextBox.Text);

				writer.Close();
			}
		}

		private void Window_KeyDown(object sender, KeyEventArgs e)
		{
			if ((Keyboard.Modifiers & ModifierKeys.Alt) == ModifierKeys.Alt)
			{
				if (Keyboard.IsKeyDown(Key.LeftCtrl) && Keyboard.IsKeyDown(Key.S))
				{
					if (!_isFileLoadedExternally && NotePadTextBox.Text != "")
					{
						CreateFile();
					}
					else if (_isFileLoadedExternally && NotePadTextBox.Text != "")
					{
						SaveFile();
					}
				}
			}
		}
	}
}
