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
    public partial class student_score : Form
    {
        int a;
          MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");
       
         string Scores = "";
         string grade = "";
         int gp = 0;
        
        public student_score()
        {
            InitializeComponent();
        }

        private void buttonAdd_Click(object sender, EventArgs e)
        {
            try 
                {
                   if (textBoxReg.Text == String.Empty || textBoxname.Text == String.Empty || comboBoxProgram.Text == String.Empty || comboBoxlevel.Text == String.Empty || comboBoxSemester.Text == String.Empty || comboBoxSession.Text == String.Empty)
	                {
		             MessageBox.Show(" All fields must be filled");

           	        }
                 else
                 {
               a = dataGridView1.Rows.Count;
                bool exist = false;
                for (int j = 0; j < a; j++)
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
                
            var querry = "SELECT * FROM courses WHERE Code = '"+comboBoxcourse.SelectedItem.ToString()+"'";
            var cmd = new MySqlCommand(querry, con);
            var dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                        var Score = Convert.ToDouble(textBoxScore.Text.ToString());

                        if (Score >= 70 && Score <= 100)
                        {
                            grade = "A";

                            var grad = grade;

                            switch (grad)
                            {
                                case "A":
                                    gp = 5;
                                    break;
                            }

                            dataGridView1.Rows.Add(a, dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), Score, grade,gp*int.Parse(dr["CreditUnit"].ToString()));
                            a++;
                        }
                        else if (Score >= 60 && Score < 70)
                        {
                            grade = "B";
                            var grad = grade;

                            switch (grad)
                            {
                               
                                case "B":
                                    gp = 4;
                                    break;
                               }

                            dataGridView1.Rows.Add(a, dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), Score, grade, gp * int.Parse(dr["CreditUnit"].ToString()));
                            a++;
                        }
                        else if (Score >= 50 && Score < 60)
                        {
                            grade = "C";
                            var grad = grade;

                            switch (grad)
                            {
                              
                                case "C":
                                    gp = 3;
                                    break;
                           }

                            dataGridView1.Rows.Add(a, dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), Score, grade, gp * int.Parse(dr["CreditUnit"].ToString()));
                            a++;
                        }
                        else if (Score >= 45 && Score < 50)
                        {
                            grade = "D";
                            var grad = grade;

                            switch (grad)
                            {
                               
                                case "D":
                                    gp = 2;
                                    break;
                              }

                            dataGridView1.Rows.Add(a, dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), Score, grade, gp * int.Parse(dr["CreditUnit"].ToString()));
                            a++;
                        }
                        else if (Score >= 0 && Score < 45)
                        {
                            grade = "F";
                            var grad = grade;

                            switch (grad)
                            {
                                case "F":
                                    gp = 0;
                                    break;
                              }

                            dataGridView1.Rows.Add(a, dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), Score, grade, gp * int.Parse(dr["CreditUnit"].ToString()));
                            a++;
                        }
                        else
                        {
                            MessageBox.Show("invalid input score");
                        }
                       
                }
               
            var tpe = 0;
            var tcr = 0;

            for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
               {
                tcr += int.Parse(dataGridView1.Rows[i].Cells[3].Value.ToString());
                tpe += int.Parse(dataGridView1.Rows[i].Cells[6].Value.ToString());

               }
            labelGPA.Text = (tpe / (double)tcr).ToString("0.00");
            labeltcr.Text = (tcr.ToString());
            labeltpe.Text = (tpe.ToString());
                
            con.Close();
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

        private void student_score_Load(object sender, EventArgs e)
        {
            
        }

        private void textBoxReg_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (textBoxReg.TextLength == 10)
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
                        comboBoxProgram.Text = ddr["Programme"].ToString();

                    }
                    else
                    {
                        // MessageBox.Show("WRONG REGISTRATION NUMBER OR RECORD NOT EXIST IN THIS SYSTEM");

                    }
                    ddr.Close();
                    if (comboBoxSemester.SelectedIndex != -1 && comboBoxSession.SelectedIndex != -1)
                    {
                        var cmd = new MySqlCommand("SELECT * FROM enrollment WHERE RegNo = '" + textBoxReg.Text.Trim() + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND Semester = '" + comboBoxSemester.SelectedItem.ToString() + "'", con);
                        var dr = cmd.ExecuteReader();
                        comboBoxcourse.Items.Clear();
                        while (dr.Read())
                        {
                            comboBoxcourse.Items.Add(dr["Course"].ToString());
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
           
        }

        private void buttonResult_Click(object sender, EventArgs e)
        {
             try
            {
                dataGridView1.Rows.Clear();
                labelGPA.Text = "";
                labeltcr.Text = "";
                labeltpe.Text = "";
               
       
                dataGridView1.Visible = true;
                con.Close();
                con.Open();
                var cmd = new MySqlCommand("SELECT * FROM student_marks WHERE Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text.Trim() + "' AND Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '"+comboBoxlevel.SelectedItem.ToString()+"' AND Programme = '"+ comboBoxProgram.Text.Trim() +"'", con);
                var dr = cmd.ExecuteReader();
                dataGridView1.Visible = true;
                while (dr.Read())
                {
                      dataGridView1.Rows.Add(dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), dr["Score"].ToString(), dr["grade"].ToString());
         
                }
                 con.Close();
                con.Open();
                var cmad = new MySqlCommand("SELECT * FROM result_details WHERE RegNo LIKE '" + textBoxReg.Text + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' AND Programme = '" + comboBoxProgram.SelectedItem.ToString() + "'", con);
                var ddrr = cmad.ExecuteReader();
                if (ddrr.Read())
                {
                    labelGPA.Text = (ddrr["GPA"].ToString());
                    labeltcr.Text = (ddrr["TCR"].ToString());
                    labeltpe.Text = (ddrr["TPE"].ToString());

                }
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
           
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
                var ccmmd = new MySqlCommand("Delete from student_marks WHERE RegNo = '" + textBoxReg.Text + "' AND Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Session = '" + comboBoxSession.Text + "' AND Level = '"+ comboBoxlevel.SelectedItem.ToString() +"'", con);
                 ccmmd.ExecuteNonQuery();
                 for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
                 {

                     var querryinsert = "INSERT into student_marks(RegNo,Name,Level,Session,Semester,Programme,Code,Title,CreditUnit,Score,Grade) VALUE('" + textBoxReg.Text + "', '"+ textBoxname.Text +"', '"+ comboBoxlevel.SelectedItem.ToString() +"', '"+ comboBoxSession.SelectedItem.ToString() +"', '"+ comboBoxSemester.SelectedItem.ToString() +"', '"+ comboBoxProgram.Text +"','" + dataGridView1.Rows[i].Cells[1].Value + "','" + dataGridView1.Rows[i].Cells[2].Value + "', " + dataGridView1.Rows[i].Cells[3].Value + ", " + dataGridView1.Rows[i].Cells[4].Value + ",'" + dataGridView1.Rows[i].Cells[5].Value + "')";
                     var cmdl = new MySqlCommand(querryinsert, con);
                     cmdl.ExecuteNonQuery();


                     Scores = Scores + "       " + dataGridView1.Rows[i].Cells[3].Value + "       ";
                 
                 }
                 if (comboBoxlevel.SelectedItem.ToString() == "100" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                 {
                     var ccmd = new MySqlCommand("UPDATE level1first SET Name = '" + textBoxname.Text + "', courses ='" + Scores + "', Session ='" + comboBoxSession.SelectedItem.ToString() + "' WHERE Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text + "'", con);
                     ccmd.ExecuteNonQuery();


                 }
                 else if (comboBoxlevel.SelectedItem.ToString() == "100" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                 {
                     var ccmd = new MySqlCommand("UPDATE level1second SET Name = '" + textBoxname.Text + "', courses ='" + Scores + "', Session ='" + comboBoxSession.SelectedItem.ToString() + "'WHERE Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text + "'", con);
                     ccmd.ExecuteNonQuery();


                 }
                 else if (comboBoxlevel.SelectedItem.ToString() == "200" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                 {
                     var ccmd = new MySqlCommand("UPDATE level2first SET Name = '" + textBoxname.Text + "', courses ='" + Scores + "', Session ='" + comboBoxSession.SelectedItem.ToString() + "'WHERE Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text + "'", con);
                     ccmd.ExecuteNonQuery();


                 }
                 else if (comboBoxlevel.SelectedItem.ToString() == "200" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                 {
                     var ccmd = new MySqlCommand("UPDATE level2second SET Name = '" + textBoxname.Text + "', courses ='" + Scores + "', Session ='" + comboBoxSession.SelectedItem.ToString() + "'WHERE Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text + "'", con);
                     ccmd.ExecuteNonQuery();


                 }
                 else if (comboBoxlevel.SelectedItem.ToString() == "300" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                 {
                     var ccmd = new MySqlCommand("UPDATE level3first SET Name = '" + textBoxname.Text + "', courses ='" + Scores + "', Session ='" + comboBoxSession.SelectedItem.ToString() + "'WHERE Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text + "'", con);
                     ccmd.ExecuteNonQuery();


                 }
                 else if (comboBoxlevel.SelectedItem.ToString() == "300" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                 {
                     var ccmd = new MySqlCommand("UPDATE level3second SET Name = '" + textBoxname.Text + "', courses ='" + Scores + "', Session ='" + comboBoxSession.SelectedItem.ToString() + "'WHERE Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text + "'", con);
                     ccmd.ExecuteNonQuery();


                 }
                 else if (comboBoxlevel.SelectedItem.ToString() == "400" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                 {
                     var ccmd = new MySqlCommand("UPDATE level4first SET Name = '" + textBoxname.Text + "', courses ='" + Scores + "', Session ='" + comboBoxSession.SelectedItem.ToString() + "'WHERE Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text + "'", con);
                     ccmd.ExecuteNonQuery();


                 }
                 else if (comboBoxlevel.SelectedItem.ToString() == "400" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                 {
                     var ccmd = new MySqlCommand("UPDATE level4second SET Name = '" + textBoxname.Text + "', courses ='" + Scores + "', Session ='" + comboBoxSession.SelectedItem.ToString() + "'WHERE Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text + "'", con);
                     ccmd.ExecuteNonQuery();

                 }
                 else
                 {
                     MessageBox.Show("PLS ENTER A VALID DATA");
                 }
                 MessageBox.Show("Updated Successful");
             
           
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

                  Scores = "";
                 con.Close();
                 con.Open();
                 if (textBoxReg.Text.Length < 10 || textBoxReg.Text.Length > 10)
                 {
                     MessageBox.Show("Wrong Registration Number");

                 }
                 else
                 {
                     for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
                     {

                         var querryinsert = "INSERT into student_marks(RegNo,Name,Level,Session,Semester,Programme,Code,Title,CreditUnit,Score,Grade) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + comboBoxlevel.SelectedItem.ToString() + "', '" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxProgram.Text + "','" + dataGridView1.Rows[i].Cells[1].Value + "','" + dataGridView1.Rows[i].Cells[2].Value + "'," + dataGridView1.Rows[i].Cells[3].Value + "," + dataGridView1.Rows[i].Cells[4].Value + ",'" + dataGridView1.Rows[i].Cells[5].Value + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();

                         Scores = Scores + "       " + dataGridView1.Rows[i].Cells[4].Value + "       ";
                     }

                     if (comboBoxlevel.SelectedItem.ToString() == "100" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                     {
                         var querryinsert = "INSERT into level1first(RegNo,Name,courses,Session,Semester,Level) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + Scores + "','" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxlevel.SelectedItem.ToString() + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();
                         MessageBox.Show("Saved Successful");

                     }
                     else if (comboBoxlevel.SelectedItem.ToString() == "100" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                     {
                         var querryinsert = "INSERT into level1second(RegNo,Name,courses,Session,Semester,Level) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + Scores + "','" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxlevel.SelectedItem.ToString() + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();
                         MessageBox.Show("Saved Successful");

                     }
                     else if (comboBoxlevel.SelectedItem.ToString() == "200" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                     {
                         var querryinsert = "INSERT into level2first(RegNo,Name,courses,Session,Semester,Level) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + Scores + "','" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxlevel.SelectedItem.ToString() + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();
                         MessageBox.Show("Saved Successful");

                     }
                     else if (comboBoxlevel.SelectedItem.ToString() == "200" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                     {
                         var querryinsert = "INSERT into level2second(RegNo,Name,courses,Session,Semester,Level) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + Scores + "','" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxlevel.SelectedItem.ToString() + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();
                         MessageBox.Show("Saved Successful");

                     }
                     else if (comboBoxlevel.SelectedItem.ToString() == "300" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                     {
                         var querryinsert = "INSERT into level3first(RegNo,Name,courses,Session,Semester,Level) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + Scores + "','" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxlevel.SelectedItem.ToString() + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();
                         MessageBox.Show("Saved Successful");

                     }
                     else if (comboBoxlevel.SelectedItem.ToString() == "300" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                     {
                         var querryinsert = "INSERT into level3second(RegNo,Name,courses,Session,Semester,Level) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + Scores + "','" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxlevel.SelectedItem.ToString() + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();
                         MessageBox.Show("Saved Successful");

                     }
                     else if (comboBoxlevel.SelectedItem.ToString() == "400" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                     {
                         var querryinsert = "INSERT into level4first(RegNo,Name,courses,Session,Semester,Level) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + Scores + "','" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxlevel.SelectedItem.ToString() + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();
                         MessageBox.Show("Saved Successful");

                     }
                     else if (comboBoxlevel.SelectedItem.ToString() == "400" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                     {
                         var querryinsert = "INSERT into level4second(RegNo,Name,courses,Session,Semester,Level) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + Scores + "','" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxlevel.SelectedItem.ToString() + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();
                         MessageBox.Show("Saved Successful");

                     }
                     else if (comboBoxlevel.SelectedItem.ToString() == "S01" || comboBoxlevel.SelectedItem.ToString() == "S02" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                     {
                         var querryinsert = "INSERT into spilloverstudent(RegNo,Name,courses,Session,Semester,Level) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + Scores + "','" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxlevel.SelectedItem.ToString() + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();
                         MessageBox.Show("Saved Successful");

                     }
                     else if (comboBoxlevel.SelectedItem.ToString() == "S01" || comboBoxlevel.SelectedItem.ToString() == "S02" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                     {
                         var querryinsert = "INSERT into spillover2student(RegNo,Name,courses,Session,Semester,Level) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text + "', '" + Scores + "','" + comboBoxSession.SelectedItem.ToString() + "', '" + comboBoxSemester.SelectedItem.ToString() + "', '" + comboBoxlevel.SelectedItem.ToString() + "')";
                         var cmdl = new MySqlCommand(querryinsert, con);
                         cmdl.ExecuteNonQuery();
                         MessageBox.Show("Saved Successful");

                     }
                     else
                     {
                         MessageBox.Show("PLS ENTER A VALID DATA");
                     }

                     con.Close();

                      }
                 }
            catch (Exception)
            {
              //  MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void comboBoxlevel_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void comboBoxSession_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                con.Close();
                con.Open();

                if (textBoxReg.TextLength == 10 && comboBoxSession.SelectedIndex != -1)
                {
                    var cmd = new MySqlCommand("SELECT * FROM enrollment WHERE RegNo = '" + textBoxReg.Text.Trim() + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND Semester = '" + comboBoxSemester.SelectedItem.ToString() + "'", con);
                    var dr = cmd.ExecuteReader();
                    comboBoxcourse.Items.Clear();
                    while (dr.Read())
                    {
                        comboBoxcourse.Items.Add(dr["Course"].ToString());
                    }
                }
            }

            catch (Exception)
            {
              //  MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void comboBoxSemester_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                con.Close();
                con.Open();

                if (textBoxReg.TextLength == 10 && comboBoxSemester.SelectedIndex != -1 && comboBoxSession.SelectedIndex != -1)
                {
                    var cmd = new MySqlCommand("SELECT * FROM enrollment WHERE RegNo = '" + textBoxReg.Text.Trim() + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND Semester = '" + comboBoxSemester.SelectedItem.ToString() + "'", con);
                    var dr = cmd.ExecuteReader();
                    comboBoxcourse.Items.Clear();
                    while (dr.Read())
                    {
                        comboBoxcourse.Items.Add(dr["Course"].ToString());
                    }
                }
            }

            catch (Exception)
            {
               // MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBoxReg_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetterOrDigit(ch) && ch != '\r' && ch != 8)
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
        }

        private void textBoxname_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetter(ch) && ch != 8 && ch != 46 && ch != ' ' && ch != '\r')
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
        }   
    }
}
