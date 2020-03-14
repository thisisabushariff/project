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
using iTextSharp;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;


namespace studentTranscript
{
    public partial class RawMarks : Form
    {
        MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");
       
        public RawMarks()
        {
            InitializeComponent();
        }

        private void buttonClose_Click(object sender, EventArgs e)
        {
            this.Controls.Clear();

            Form bd = new result_summary();
            bd.TopLevel = false;
            this.Controls.Add(bd);
            bd.Width = this.Width;
            bd.Height = this.Height;
            bd.Show();
            
        }

        private void buttonResult_Click(object sender, EventArgs e)
        {
            try
            {
                dataGridView1.Rows.Clear();

                var i = 0;
                dataGridView1.Visible = true;
                con.Close();
                con.Open();
                if (comboBoxlevel.SelectedItem.ToString() == "100" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                {
                    var cmd = new MySqlCommand("SELECT * FROM level1first WHERE Level = '" + comboBoxlevel.SelectedItem.ToString() + "'", con);
                    var dr = cmd.ExecuteReader();
                 
                dataGridView1.Visible = true;
                while (dr.Read())
                {
                    if (i == 0)
                    {
                        dataGridView1.Rows.Add("", dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                    }
                    else
                    {

                        dataGridView1.Rows.Add(i, dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                    }
                        i++;
                }
               
                }
                else if (comboBoxlevel.SelectedItem.ToString() == "100" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                {
                    var cmd = new MySqlCommand("SELECT * FROM level1second WHERE Level = '" + comboBoxlevel.SelectedItem.ToString() + "'", con);
                    var dr = cmd.ExecuteReader();

                    dataGridView1.Visible = true;
                    while (dr.Read())
                    {
                        if (i == 0)
                        {
                            dataGridView1.Rows.Add("", dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        else
                        {

                            dataGridView1.Rows.Add(i, dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        i++;
                    }
              
                }
                else if (comboBoxlevel.SelectedItem.ToString() == "200" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                {
                    var cmd = new MySqlCommand("SELECT * FROM level2first WHERE Level = '" + comboBoxlevel.SelectedItem.ToString() + "'", con);
                    var dr = cmd.ExecuteReader();
                 
                    dataGridView1.Visible = true;
                    while (dr.Read())
                    {
                        if (i == 0)
                        {
                            dataGridView1.Rows.Add("", dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        else
                        {

                            dataGridView1.Rows.Add(i, dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        i++;
                    }
              
                }
                else if (comboBoxlevel.SelectedItem.ToString() == "200" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                {
                    var cmd = new MySqlCommand("SELECT * FROM level2second WHERE Level = '" + comboBoxlevel.SelectedItem.ToString() + "'", con);
                    var dr = cmd.ExecuteReader();
                 
                    dataGridView1.Visible = true;
                    while (dr.Read())
                    {
                        if (i == 0)
                        {
                            dataGridView1.Rows.Add("", dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        else
                        {

                            dataGridView1.Rows.Add(i, dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        i++;
                    }
              
                }
                else if (comboBoxlevel.SelectedItem.ToString() == "300" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                {
                    var cmd = new MySqlCommand("SELECT * FROM level3first WHERE Level = '" + comboBoxlevel.SelectedItem.ToString() + "'", con);
                    var dr = cmd.ExecuteReader();
                 
                    dataGridView1.Visible = true;
                    while (dr.Read())
                    {
                        if (i == 0)
                        {
                            dataGridView1.Rows.Add("", dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        else
                        {

                            dataGridView1.Rows.Add(i, dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        i++;
                    }
              
                }
                else if (comboBoxlevel.SelectedItem.ToString() == "300" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                {
                    var cmd = new MySqlCommand("SELECT * FROM level3second WHERE Level = '" + comboBoxlevel.SelectedItem.ToString() + "'", con);
                    var dr = cmd.ExecuteReader();
                 
                    dataGridView1.Visible = true;
                    while (dr.Read())
                    {
                        if (i == 0)
                        {
                            dataGridView1.Rows.Add("", dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        else
                        {

                            dataGridView1.Rows.Add(i, dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        i++;
                    }
              
                }
                else if (comboBoxlevel.SelectedItem.ToString() == "400" && comboBoxSemester.SelectedItem.ToString() == "FIRST")
                {
                    var cmd = new MySqlCommand("SELECT * FROM level4first WHERE Level = '" + comboBoxlevel.SelectedItem.ToString() + "'", con);
                    var dr = cmd.ExecuteReader(); 
                 
                    dataGridView1.Visible = true;
                    while (dr.Read())
                    {
                        if (i == 0)
                        {
                            dataGridView1.Rows.Add("", dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        else
                        {

                            dataGridView1.Rows.Add(i, dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        i++;
                    }
              
                }
                else if (comboBoxlevel.SelectedItem.ToString() == "400" && comboBoxSemester.SelectedItem.ToString() == "SECOND")
                {
                    var cmd = new MySqlCommand("SELECT * FROM level4second WHERE Level = '" + comboBoxlevel.SelectedItem.ToString() + "'", con);
                    var dr = cmd.ExecuteReader();
                    
                    dataGridView1.Visible = true;
                    while (dr.Read())
                    {
                        if (i == 0)
                        {
                            dataGridView1.Rows.Add("", dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        else
                        {

                            dataGridView1.Rows.Add(i, dr["RegNo"].ToString(), dr["Name"].ToString(), dr["courses"].ToString());
                        }
                        i++;
                    }
              
                }
                else
                {
                    MessageBox.Show("PLS ENTER A VALID DATA");
                }
           
                con.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
          
        }

        private void buttonPrint_Click(object sender, EventArgs e)
        {
            try
            {
                //
                Document pdoc = new Document(PageSize.A3, 35f, 35f, 20f, 15f);
                PdfWriter pWriter = PdfWriter.GetInstance(pdoc, new FileStream("RawMarkPDF\\" + comboBoxlevel.Text + ".pdf", FileMode.Create));
                pdoc.Open();
                //

                System.Drawing.Image pImage = System.Drawing.Image.FromFile("zimg\\Nwu.jpg");
                iTextSharp.text.Image ItextImage = iTextSharp.text.Image.GetInstance(pImage, System.Drawing.Imaging.ImageFormat.Jpeg);

                ItextImage.Alignment = Element.ALIGN_TOP;
                ItextImage.Alignment = Element.ALIGN_CENTER;
                pdoc.Add(ItextImage);
                //
                iTextSharp.text.Font pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 25, iTextSharp.text.Font.BOLD);
                Paragraph pgraph1 = new Paragraph("YUSUF MAITAMA SULE UNIVERSITY, KANO", pfont1);
                pgraph1.Alignment = Element.ALIGN_TOP;
                pgraph1.Alignment = Element.ALIGN_CENTER;

                pdoc.Add(pgraph1);
                //

                pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 22, iTextSharp.text.Font.BOLD);
                Paragraph pgraph2 = new Paragraph("DEPARTMENT OF COMPUTER SCIENCE", pfont1);
                pgraph2.Alignment = Element.ALIGN_CENTER;
                pdoc.Add(pgraph2);
                //
                pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 20, iTextSharp.text.Font.BOLD);
                pgraph1.Alignment = Element.ALIGN_TOP;
                Paragraph pgraph3 = new Paragraph("Student's Examination Results Summary( RawMark ). ", pfont1);
                pgraph3.Alignment = Element.ALIGN_CENTER;
                pdoc.Add(pgraph3);
                //
                pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 5, iTextSharp.text.Font.BOLD);
                Paragraph pgraph4 = new Paragraph("\n ___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________", pfont1);
                pgraph4.Alignment = Element.ALIGN_LEFT;
                pdoc.Add(pgraph4);
                //
                pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 7, iTextSharp.text.Font.BOLD);
                Paragraph pgraph5 = new Paragraph("   ", pfont1);
                pgraph5.Alignment = Element.ALIGN_RIGHT;
                pdoc.Add(pgraph5);
                //
                pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
                Paragraph pgraph6 = new Paragraph("PROGRAMME: " + comboBoxProgram.Text + "          SESSION: " + comboBoxSession.Text + "          SEMESTER: " + comboBoxSemester.Text + "          LEVEL: " + comboBoxlevel.Text + "          DATE: " + dateTimePicker1.Text, pfont1);
                pgraph6.Alignment = Element.ALIGN_CENTER;
                pdoc.Add(pgraph6);
                //
                pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
                Paragraph pgraph13 = new Paragraph("   ", pfont1);
                pgraph13.Alignment = Element.ALIGN_LEFT;
                pdoc.Add(pgraph13);
                //
                PdfPTable table = new PdfPTable(dataGridView1.Columns.Count);
                for (int i = 0; i < dataGridView1.Columns.Count; i++)
                {
                    PdfPCell cel1 = new PdfPCell(new Phrase(dataGridView1.Columns[i].HeaderText));
                    cel1.HorizontalAlignment = Element.ALIGN_CENTER;
                    cel1.FixedHeight = 23;
                    table.AddCell(cel1);
                }

                for (int j = 0; j < dataGridView1.Rows.Count; j++)
                {
                    for (int k = 0; k < dataGridView1.Columns.Count; k++)
                    {
                        if (dataGridView1[k, j].Value != null)
                        {
                            PdfPCell cel1 = new PdfPCell(new Phrase(dataGridView1[k, j].Value.ToString()));
                                cel1.HorizontalAlignment = Element.ALIGN_LEFT;
                                cel1.FixedHeight = 23;
                                table.AddCell(cel1);
                            
                        }
                    }
                }
                    table.WidthPercentage = 100;
                    float[] width = new float[] { 32f, 95f, 185f, 550f };
                    table.SetWidths(width);
                    pdoc.Add(table);

               
                //
                //
                pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD);
                Paragraph pgraph14 = new Paragraph("\n\n\n\n\n     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _                         _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _                         _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _        ", pfont1);
                pgraph14.Alignment = Element.ALIGN_CENTER;
                pdoc.Add(pgraph14);
                //
                pfont1 = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 12, iTextSharp.text.Font.BOLD);
                Paragraph pgraph15 = new Paragraph("HOD's Signature and Stamp                           Examination Officer's Signature                             Level Coordinator's Signature  ", pfont1);
                pgraph15.Alignment = Element.ALIGN_CENTER;
                pdoc.Add(pgraph15);
                //

                pdoc.Close();
                MessageBox.Show("Result Exported to PDF");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
         
        }
    }
}
