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
using System.Collections;
using iTextSharp;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;

namespace studentTranscript
{
    public partial class Form1 : Form
    {
        MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");
        int a;
        int b;
        int counter = 0;
        int count = 0;
        string remark = "";
        string remarks = "";
        string failcourses = "";
        string failcourse = "";
        string MIS1 = "";
        string MIS2 = "";
        string hold1 = "";
        string hold2 = "";

        public Form1()
        {
         
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
        
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            
        }

        private void button1_Click(object sender, EventArgs e)
        {       try
                    {
              if (textBoxReg.Text == String.Empty || textBoxname.Text == String.Empty || textBoxFac.Text == String.Empty || textBoxDept.Text == String.Empty || comboBoxProgram.Text == String.Empty || comboBoxlevel.Text == String.Empty || comboBoxSession.Text == String.Empty)
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
                var grade = comboBoxGrade.SelectedItem.ToString();
                var gp = 0;
               
                switch (grade)
                {
                    case "A":
                        gp = 5;
                        break;
                    case "B":
                        gp = 4;
                        break;
                    case "C":
                        gp = 3;
                        break;
                    case "D":
                        gp = 2;
                        break;
                    case "F":
                        gp = 0;
                        break;
                    case "ABSENT":
                        gp = 0;
                        break;
                   }

               
                dataGridView1.Rows.Add(a, dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(),grade,gp,gp*int.Parse(dr["CreditUnit"].ToString()));
               
                if (gp != 0)
                {
                    count = count + Convert.ToInt16(dr["CreditUnit"].ToString());
                }

                labelFirstTCE.Text = count.ToString();
            }
           
            var tpe = 0;
            var tcr = 0;

            for (int i = 0; i < dataGridView1.Rows.Count-1; i++)
            {
                tcr += int.Parse(dataGridView1.Rows[i].Cells[3].Value.ToString());
                tpe += int.Parse(dataGridView1.Rows[i].Cells[6].Value.ToString());

            }
            labelGPA.Text = (tpe / (double)tcr).ToString("0.00");
            labeltcr.Text = (tcr.ToString());
            labeltpe.Text = (tpe.ToString());
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

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e) 
        {
            
        }

        private void labelGPA_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            
        }

        private void buttonBack_Click(object sender, EventArgs e)
        {
            this.Hide();
            var back = new Menu();
            back.Show();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
           
        }

