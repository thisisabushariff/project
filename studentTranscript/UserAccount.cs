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
    public partial class UserAccount : Form
    {
        MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");
        public UserAccount()
        {
            InitializeComponent();
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
              
        }

        private void button2_Click(object sender, EventArgs e)
        {
            
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
              try
            {
                con.Close();
                con.Open();
                var ccmmd = new MySqlCommand("Delete from login WHERE Password = '" + textBoxPassword.Text + "'", con);
                ccmmd.ExecuteNonQuery();

                con.Close();
                con.Open();
                var Querry = string.Format("INSERT into login(Username,Password,Status) VALUES('{0}','{1}','{2}')", textBoxUsername.Text.Trim(), textBoxPassword2.Text.Trim(), textBoxRank.Text.Trim());
                var cmdd = new MySqlCommand(Querry, con);
                cmdd.ExecuteNonQuery();
                MessageBox.Show("Changed Successfully");
                con.Close();
                }
              catch (Exception ex)
              {
                  MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
              }
         
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Close();
            var back = new Menu();
            back.Show();
       
        }

        private void buttonClear_Click(object sender, EventArgs e)
        {
             try
            {
            textBoxStaff.Text = "";
            textBoxFac.Text = "";
            textBoxUsername.Text = "";
            textBoxPassword.Text = "";
            textBoxDep.Text = "";
            textBoxName.Text = "";
            textBoxRank.Text = "";
            textBoxPassword2.Text = "";
             }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        

        }

        private void buttonNewUser_Click(object sender, EventArgs e)
        {
            try
            {
                con.Close();
                con.Open();
                var querryinsert = string.Format("INSERT into staff_info(Name,Faculty,Departement,Rank,StaffPersonal_ID) VALUES('{0}','{1}','{2}','{3}','{4}')", textBoxName.Text.Trim(), textBoxFac.Text.Trim(), textBoxDep.Text.Trim(), textBoxRank.Text.Trim(), textBoxStaff.Text.Trim());
                var cmd = new MySqlCommand(querryinsert, con);
                cmd.ExecuteNonQuery();
                con.Close();

                con.Open();
                var Querry = string.Format("INSERT into login(Username,Password,Status) VALUES('{0}','{1}','{2}')", textBoxUsername.Text.Trim(), textBoxPassword.Text.Trim(), textBoxRank.Text.Trim());
                var cmdd = new MySqlCommand(Querry, con);
                cmdd.ExecuteNonQuery();
                MessageBox.Show("Saved Successfully");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void textBoxStaff_TextChanged(object sender, EventArgs e)
        {
            try
            {
             con.Close();
                con.Open();
                var ccmd = new MySqlCommand("SELECT * FROM staff_info WHERE StaffPersonal_ID = '" + textBoxStaff.Text.Trim() + "'", con);
                var ddr = ccmd.ExecuteReader();
                if (ddr.Read())
                {
                     
                    textBoxName.Text = ddr["Name"].ToString();
                    textBoxFac.Text = ddr["Faculty"].ToString();
                    textBoxDep.Text = ddr["Departement"].ToString();
                    textBoxRank.Text = ddr["Rank"].ToString();

                }
                else
                {
                    // MessageBox.Show("WRONG REGISTRATION NUMBER OR RECORD NOT EXIST IN THIS SYSTEM");

                }
        
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
             }
        }

        private void textBoxStaff_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetterOrDigit(ch) && ch != 8)
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
        }

        private void textBoxRank_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetter(ch) && ch != 8 && ch != 46 && ch != ' ' && ch != 8)
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
        }

        private void textBoxPassword2_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetterOrDigit(ch) && ch != 8)
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
        }
        }
    }
}
