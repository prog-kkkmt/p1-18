using System;
using System.Data;
using System.Windows.Forms;
using System.Data.SQLite;

namespace ListOfStudents
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private static SQLiteConnection sql_con; // Подключаем базу данных SQLite.

        private static SQLiteCommand sql_cmd; // представляет реализацию интерфейса, для выполняния запросов к базе данных.  

        private static SQLiteDataAdapter DB; // Считывает результаты базы данных.

        private static DataSet DS = new DataSet(); // Предоставляет кэш памяти.

        private static DataTable DT = new DataTable(); // Создает таблицу в памяти.

        private static string dbPath = Application.StartupPath + "\\" + "DBStudent.db"; // Прокладывает путь к базе данных.

        // Загружает дату в наш конструктор.
        private void Form1_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        // Подключает дата сурс, который в свою очередь позволяет получать и задавать данные. Все это записывается в путь к базе данных.
        private void SetConnection()
        {
            sql_con = new SQLiteConnection("Data Source= " + dbPath);
        }

        //Создает универсальную функцию, чтобы выполнить запросы команды Create.
        private void ExecuteQuery(string query)
        {
            SetConnection();
            sql_con.Open();
            sql_cmd = sql_con.CreateCommand();
            sql_cmd.CommandText = query;
            sql_cmd.ExecuteNonQuery();
            sql_con.Close();

        }

        // Создаем доступ к базе данных SQLite, извлекаем данные из таблицы и заполняем набор данных.
        private void LoadData()
        {
            SetConnection();
            sql_con.Open();
            sql_cmd = sql_con.CreateCommand();
            string CommandText = "select * from StudentList";
            DB = new SQLiteDataAdapter(CommandText, sql_con);
            DS.Reset();
            DB.Fill(DS);
            DT = DS.Tables[0];
            dataGridView1.DataSource = DT;
            sql_con.Close();
        }

        // Выполняет удаление данных
        private void Deletebutton_Click_1(object sender, EventArgs e)
        {
            string query = "DELETE FROM StudentList WHERE ID = '" + IDtextBox.Text + "' ;";
            ExecuteQuery(query);
            LoadData();
        }

        // Выполняет запись данных
        private void Addbutton_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO StudentList (`FirstName`, `LastName`, `MiddleName`, `EducationForm`, `Snills`, `BirthDate`)" +
                " VALUES('" + FirstNametextBox.Text + "','" + LastNametextBox.Text + "','" + MiddleNametextBox.Text + "','" + EducationFormtextBox.Text + 
                "','" + SnillstextBox.Text + "','" + BirthDatetextBox.Text + "')";
            ExecuteQuery(query);
            LoadData();
        }

        // Выполняет изменение данных
        private void Insertbutton_Click(object sender, EventArgs e)
        {
            string query = "UPDATE StudentList SET `FirstName` = '" + FirstNametextBox.Text + "', `LastName` = '" + LastNametextBox.Text +
                "', `MiddleName` = '" + MiddleNametextBox.Text + "', `EducationForm` = '" + EducationFormtextBox.Text + "', `Snills` = '" +
                SnillstextBox.Text + "', `BirthDate` = '" + BirthDatetextBox.Text + "' WHERE `ID` = '" + IDtextBox.Text + "' ;";
            ExecuteQuery(query);
            LoadData();
        }

        //Выполняет выход из программы
        private void Exitbutton_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        //При нажатие определенной ячейки, выделяется ряд
        private void DataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex == -1)
                return;

            dataGridView1.CurrentRow.Selected = true;
            IDtextBox.Text = dataGridView1.Rows[e.RowIndex].Cells["ID"].FormattedValue.ToString();
            FirstNametextBox.Text = dataGridView1.Rows[e.RowIndex].Cells["FirstName"].FormattedValue.ToString();
            LastNametextBox.Text = dataGridView1.Rows[e.RowIndex].Cells["LastName"].FormattedValue.ToString();
            MiddleNametextBox.Text = dataGridView1.Rows[e.RowIndex].Cells["MiddleName"].FormattedValue.ToString();
            EducationFormtextBox.Text = dataGridView1.Rows[e.RowIndex].Cells["EducationForm"].FormattedValue.ToString();
            SnillstextBox.Text = dataGridView1.Rows[e.RowIndex].Cells["Snills"].FormattedValue.ToString();
            BirthDatetextBox.Text = dataGridView1.Rows[e.RowIndex].Cells["BirthDate"].FormattedValue.ToString();
        }
    }
}
