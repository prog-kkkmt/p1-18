
namespace ListOfStudents
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.BirthDatetextBox = new System.Windows.Forms.TextBox();
            this.BirthDateLabel = new System.Windows.Forms.Label();
            this.Exitbutton = new System.Windows.Forms.Button();
            this.Insertbutton = new System.Windows.Forms.Button();
            this.Addbutton = new System.Windows.Forms.Button();
            this.Phonelabel = new System.Windows.Forms.Label();
            this.SnillstextBox = new System.Windows.Forms.TextBox();
            this.EducationFormlabel = new System.Windows.Forms.Label();
            this.MiddleNamelabel = new System.Windows.Forms.Label();
            this.LastNamelabel = new System.Windows.Forms.Label();
            this.FirstNamelabel = new System.Windows.Forms.Label();
            this.EducationFormtextBox = new System.Windows.Forms.TextBox();
            this.MiddleNametextBox = new System.Windows.Forms.TextBox();
            this.LastNametextBox = new System.Windows.Forms.TextBox();
            this.FirstNametextBox = new System.Windows.Forms.TextBox();
            this.IDtextBox = new System.Windows.Forms.TextBox();
            this.IDlabel = new System.Windows.Forms.Label();
            this.Deletebutton = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dataGridView1);
            this.groupBox1.Location = new System.Drawing.Point(458, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(760, 582);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Таблица";
            // 
            // dataGridView1
            // 
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.Location = new System.Drawing.Point(3, 16);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(754, 563);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.DataGridView1_CellClick);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.BirthDatetextBox);
            this.groupBox2.Controls.Add(this.BirthDateLabel);
            this.groupBox2.Controls.Add(this.Exitbutton);
            this.groupBox2.Controls.Add(this.Insertbutton);
            this.groupBox2.Controls.Add(this.Addbutton);
            this.groupBox2.Controls.Add(this.Phonelabel);
            this.groupBox2.Controls.Add(this.SnillstextBox);
            this.groupBox2.Controls.Add(this.EducationFormlabel);
            this.groupBox2.Controls.Add(this.MiddleNamelabel);
            this.groupBox2.Controls.Add(this.LastNamelabel);
            this.groupBox2.Controls.Add(this.FirstNamelabel);
            this.groupBox2.Controls.Add(this.EducationFormtextBox);
            this.groupBox2.Controls.Add(this.MiddleNametextBox);
            this.groupBox2.Controls.Add(this.LastNametextBox);
            this.groupBox2.Controls.Add(this.FirstNametextBox);
            this.groupBox2.Controls.Add(this.IDtextBox);
            this.groupBox2.Controls.Add(this.IDlabel);
            this.groupBox2.Controls.Add(this.Deletebutton);
            this.groupBox2.Location = new System.Drawing.Point(21, 28);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(371, 563);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Меню";
            // 
            // BirthDatetextBox
            // 
            this.BirthDatetextBox.Location = new System.Drawing.Point(154, 273);
            this.BirthDatetextBox.Name = "BirthDatetextBox";
            this.BirthDatetextBox.Size = new System.Drawing.Size(150, 20);
            this.BirthDatetextBox.TabIndex = 18;
            // 
            // BirthDateLabel
            // 
            this.BirthDateLabel.AutoSize = true;
            this.BirthDateLabel.Location = new System.Drawing.Point(33, 273);
            this.BirthDateLabel.Name = "BirthDateLabel";
            this.BirthDateLabel.Size = new System.Drawing.Size(86, 13);
            this.BirthDateLabel.TabIndex = 17;
            this.BirthDateLabel.Text = "Дата рождения";
            // 
            // Exitbutton
            // 
            this.Exitbutton.Location = new System.Drawing.Point(123, 473);
            this.Exitbutton.Name = "Exitbutton";
            this.Exitbutton.Size = new System.Drawing.Size(126, 39);
            this.Exitbutton.TabIndex = 16;
            this.Exitbutton.Text = "Выход";
            this.Exitbutton.UseVisualStyleBackColor = true;
            this.Exitbutton.Click += new System.EventHandler(this.Exitbutton_Click);
            // 
            // Insertbutton
            // 
            this.Insertbutton.Location = new System.Drawing.Point(123, 408);
            this.Insertbutton.Name = "Insertbutton";
            this.Insertbutton.Size = new System.Drawing.Size(126, 43);
            this.Insertbutton.TabIndex = 15;
            this.Insertbutton.Text = "Изменение данных";
            this.Insertbutton.UseVisualStyleBackColor = true;
            this.Insertbutton.Click += new System.EventHandler(this.Insertbutton_Click);
            // 
            // Addbutton
            // 
            this.Addbutton.Location = new System.Drawing.Point(36, 340);
            this.Addbutton.Name = "Addbutton";
            this.Addbutton.Size = new System.Drawing.Size(126, 49);
            this.Addbutton.TabIndex = 14;
            this.Addbutton.Text = "Добавление данных";
            this.Addbutton.UseVisualStyleBackColor = true;
            this.Addbutton.Click += new System.EventHandler(this.Addbutton_Click);
            // 
            // Phonelabel
            // 
            this.Phonelabel.AutoSize = true;
            this.Phonelabel.Location = new System.Drawing.Point(33, 238);
            this.Phonelabel.Name = "Phonelabel";
            this.Phonelabel.Size = new System.Drawing.Size(38, 13);
            this.Phonelabel.TabIndex = 13;
            this.Phonelabel.Text = "Снилс";
            // 
            // SnillstextBox
            // 
            this.SnillstextBox.Location = new System.Drawing.Point(154, 238);
            this.SnillstextBox.Name = "SnillstextBox";
            this.SnillstextBox.Size = new System.Drawing.Size(150, 20);
            this.SnillstextBox.TabIndex = 12;
            // 
            // EducationFormlabel
            // 
            this.EducationFormlabel.AutoSize = true;
            this.EducationFormlabel.Location = new System.Drawing.Point(33, 203);
            this.EducationFormlabel.Name = "EducationFormlabel";
            this.EducationFormlabel.Size = new System.Drawing.Size(93, 13);
            this.EducationFormlabel.TabIndex = 11;
            this.EducationFormlabel.Text = "Форма обучения";
            // 
            // MiddleNamelabel
            // 
            this.MiddleNamelabel.AutoSize = true;
            this.MiddleNamelabel.Location = new System.Drawing.Point(33, 166);
            this.MiddleNamelabel.Name = "MiddleNamelabel";
            this.MiddleNamelabel.Size = new System.Drawing.Size(54, 13);
            this.MiddleNamelabel.TabIndex = 10;
            this.MiddleNamelabel.Text = "Отчество";
            // 
            // LastNamelabel
            // 
            this.LastNamelabel.AutoSize = true;
            this.LastNamelabel.Location = new System.Drawing.Point(33, 128);
            this.LastNamelabel.Name = "LastNamelabel";
            this.LastNamelabel.Size = new System.Drawing.Size(56, 13);
            this.LastNamelabel.TabIndex = 9;
            this.LastNamelabel.Text = "Фамилия";
            // 
            // FirstNamelabel
            // 
            this.FirstNamelabel.AutoSize = true;
            this.FirstNamelabel.Location = new System.Drawing.Point(33, 93);
            this.FirstNamelabel.Name = "FirstNamelabel";
            this.FirstNamelabel.Size = new System.Drawing.Size(29, 13);
            this.FirstNamelabel.TabIndex = 8;
            this.FirstNamelabel.Text = "Имя";
            // 
            // EducationFormtextBox
            // 
            this.EducationFormtextBox.Location = new System.Drawing.Point(154, 203);
            this.EducationFormtextBox.Name = "EducationFormtextBox";
            this.EducationFormtextBox.Size = new System.Drawing.Size(150, 20);
            this.EducationFormtextBox.TabIndex = 7;
            // 
            // MiddleNametextBox
            // 
            this.MiddleNametextBox.Location = new System.Drawing.Point(154, 166);
            this.MiddleNametextBox.Name = "MiddleNametextBox";
            this.MiddleNametextBox.Size = new System.Drawing.Size(150, 20);
            this.MiddleNametextBox.TabIndex = 6;
            // 
            // LastNametextBox
            // 
            this.LastNametextBox.Location = new System.Drawing.Point(154, 128);
            this.LastNametextBox.Name = "LastNametextBox";
            this.LastNametextBox.Size = new System.Drawing.Size(150, 20);
            this.LastNametextBox.TabIndex = 5;
            // 
            // FirstNametextBox
            // 
            this.FirstNametextBox.Location = new System.Drawing.Point(154, 93);
            this.FirstNametextBox.Name = "FirstNametextBox";
            this.FirstNametextBox.Size = new System.Drawing.Size(150, 20);
            this.FirstNametextBox.TabIndex = 4;
            // 
            // IDtextBox
            // 
            this.IDtextBox.Location = new System.Drawing.Point(154, 57);
            this.IDtextBox.Name = "IDtextBox";
            this.IDtextBox.ReadOnly = true;
            this.IDtextBox.Size = new System.Drawing.Size(150, 20);
            this.IDtextBox.TabIndex = 3;
            // 
            // IDlabel
            // 
            this.IDlabel.AutoSize = true;
            this.IDlabel.Location = new System.Drawing.Point(33, 57);
            this.IDlabel.Name = "IDlabel";
            this.IDlabel.Size = new System.Drawing.Size(18, 13);
            this.IDlabel.TabIndex = 2;
            this.IDlabel.Text = "ID";
            // 
            // Deletebutton
            // 
            this.Deletebutton.Location = new System.Drawing.Point(211, 340);
            this.Deletebutton.Name = "Deletebutton";
            this.Deletebutton.Size = new System.Drawing.Size(140, 49);
            this.Deletebutton.TabIndex = 1;
            this.Deletebutton.Text = "Удалить данных";
            this.Deletebutton.UseVisualStyleBackColor = true;
            this.Deletebutton.Click += new System.EventHandler(this.Deletebutton_Click_1);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1230, 606);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "Главная форма";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox IDtextBox;
        private System.Windows.Forms.Label IDlabel;
        private System.Windows.Forms.Button Deletebutton;
        private System.Windows.Forms.TextBox EducationFormtextBox;
        private System.Windows.Forms.TextBox MiddleNametextBox;
        private System.Windows.Forms.TextBox LastNametextBox;
        private System.Windows.Forms.TextBox FirstNametextBox;
        private System.Windows.Forms.Label Phonelabel;
        private System.Windows.Forms.TextBox SnillstextBox;
        private System.Windows.Forms.Label EducationFormlabel;
        private System.Windows.Forms.Label MiddleNamelabel;
        private System.Windows.Forms.Label LastNamelabel;
        private System.Windows.Forms.Label FirstNamelabel;
        private System.Windows.Forms.Button Addbutton;
        private System.Windows.Forms.Button Insertbutton;
        private System.Windows.Forms.Button Exitbutton;
        private System.Windows.Forms.TextBox BirthDatetextBox;
        private System.Windows.Forms.Label BirthDateLabel;
    }
}

