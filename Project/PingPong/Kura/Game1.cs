using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Input;
using System.Threading;

namespace Kura
{
    public partial class Game1 : Form
    {
        Random rnd;
        public static bool start = true;
        bool up, left;
        Sp[] sp = new Sp[10];
        public string KEY;
        public string KE;
        public Game1()
        {
            InitializeComponent();
        }
        public void loadsp(string file,int num, int x, int y)
        {
            sp[num] = new Sp(file, x, y);
        }
        public void loadsp(string file, int num, int x, int y,int w,int h)
        {
            sp[num] = new Sp(file, x, y,w,h);
        }
        public void Setup()
        {
            left = true;
            up = true;
            loadsp("wall1.png", 1, 5, 330);
            loadsp("wall1.png", 2,1260, 330);
            loadsp("ball1.png", 3, 623, 330, 30, 30);
        }

        private void Closebut_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void label2_MouseEnter(object sender, EventArgs e)
        {
            label2.Font = new Font("Tahoma", 36);
        }

        private void label2_MouseLeave(object sender, EventArgs e)
        {
            label2.Font = new Font("Tahoma", 28);
        }

        private void label1_MouseEnter(object sender, EventArgs e)
        {
            label1.Font = new Font("Tahoma", 36);
        }

        private void label1_MouseLeave(object sender, EventArgs e)
        {
            label1.Font = new Font("Tahoma", 28);
        }
        public bool keypress(Keys k)
        {
            if (KEY == k.ToString())
                return true;
            else return false;
        }
        public bool keypress2(Keys k)
        {
            if (KE == k.ToString())
                return true;
            else return false;
        }
        public void movesp(int num, int x, int y)
        {
            sp[num]._x = x;
            sp[num]._y = y;

        }
        public int spy(int num)
        {
            return sp[num]._y;
        }
        public int spx(int num)
        {
            return sp[num]._x;
        }
        
        private void Refresh_Tick(object sender, EventArgs e)
        {

            rnd = new Random();
            if (start)
            {
                this.Refresh();
            }
            if (keypress2(Keys.W) && spy(1) > 10)
                movesp(1, spx(1), spy(1) - 6);
            if (keypress2(Keys.S) && spy(1) < 620)
                movesp(1, spx(1), spy(1) + 6);

           /** if(keypress(Keys.Up) && spy(2) > 10)
                movesp(2, spx(2), spy(2) - 5);
            if (keypress(Keys.Down) && spy(2) < 620)
                movesp(2, spx(2), spy(2) + 5);*/

            if (left)
                movesp(3, spx(3) - 8, spy(3));
            if (!left)
                movesp(3, spx(3) + 8, spy(3));
            if (up)
                movesp(3, spx(3), spy(3)-7);
            if (!up)
                movesp(3, spx(3) , spy(3)+7);

            if (up && spy(3) < 11)
                up = false;
            if (!up && spy(3) > 680)
                up = true;

            if (sp[3].Spcollis(sp[1]) && left)
                left = false;
            if(sp[3].Spcollis(sp[2]) && left == false)
                left = true;

            if(spx(3) < -50)
            {
                label3.Text = "First player loss";
                label3.Show();
                //start = false;
                label1.Show();
                label2.Show();
            }
            if (spx(3) > 1290)
            {
                label3.Text = "Second player loss";
                label3.Show();
                //start = false;
                label1.Show();
                label2.Show();
            }

        }
        
private void wall2_Tick(object sender, EventArgs e)
        {
            System.Timers.Timer wall2_Tick = new System.Timers.Timer();
            wall2_Tick.Interval = 100;
            if (start)
            {
                this.Refresh();
            }
            if (keypress(Keys.Up) && spy(2) > 10)
                movesp(2, spx(2), spy(2) - 7);
            if (keypress(Keys.Down) && spy(2) < 620)
                movesp(2, spx(2), spy(2) + 7);
        }
        private void label1_Click(object sender, EventArgs e)
        {
            Refresh.Start();
            start = true;
            Setup();
            label1.Hide();
            label2.Hide();
            label3.Hide();
        }

        private void Game1_KeyUp(object sender, KeyEventArgs e)
        {
            KEY = "";
            KE = "";
        }

        private void Game1_KeyDown(object sender, KeyEventArgs e)
        {
            KEY = e.KeyCode.ToString();
                KE = e.KeyCode.ToString();
        }

        private void Game1_Load(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        

        private void Draw(object sender, PaintEventArgs e)
        {
            this.DoubleBuffered = true;
            Graphics  g= e.Graphics;
            foreach (Sp s in sp)
            {
                if(s != null)
                {
                    if(s.Show == true)
                    {
                        g.DrawImage(s.CurrenSp, new Rectangle(s._x, s._y, s._width, s._heith));
                    }
                }
            }
        }
    }
}