        private void btnAddSecond_Click(object sender, EventArgs e)
        {
            try
            {
                  if (textBoxReg.Text == String.Empty || textBoxname.Text == String.Empty || textBoxFac.Text == String.Empty || textBoxDept.Text == String.Empty || comboBoxProgram.Text == String.Empty || comboBoxlevel.Text == String.Empty || comboBoxSession.Text == String.Empty)
	        {
		         MessageBox.Show(" All fields must be filled");

           	}
                 else
                 {
               b = dataGridView2.Rows.Count;
                bool exist = false;
                for (int j = 0; j < b; j++)
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
                    var grade = comboBoxGrade.SelectedItem.ToString();
                    var gp = 0;
                    
                    switch (grade)
                    {
                        case "A":
                            gp = 5;
                            break;
                        case "B":
                            gp = 4;
                            break;
                        case "C":
                            gp = 3;
                            break;
                        case "D":
                            gp = 2;
                            break;
                        case "F":
                            gp = 0;
                            break;
                        case "ABSENT":
                            gp = 0;
                            break;
                   
                    }
                    
                    dataGridView2.Rows.Add(b, dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), grade, gp, gp * int.Parse(dr["CreditUnit"].ToString()));
                      
                    if (gp != 0)
                            {
                                counter = counter + Convert.ToInt16(dr["CreditUnit"].ToString());
                           }
                    labelSecondTCE.Text = counter.ToString();
            
                 }
                var tpe = 0;
                var tcr = 0;

                for (int i = 0; i < dataGridView2.Rows.Count - 1; i++)
                {
                    tcr += int.Parse(dataGridView2.Rows[i].Cells[3].Value.ToString());
                    tpe += int.Parse(dataGridView2.Rows[i].Cells[6].Value.ToString());

                }
                labelSecondGPA.Text = (tpe / (double)tcr).ToString("0.00");
                labelSecondTCR.Text = (tcr.ToString());
                labelSecondTPE.Text = (tpe.ToString());

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
                
                if (textBoxReg.Text.Length < 10 || textBoxReg.Text.Length > 10)
                {
                    MessageBox.Show("Wrong Registration Number");
                }
                else
                {
                    con.Close();
                    con.Open();
                    for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
                    {
                        var querryinsert = "INSERT into student_result(RegNo,Code,Title,CreditUnit,Grade,GP,PE,Semester,Session) VALUE('" + textBoxReg.Text + "','" + dataGridView1.Rows[i].Cells[1].Value + "','" + dataGridView1.Rows[i].Cells[2].Value + "','" + dataGridView1.Rows[i].Cells[3].Value + "','" + dataGridView1.Rows[i].Cells[4].Value + "','" + dataGridView1.Rows[i].Cells[5].Value + "','" + dataGridView1.Rows[i].Cells[6].Value + "','" + "FIRST" + "','" + comboBoxSession.Text + "')";
                        var cmd = new MySqlCommand(querryinsert, con);
                        cmd.ExecuteNonQuery();
                        if ((dataGridView1.Rows[i].Cells[3].Value).ToString() == "F")
                        {
                            failcourses += dataGridView1.Rows[i].Cells[0].Value + ", ";
                        }
                        if ((dataGridView1.Rows[i].Cells[3].Value).ToString() == "ABSENT")
                        {
                            MIS1 += dataGridView1.Rows[i].Cells[0].Value + "(absent), ";
                        }

                    }
                    hold1 = failcourses + MIS1;

                    if (Convert.ToDouble(labelGPA.Text) < 1.50)
                    {
                        remark = "On Probation";
                    }

                    con.Close();
                    con.Open();
                    var querry = "INSERT into result_details(RegNo,Name,Level,GPA,TCR,TPE,TCE,CarryOverCourses,Semester,Session,Remarks,Programme) VALUE('" + textBoxReg.Text + "','" + textBoxname.Text.Trim() + "','" + comboBoxlevel.Text + "', " + labelGPA.Text + "," + labeltcr.Text + "," + labeltpe.Text + "," + labelFirstTCE.Text + ", '" + hold1 + "','" + "FIRST" + "','" + comboBoxSession.Text + "','" + remark + "', '" + comboBoxProgram.SelectedItem.ToString() + "')";
                    var cmdd = new MySqlCommand(querry, con);
                    cmdd.ExecuteNonQuery();

                    if (Student_Enrolment.StudentExist(textBoxReg.Text))
                    {
                        
                    }
                    else
                    {
                        var Querry = "INSERT into student(Name,RegNo,Faculty,Department,Level,Programme) VALUE('" + textBoxname.Text + "','" + textBoxReg.Text + "', '" + textBoxFac.Text + "', '" + textBoxDept.Text + "', '" + comboBoxlevel.SelectedItem + "','" + comboBoxProgram.Text + "')";
                        var cmb = new MySqlCommand(Querry, con);
                        cmb.ExecuteNonQuery();
                    }
                  
                    var Qerry = "INSERT into tbl_cgpa(RegNo,CGPA,Programme,level,Session) VALUE('" + textBoxReg.Text + "', " + CurrentCGPA.Text + ", '" + comboBoxProgram.Text + "',  '" + comboBoxlevel.SelectedItem + "', '" + comboBoxSession.Text + "')";
                    var cmbb = new MySqlCommand(Qerry, con);
                    cmbb.ExecuteNonQuery();

                    con.Close();
                    con.Open();
                    for (int i = 0; i < dataGridView2.Rows.Count - 1; i++)
                    {
                        var querryinsert = "INSERT into student_result(RegNo,Code,Title,CreditUnit,Grade,GP,PE,Semester,Session) VALUE('" + textBoxReg.Text + "','" + dataGridView2.Rows[i].Cells[1].Value + "','" + dataGridView2.Rows[i].Cells[2].Value + "','" + dataGridView2.Rows[i].Cells[3].Value + "','" + dataGridView2.Rows[i].Cells[4].Value + "','" + dataGridView2.Rows[i].Cells[5].Value + "','" + dataGridView2.Rows[i].Cells[6].Value + "','" + "SECOND" + "','" + comboBoxSession.Text + "')";
                        var cmd = new MySqlCommand(querryinsert, con);
                        cmd.ExecuteNonQuery();

                        if ((dataGridView2.Rows[i].Cells[3].Value).ToString() == "F")
                        {
                            failcourse += dataGridView2.Rows[i].Cells[0].Value + ", ";
                        }
                        if ((dataGridView2.Rows[i].Cells[3].Value).ToString() == "ABSENT")
                        {
                            MIS2 += dataGridView2.Rows[i].Cells[0].Value + "(absent), ";
                        }

                    }
                    hold2 = failcourse + MIS2;

                    if (Convert.ToDouble(CurrentCGPA.Text) < 1.50)
                    {
                        remarks = "On Probation";
                    }

                    con.Close();
                    con.Open();
                    var qerry = "INSERT into result_details(RegNo,Name,Level,GPA,TCR,TPE,TCE,CGPA,CarryOverCourses,Semester,Session,Remarks,Programme) VALUE('" + textBoxReg.Text + "', '" + textBoxname.Text.Trim() + "', '" + comboBoxlevel.Text + "', " + labelSecondGPA.Text + "," + labelSecondTCR.Text + "," + labelSecondTPE.Text + "," + labelSecondTCE.Text + ", '" + CurrentCGPA.Text + "', '" + hold2 + "', '" + "SECOND" + "', '" + comboBoxSession.Text + "', '" + remarks + "', '" + comboBoxProgram.SelectedItem.ToString() + "')";
                    var cmmd = new MySqlCommand(qerry, con);
                    cmmd.ExecuteNonQuery();
                    MessageBox.Show("Saved Successful");
                 
               }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void textBoxReg_TextChanged(object sender, EventArgs e)
        {

            try
            {
                dataGridView1.Rows.Clear();
                dataGridView1.Visible = true;
                dataGridView2.Rows.Clear();
                dataGridView2.Visible = true;
                PreviousCGPA.Text = "      ";
                con.Close();
                con.Open();

                var cmd = new MySqlCommand("SELECT * FROM result_details WHERE RegNo LIKE '" + textBoxReg.Text + "'", con);
                var dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    var cpe = 0;
                    var ccr = 0;
                    var CPE = "SELECT TPE,TCR FROM result_details WHERE RegNo =  '" + textBoxReg.Text + "'";
                    //var CPE = "SELECT SUM(TPE) as TPEV FROM result_details WHERE RegNo =  '" + textBoxReg.Text + "'";


                    con.Close();
                    con.Open();
                    MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    //MessageBox.Show(" Records " +  dt.Rows.Count);
                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        cpe += Convert.ToInt16(dt.Rows[i][0]);
                        ccr += Convert.ToInt16(dt.Rows[i][1]);
                    }

                    PreviousCGPA.Text = (cpe / (double)ccr).ToString("0.00     ");

                }
                else
                {
                   
                    // MessageBox.Show("   Wrong Student Registration Number \n\t\tor\n student record isn't save here pls insert a valid one");
                }

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
                ddr.Close();

                if (textBoxReg.TextLength == 10)
                {
                    cmd = new MySqlCommand("SELECT * FROM enrollment WHERE RegNo = '" + textBoxReg.Text.Trim() + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "'", con);
                    dr = cmd.ExecuteReader();
                    comboBoxcourse.Items.Clear();
                    while (dr.Read())
                    {
                        comboBoxcourse.Items.Add(dr["Course"].ToString());
                    }
                    con.Close();
                    con.Open();
                }
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
             }
            con.Close();
            
        }
        private void CheckPrevious_CheckedChanged(object sender, EventArgs e)
       {  
            
        }

        //private void CheckCurrentCGPA_CheckedChanged(object sender, EventArgs e)
        //{
           
        //}

        private void buttonImage_Click(object sender, EventArgs e)
        {
            
        }

        private void buttonBack_Click_1(object sender, EventArgs e)
        {
            this.Close();
            var back = new Menu();
            back.Show();
            
        }

        private void comboBoxGrade_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void buttonUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                if (textBoxReg.Text.Length < 10 || textBoxReg.Text.Length > 10)
                {
                    MessageBox.Show("invalid RegNo");

                if (textBoxReg.Text == String.Empty || textBoxname.Text == String.Empty || textBoxFac.Text == String.Empty || textBoxDept.Text == String.Empty || comboBoxProgram.Text == String.Empty || comboBoxlevel.Text == String.Empty || comboBoxSession.Text == String.Empty)
                {
                    MessageBox.Show(" Fields must be filled correctly");
                    
                    }
                    else
	                {

	
                con.Close();
                con.Open();
                var ccmmd = new MySqlCommand("Delete from student_result WHERE RegNo = '" + textBoxReg.Text + "' AND Semester = '" + "FIRST" + "' AND Session = '" + comboBoxSession.Text + "'", con);
                 ccmmd.ExecuteNonQuery();
                for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
                {

                    var querryinsert = "INSERT into student_result(RegNo,Code,Title,CreditUnit,Grade,GP,PE,Semester,Session) VALUE('" + textBoxReg.Text + "','" + dataGridView1.Rows[i].Cells[1].Value + "','" + dataGridView1.Rows[i].Cells[2].Value + "','" + dataGridView1.Rows[i].Cells[3].Value + "','" + dataGridView1.Rows[i].Cells[4].Value + "','" + dataGridView1.Rows[i].Cells[5].Value + "','" + dataGridView1.Rows[i].Cells[6].Value + "','" + "FIRST" + "','" + comboBoxSession.Text + "')";
                    var cmdl = new MySqlCommand(querryinsert, con);
                    cmdl.ExecuteNonQuery();
                  
                }
                con.Close();
                con.Open();

                var cmdd = new MySqlCommand("UPDATE result_details SET GPA ='" + labelGPA.Text + "', TCR = '" + labeltcr.Text + "', TPE ='" + labeltpe.Text + "', TCE ='" + labelFirstTCE.Text + "', Name = '" + textBoxname.Text.Trim() + "', CarryOverCourses = '" + failcourses + "', Remarks = '" + remark + "', Programme = '" + comboBoxProgram.SelectedItem.ToString() + "', Session = '" + comboBoxSession.Text + "' WHERE Semester = '" + "FIRST" + "' AND Level = '" + comboBoxlevel.Text + "' AND RegNo = '" + textBoxReg.Text + "'", con);
                cmdd.ExecuteNonQuery();

                var cmbb = new MySqlCommand("UPDATE tbl_cgpa SET CGPA =" + CurrentCGPA.Text + ", Programme = '" + comboBoxProgram.Text + "', Session =  '" + comboBoxSession.Text + "' WHERE  RegNo = '" + textBoxReg.Text + "' AND level = '" + comboBoxlevel.SelectedItem + "'", con); ;
                cmbb.ExecuteNonQuery();

                MessageBox.Show("Updated Successfully");
            

                con.Close();
                con.Open();
                var ccmd = new MySqlCommand("Delete from student_result WHERE RegNo = '" + textBoxReg.Text + "' AND Semester = '" + "SECOND" + "' AND Session = '" + comboBoxSession.Text + "'", con);
                ccmd.ExecuteNonQuery();
                
                for (int j = 0; j < dataGridView2.Rows.Count - 1; j++)
                {
                    var queeryinsert = "INSERT into student_result(RegNo,Code,Title,CreditUnit,Grade,GP,PE,Semester,Session) VALUE('" + textBoxReg.Text + "','" + dataGridView2.Rows[j].Cells[1].Value + "','" + dataGridView2.Rows[j].Cells[2].Value + "','" + dataGridView2.Rows[j].Cells[3].Value + "','" + dataGridView2.Rows[j].Cells[4].Value + "','" + dataGridView2.Rows[j].Cells[5].Value + "','" + dataGridView2.Rows[j].Cells[6].Value + "','" + "SECOND" + "','" + comboBoxSession.Text + "')";
                    var cmdp = new MySqlCommand(queeryinsert, con);
                    cmdp.ExecuteNonQuery();
                   
                }
                con.Close();
                con.Open();

                var cmddd = new MySqlCommand("UPDATE result_details SET GPA = '" + labelSecondGPA.Text + "', TCR = '" + labelSecondTCR.Text + "', TPE ='" + labelSecondTPE.Text + "', TCE ='" + labelSecondTCE.Text + "', CGPA = '" + CurrentCGPA.Text + "', Name = '" + textBoxname.Text.Trim() + "', CarryOverCourses = '" + failcourse + "', Remarks = '" + remarks + "', Programme = '" + comboBoxProgram.SelectedItem.ToString() + "', Session = '" + comboBoxSession.Text + "' WHERE Semester = '" + "SECOND" + "' AND Level = '" + comboBoxlevel.Text + "' AND RegNo = '" + textBoxReg.Text + "'", con);
                cmddd.ExecuteNonQuery();
                MessageBox.Show("Updated Successful");
            }
        }
    }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
         
        }

        private void label23_Click(object sender, EventArgs e)
        {

        }

        private void CheckCurrentCGPA_CheckedChanged_1(object sender, EventArgs e)
        {
            
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {   
            try
                {
            //
            Document pdoc = new Document(PageSize.A4, 40f, 40f, 20f, 10f);
            PdfWriter pWriter = PdfWriter.GetInstance(pdoc, new FileStream("ReportPDF\\"+textBoxReg.Text+".pdf", FileMode.Create));
            pdoc.Open();
           //
            
            System.Drawing.Image pImage = System.Drawing.Image.FromFile("zimg\\Nwu.jpg");
            iTextSharp.text.Image ItextImage = iTextSharp.text.Image.GetInstance(pImage, System.Drawing.Imaging.ImageFormat.Jpeg);

            ItextImage.Alignment = Element.ALIGN_TOP;
            ItextImage.Alignment = Element.ALIGN_CENTER;
            pdoc.Add(ItextImage);
            //
            iTextSharp.text.Font pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 20, iTextSharp.text.Font.BOLD);
            Paragraph pgraph1 = new Paragraph("YUSUF MAITAMA SULE UNIVERSITY, KANO", pfont1);
            pgraph1.Alignment = Element.ALIGN_TOP;
            pgraph1.Alignment = Element.ALIGN_CENTER;
           
            pdoc.Add(pgraph1);
             //

             pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 17, iTextSharp.text.Font.NORMAL);
            Paragraph pgraph2 = new Paragraph("KANO STATE, NIGERIA.", pfont1);
            pgraph2.Alignment = Element.ALIGN_CENTER;
            pdoc.Add(pgraph2);
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 19, iTextSharp.text.Font.BOLD);
            pgraph1.Alignment = Element.ALIGN_TOP;
            Paragraph pgraph3 = new Paragraph("STUDENT'S END OF SESSION REPORT FORM", pfont1);
            pgraph3.Alignment = Element.ALIGN_CENTER;
             pdoc.Add(pgraph3);
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
            Paragraph pgraph4 = new Paragraph("\nREG NUMBER: " + textBoxReg.Text +"                                                                  NAME: " + textBoxname.Text, pfont1);
           pgraph4.Alignment = Element.ALIGN_LEFT;
            pdoc.Add(pgraph4);
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
            Paragraph pgraph5 = new Paragraph("FACULTY: " + textBoxFac.Text +"                                                         SESSION: " + comboBoxSession.Text, pfont1);
            pgraph5.Alignment = Element.ALIGN_LEFT;
            pdoc.Add(pgraph5);
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
            Paragraph pgraph6 = new Paragraph("DEPARTMENT: " + textBoxDept.Text + "                                                   YEAR OF STUDY: " + comboBoxlevel.Text, pfont1);
            pgraph6.Alignment = Element.ALIGN_LEFT;
            pdoc.Add(pgraph6);
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
            Paragraph pgraph7 = new Paragraph("PROGRAMME: " + comboBoxProgram.Text, pfont1);
            pgraph7.Alignment = Element.ALIGN_LEFT;
            pdoc.Add(pgraph7);
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 5, iTextSharp.text.Font.BOLD);
            Paragraph pgraph113 = new Paragraph("  ", pfont1);
            pgraph113.Alignment = Element.ALIGN_LEFT;
            pdoc.Add(pgraph113);
           //
            if (PreviousCGPA.Text == "")
            {
                pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 11, iTextSharp.text.Font.BOLD);
                Paragraph pgraph8 = new Paragraph("CGPA: " + CurrentCGPA.Text, pfont1);
                pgraph8.Alignment = Element.ALIGN_LEFT;
                pdoc.Add(pgraph8);
           
            }
            else
            {
                pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 11, iTextSharp.text.Font.BOLD);
                Paragraph pgraph8 = new Paragraph("PREVIOUS CGPA: " + PreviousCGPA.Text + "                                                                              CURRENT CGPA: " + CurrentCGPA.Text, pfont1);
                pgraph8.Alignment = Element.ALIGN_LEFT;
                pdoc.Add(pgraph8);
            }
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 11, iTextSharp.text.Font.BOLD);
            Paragraph pgraph9 = new Paragraph("First Semester", pfont1);
            pgraph9.Alignment = Element.ALIGN_LEFT;
            pdoc.Add(pgraph9);
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 5, iTextSharp.text.Font.BOLD);
            Paragraph pgraph13 = new Paragraph("  ",pfont1);
            pgraph13.Alignment = Element.ALIGN_LEFT;
            pdoc.Add(pgraph13);
           //
           
            PdfPTable table = new PdfPTable(dataGridView1.Columns.Count);
            for (int i = 0; i < dataGridView1.Columns.Count; i++)
            {
                PdfPCell cel1 = new PdfPCell(new Phrase(dataGridView1.Columns[i].HeaderText));
                cel1.HorizontalAlignment = Element.ALIGN_CENTER;
                cel1.FixedHeight = 20;
                table.AddCell(cel1);
            }

            for (int j = 0; j < dataGridView1.Rows.Count; j++)
            {
                for (int k = 0; k < dataGridView1.Columns.Count; k++)
                {
                     if (dataGridView1[k, j].Value != null)
                     {
                         PdfPCell cel1 = new PdfPCell(new Phrase(dataGridView1[k, j].Value.ToString()));
                         cel1.FixedHeight = 20;
                         table.AddCell(cel1);
                     }                   
                }
            }
            table.WidthPercentage = 100;
            float[] width = new float[] { 0f, 100f, 475f, 75f, 95f, 60f, 60f };
            table.SetWidths(width);
            pdoc.Add(table);
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
            Paragraph pgraph10 = new Paragraph("TCR = " + labeltcr.Text + ",  TCE = " + labelFirstTCE.Text + ",  TPE = " + labeltpe.Text + "                               GPA = " + labelGPA.Text, pfont1);
            pgraph10.Alignment = Element.ALIGN_CENTER;
            pdoc.Add(pgraph10);
            //
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 11, iTextSharp.text.Font.BOLD);
            Paragraph pgraph11 = new Paragraph("Second Semester ", pfont1);
            pgraph11.Alignment = Element.ALIGN_LEFT;
            pdoc.Add(pgraph11);
           //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 5, iTextSharp.text.Font.BOLD);
            Paragraph pgraph14 = new Paragraph("  ", pfont1);
            pgraph14.Alignment = Element.ALIGN_LEFT;
            pdoc.Add(pgraph14);
           //
             PdfPTable table1 = new PdfPTable(dataGridView2.Columns.Count);
            for (int i = 0; i < dataGridView2.Columns.Count; i++)
            {
                PdfPCell cel1 = new PdfPCell(new Phrase(dataGridView2.Columns[i].HeaderText));
                cel1.HorizontalAlignment = Element.ALIGN_CENTER;
                cel1.FixedHeight = 20;
                table1.AddCell(cel1);
            }

            for (int j = 0; j < dataGridView2.Rows.Count; j++)
            {
                for (int k = 0; k < dataGridView2.Columns.Count; k++)
                {
                     if (dataGridView2[k, j].Value != null)
                     {
                         PdfPCell cel1 = new PdfPCell(new Phrase(dataGridView2[k, j].Value.ToString()));
                         cel1.FixedHeight = 20;
                         table1.AddCell(cel1);
                     }                   
                }
            }
            table1.WidthPercentage = 100;
            float[] width1 = new float[] {0f, 100f, 475f, 75f, 95f, 60f, 60f };
            table1.SetWidths(width1);
            pdoc.Add(table1);
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
            Paragraph pgraph12 = new Paragraph("TCR = " + labelSecondTCR.Text + ",  TCE = " + labelSecondTCE.Text + ",  TPE = " + labelSecondTPE.Text + "                               GPA = " + labelSecondGPA.Text, pfont1);
            pgraph12.Alignment = Element.ALIGN_CENTER;
            pdoc.Add(pgraph12);
          //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
            Paragraph pgraph15 = new Paragraph("        CCR = " + labelCCR.Text + ",  CCE = " + labelCCE.Text + ",  CPE = " + labelCPE.Text + "                            CGPA = " + CurrentCGPA.Text, pfont1);
            pgraph15.Alignment = Element.ALIGN_CENTER;
            pdoc.Add(pgraph15);
            //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
            Paragraph pgraph16 = new Paragraph("\n Remarks: TO CARRY OVER ALL FAILED COURSES", pfont1);
            pgraph16.Alignment = Element.ALIGN_LEFT;
            pdoc.Add(pgraph16);
           //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
            Paragraph pgraph17 = new Paragraph("\n ________________________________________________", pfont1);
            pgraph17.Alignment = Element.ALIGN_CENTER;
            pdoc.Add(pgraph17);
          //
            pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
            Paragraph pgraph18 = new Paragraph("   Head of Department's Signature and Stamp", pfont1);
            pgraph18.Alignment = Element.ALIGN_CENTER;
            pdoc.Add(pgraph18);
            //
          
                
                pdoc.Close();
            MessageBox.Show("Result Exported to PDF");
              
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void textBoxReg_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetterOrDigit(ch) && ch != '\r' && ch != 8 )
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }

        }

        private void label24_Click(object sender, EventArgs e)
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
                    var cmd = new MySqlCommand("SELECT * FROM enrollment WHERE RegNo = '" + textBoxReg.Text.Trim() + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "'", con);
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
                //MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCal_Click(object sender, EventArgs e)
        {
            try
            {
                con.Close();
                con.Open();
                var cmdd = new MySqlCommand("SELECT * FROM result_details WHERE RegNo = '" + textBoxReg.Text.Trim() + "'", con);
                var ddr = cmdd.ExecuteReader();
                if (ddr.Read())
                {
                    var cpe = 0;
                    var ccr = 0;
                    var tce = 0;
                    var CPE = "SELECT TPE,TCR,TCE FROM result_details WHERE RegNo =  '" + textBoxReg.Text.Trim() + "'";
                    //var CPE = "SELECT SUM(TPE) as TPEV FROM result_details WHERE RegNo =  '" + textBoxReg.Text + "'";


                    con.Close();
                    con.Open();
                    MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        cpe += Convert.ToInt16(dt.Rows[i][0]);
                        ccr += Convert.ToInt16(dt.Rows[i][1]);
                        tce += Convert.ToInt16(dt.Rows[i][2]);

                    }
                    var Currenttcr = 0;
                    var CurrentTCR = 0;
                    var Currenttpe = 0;
                    var CurrentTPE = 0;
                    var FirstTCE = 0;
                    var SecondTCE = 0;

                    Currenttcr += Convert.ToInt16(labeltcr.Text);
                    CurrentTCR += Convert.ToInt16(labelSecondTCR.Text);
                    Currenttpe += Convert.ToInt16(labeltpe.Text);
                    CurrentTPE += Convert.ToInt16(labelSecondTPE.Text);

                    FirstTCE += Convert.ToInt16(labelFirstTCE.Text);
                    SecondTCE += Convert.ToInt16(labelSecondTCE.Text);

                    CurrentCGPA.Text = ((cpe + Currenttpe + CurrentTPE) / (double)(ccr + Currenttcr + CurrentTCR)).ToString("0.00     ");

                    labelCCR.Text = (ccr + Currenttcr + CurrentTCR).ToString();
                    labelCPE.Text = (cpe + Currenttpe + CurrentTPE).ToString();
                    labelCCE.Text = (tce + FirstTCE + SecondTCE).ToString();
                }
                else
                {
                    var Currenttcr = 0;
                    var CurrentTCR = 0;
                    var Currenttpe = 0;
                    var CurrentTPE = 0;
                    var FirstTCE = 0;
                    var SecondTCE = 0;

                    Currenttcr += Convert.ToInt16(labeltcr.Text);
                    CurrentTCR += Convert.ToInt16(labelSecondTCR.Text);
                    Currenttpe += Convert.ToInt16(labeltpe.Text);
                    CurrentTPE += Convert.ToInt16(labelSecondTPE.Text);

                    FirstTCE += Convert.ToInt16(labelFirstTCE.Text);
                    SecondTCE += Convert.ToInt16(labelSecondTCE.Text);

                    CurrentCGPA.Text = ((Currenttpe + CurrentTPE) / (double)(Currenttcr + CurrentTCR)).ToString("0.00     ");

                    labelCCR.Text = (Currenttcr + CurrentTCR).ToString();
                    labelCPE.Text = (Currenttpe + CurrentTPE).ToString();
                    labelCCE.Text = (FirstTCE + SecondTCE).ToString();

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
          
        }

        private void textBoxname_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetter(ch) && ch != 8 && ch != 46 && ch != ' ')
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

        private void textBoxDept_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetter(ch) && ch != 8 && ch != 46 && ch != ' ')
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
        }
    }
}
