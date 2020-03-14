using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace studentTranscript
{
    public partial class Student_Enrolment : Form
    {
        int i;

        MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");

        public Student_Enrolment()
        {
            InitializeComponent();
        }

        private void Student_Enrolment_Load(object sender, EventArgs e)
        {
            try
            {
                con.Close();
                con.Open();

                var list = new List<string>();
                var slect = "SELECT * FROM courses";
                var cmd = new MySqlCommand(slect, con);
                var dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    list.Add(dr["Code"].ToString());

                }
                comboBoxcourse.Items.AddRange(list.ToArray());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        public static bool StudentExist(String RegNo)
        {
            try
            {
                MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");
                con.Close();
                con.Open();


                var query = "SELECT * FROM student WHERE RegNo = '" + RegNo + "'";
                var cmd = new MySqlCommand(query, con);
                var dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

        }



        private void buttonAdd_Click(object sender, EventArgs e)
        {

            try
            {
                if (textBoxReg.Text == String.Empty || textBoxname.Text == String.Empty || textBoxFac.Text == String.Empty || textBoxDept.Text == String.Empty || comboBoxProgram.Text == String.Empty || comboBoxlevel.Text == String.Empty || comboBoxSemester.Text == String.Empty || comboBoxSession.Text == String.Empty)
	        {
		         MessageBox.Show(" All fields must be filled");

           	}
                 else
                 {
               i = dataGridView1.Rows.Count;
                bool exist = false;
                for (int j = 0; j < i; j++)
                {
                    if (comboBoxcourse.SelectedItem.ToString() == Convert.ToString(dataGridView1.Rows[j].Cells[1].Value))
                    {
                        exist = true;
                        break;
                    }
                }



                if (exist == false)
                {
                  

                con.Close();
                con.Open();
                var querry = "SELECT * FROM courses WHERE Code = '" + comboBoxcourse.SelectedItem.ToString() + "'";
                var cmd = new MySqlCommand(querry, con);
                var dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (comboBoxSemester.SelectedItem.ToString() == "FIRST")
                    {
                        dataGridView1.Rows.Add(i, dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), comboBoxSemester.SelectedItem.ToString());
                        CreditUnit.Text = (Convert.ToInt32(CreditUnit.Text) + Convert.ToInt32(dr["CreditUnit"].ToString())).ToString();
                        i++;
                    }

                    else if (comboBoxSemester.SelectedItem.ToString() == "SECOND")
                    {
                        CreditUnit2.Visible = true;
                        CreditUnit.Visible = false;
                        dataGridView1.Rows.Add(i, dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), comboBoxSemester.SelectedItem.ToString());
                        CreditUnit2.Text = (Convert.ToInt32(CreditUnit2.Text) + Convert.ToInt32(dr["CreditUnit"].ToString())).ToString();
                        i++;
                    }
                }

                    }
                else
                  {
                    MessageBox.Show("Course Already Added");
                  }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            try
            {
                con.Close();
                con.Open();

                if (textBoxReg.Text.Length < 10 || textBoxReg.Text.Length > 10)
                {
                    MessageBox.Show("Wrong Registration Number");

                }
                else
                {
                    var Querry = "INSERT into student(Name,RegNo,Faculty,Department,Level,Programme) VALUE('" + textBoxname.Text + "','" + textBoxReg.Text + "', '" + textBoxFac.Text + "', '" + textBoxDept.Text + "', '" + comboBoxlevel.SelectedItem + "','" + comboBoxProgram.Text + "')";
                    var cmb = new MySqlCommand(Querry, con);
                    cmb.ExecuteNonQuery();

                    for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
                    {
                        Querry = string.Format("INSERT into enrollment(RegNo,Session,Semester,Course) VALUE('{0}', '{1}','{2}','{3}')", textBoxReg.Text, comboBoxSession.SelectedItem.ToString(), dataGridView1.Rows[i].Cells[4].Value.ToString(), dataGridView1.Rows[i].Cells[1].Value.ToString());
                        var cmd = new MySqlCommand(Querry, con);
                        cmd.ExecuteNonQuery();
                    }
                    MessageBox.Show("Saved Successful");

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void buttonClose_Click(object sender, EventArgs e)
        {
            this.Close();
            var back = new Menu();
            back.Show();
        }

        private void buttonUpdate_Click(object sender, EventArgs e)
        {

            try
            {
                con.Close();
                con.Open();
            var ccmmd = new MySqlCommand(" Delete from student WHERE RegNo = '" + textBoxReg.Text + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' ", con);
             ccmmd.ExecuteNonQuery();

             var ccmd = new MySqlCommand("Delete from enrollment WHERE RegNo = '" + textBoxReg.Text + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "'", con);
             ccmd.ExecuteNonQuery();

             var Querry = "INSERT into student(Name,Faculty,Department,RegNo,Level,Programme) VALUE('" + textBoxname.Text + "', '" + textBoxFac.Text + "', '" + textBoxDept.Text + "', '" + textBoxReg.Text + "', '" + comboBoxlevel.SelectedItem + "','" + comboBoxProgram.Text + "')";
            var cmb = new MySqlCommand(Querry, con);
            cmb.ExecuteNonQuery();

            for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
            {
                Querry = string.Format("INSERT into enrollment(RegNo,Session,Semester,Course) VALUE('{0}', '{1}','{2}','{3}')", textBoxReg.Text, comboBoxSession.SelectedItem.ToString(), dataGridView1.Rows[i].Cells[4].Value.ToString(), dataGridView1.Rows[i].Cells[1].Value.ToString());
                var cmd = new MySqlCommand(Querry, con);
                cmd.ExecuteNonQuery();
               
             }
            MessageBox.Show("Updated Successful");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void buttonResult_Click(object sender, EventArgs e)
        { 
           
        }

        private void textBoxReg_TextChanged(object sender, EventArgs e)
        {
            try
            {
                
                dataGridView1.Rows.Clear();
                dataGridView1.Visible = true;
           
            con.Close();
            con.Open();
            var ccmd = new MySqlCommand("SELECT * FROM student WHERE RegNo = '" + textBoxReg.Text.Trim() + "'", con);
            var ddr = ccmd.ExecuteReader();
            if (ddr.Read())
            {
                textBoxname.Text = ddr["Name"].ToString();
                textBoxFac.Text = ddr["Faculty"].ToString();
                textBoxDept.Text = ddr["Department"].ToString();
                comboBoxProgram.Text = ddr["Programme"].ToString();

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

        private void buttonClear_Click(object sender, EventArgs e)
        {

            dataGridView1.Rows.Clear();
            dataGridView1.Visible = true;
            textBoxReg.Text = "";
            textBoxname.Text = "";
            textBoxFac.Text = "";
            textBoxDept.Text = "";
            comboBoxProgram.Text = "";
            comboBoxlevel.Text = "";
            comboBoxSemester.Text = "";
            comboBoxSession.Text = "";
            CreditUnit.Text = "";
            

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void textBoxReg_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetterOrDigit(ch) && ch != 8)
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
        }

        private void textBoxFac_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetter(ch) && ch != 8 && ch != 46 && ch != ' ')
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
        }

        private void comboBoxSemester_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBoxSemester.SelectedItem.ToString() == "FIRST")
            {
                 dataGridView1.Rows.Clear();
                 dataGridView1.Visible = true;
                 CreditUnit2.Visible = false;
                 CreditUnit.Visible = true;
            }
            else if (comboBoxSemester.SelectedItem.ToString() == "SECOND")
            {
                dataGridView1.Rows.Clear();
                dataGridView1.Visible = true;
                CreditUnit.Visible = false;
                CreditUnit2.Visible = true;
                
            }
        }
        
    }
}
