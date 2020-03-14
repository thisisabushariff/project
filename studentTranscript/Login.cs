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
    public partial class Login : Form
    {
        MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");

        public Login()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {   
            try
                {
            con.Close();
            con.Open();
            var cmd = new MySqlCommand("SELECT * FROM login WHERE Username = '" + textBoxUsername.Text + "' AND Password ='" + textBoxPassword.Text + "'", con);
            var dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.Hide();
                Form next;
                if (dr["Status"].ToString() == "ADMIN")
                {
                    next = new Menu();
                    next.Show();
                }
                else if (dr["Status"].ToString() == "STAFF")
                {
                    next = new Admin_Menu();
                    next.Show();
                }

              
            }
            else
            {
             MessageBox.Show("WRONG PASSWORD OR USERNAME");

            }
           
            con.Close();
          
             }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

 
        }

        private void textBoxPassword_TextChanged(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Do you really want to Quit ", "", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                Application.Exit();
            }
            else
            {

            }
        }

        private void textBoxUsername_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetterOrDigit(ch) && ch != 8 && ch != 46 && ch != '\r')
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
          
        }

        private void LoginAdmin_Click(object sender, EventArgs e)
        {
       
        }

        private void ExitAdmin_Click(object sender, EventArgs e)
        {
        }

        private void TxtUserAdmin_KeyPress(object sender, KeyPressEventArgs e)
        {
          
        }

        private void textBoxUsername_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBoxPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                button1_Click(sender, e);
            }
        }
    }
}
