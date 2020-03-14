using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace studentTranscript
{
    public partial class Course : Form
    {
        MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");

        public Course()
        {
            InitializeComponent();
        }

        private void Course_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            
        }

        private void textBoxCode_TextChanged(object sender, EventArgs e)
        {

        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            try
            {

                con.Close();
                con.Open();
                var querryinsert = string.Format("INSERT INTO courses(Code,Title,CreditUnit,Semester,Status) VALUES('{0}','{1}','{2}','{3}','{4}')", textBoxCode.Text, textBoxTitle.Text, textBoxUnit.Text, comboBoxSemester.Text, comboBoxStatus.Text);
                var cmd = new MySqlCommand(querryinsert, con);
                cmd.ExecuteNonQuery();
                MessageBox.Show("Saved Successful");
               
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Close();
            var back = new Menu();
            back.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                textBoxCode.Text = "";
                textBoxTitle.Text = "";
                textBoxUnit.Text = "";
                comboBoxSemester.Text = "";
                comboBoxStatus.Text = "";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        
        }
        
        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void label18_Click(object sender, EventArgs e)
        {

        }

        private void Course_KeyPress(object sender, KeyPressEventArgs e)
        {
            
            //char ch = e.KeyChar;
            //if (!char.IsLetterOrDigit(ch) && ch != 8 && ch != 46 && ch != '\r')
            //{
            //    e.Handled = true;
            //    MessageBox.Show("unwanted character");
            //}

         
        }

        private void textBoxCode_KeyPress(object sender, KeyPressEventArgs e)
        {

            char ch = e.KeyChar;
            if (!char.IsLetterOrDigit(ch) && ch != 8 && ch != 46 && ch != '\r')
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }

        }

        private void textBoxTitle_KeyPress(object sender, KeyPressEventArgs e)
        {

            char ch = e.KeyChar;
            if (!char.IsLetterOrDigit(ch) && ch != ' ' && ch != 8)
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
        }

        private void textBoxUnit_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetterOrDigit(ch) && ch != 8 && ch != 46 && ch != '\r')
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
        }
    }
}
