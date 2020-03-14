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
    public partial class result_summary : Form
    {
        MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");

        public result_summary()
        {
             
            InitializeComponent();
        }

        private void buttonResult_Click(object sender, EventArgs e)
        {
            try
            {
                dataGridView1.Rows.Clear();
           
                var i = 1;
                dataGridView1.Visible = true;
                con.Close();
                con.Open();
                var cmd = new MySqlCommand("SELECT * FROM result_details WHERE Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND Semester = '" + comboBoxSemester.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "' AND Programme = '" + comboBoxProgram.SelectedItem.ToString() + "'", con);
                var dr = cmd.ExecuteReader();
               
                dataGridView1.Visible = true;
                while (dr.Read())
                {
                    dataGridView1.Rows.Add(i,dr["RegNo"].ToString(), dr["Name"].ToString(), dr["TCR"].ToString(), dr["TPE"].ToString(), dr["TCE"].ToString(), dr["GPA"].ToString(), dr["CGPA"].ToString(), dr["CarryOverCourses"].ToString(), dr["Remarks"].ToString());
                    i++;
                }
                con.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
          
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void buttonClose_Click(object sender, EventArgs e)
        {
            this.Close();
            var back = new Menu();
            back.Show();
            
        }

        private void buttonPrint_Click(object sender, EventArgs e)
        {
             try
                {
            //
            Document pdoc = new Document(PageSize.A3, 38f, 38f, 20f, 15f);
            PdfWriter pWriter = PdfWriter.GetInstance(pdoc, new FileStream("SummaryPDF\\"+comboBoxlevel.Text+".pdf", FileMode.Create));
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
            Paragraph pgraph3 = new Paragraph("Student's Examination Results Summary. ", pfont1);
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
            Paragraph pgraph6 = new Paragraph("PROGRAMME: " + comboBoxProgram.Text +"          SESSION: " + comboBoxSession.Text + "          SEMESTER: " + comboBoxSemester.Text +"          LEVEL: " + comboBoxlevel.Text + "          DATE: " + dateTimePicker1.Text, pfont1);
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
                cel1.FixedHeight = 22;
                table.AddCell(cel1);
            }

            for (int j = 0; j < dataGridView1.Rows.Count; j++)
            {
                for (int k = 0; k < dataGridView1.Columns.Count; k++)
                {
                    if (dataGridView1[k, j].Value != null)
                    {
                        PdfPCell cel1 = new PdfPCell(new Phrase(dataGridView1[k, j].Value.ToString()));
                        cel1.HorizontalAlignment = Element.ALIGN_CENTER;
                        cel1.FixedHeight = 22;
                        table.AddCell(cel1);
                    }
                }
            }
            if (comboBoxSemester.SelectedItem.ToString() == "FIRST")
            {
                table.WidthPercentage = 100;
                float[] width = new float[] { 35f, 130f, 240f, 50f, 50f, 50f, 55f, 0f, 320f, 110f };
                table.SetWidths(width);
                pdoc.Add(table);

            }
            else
            {
                table.WidthPercentage = 100;
                float[] width = new float[] { 35f, 130f, 240f, 50f, 50f, 50f, 55f, 60f, 320f, 110f };
                table.SetWidths(width);
                pdoc.Add(table);
            }
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

        private void buttonRaw_Click(object sender, EventArgs e)
        {
            this.Controls.Clear();

            Form bd = new RawMarks();
            bd.TopLevel = false;
            this.Controls.Add(bd);
            bd.Width = this.Width;
            bd.Height = this.Height;
            bd.Show();
           
        }
    }
}
