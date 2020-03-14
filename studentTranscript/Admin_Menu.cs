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
    public partial class Admin_Menu : Form
    {
        
        Form listCourse = new ListCourse();
        Form BtnReg = new Student_Enrolment();
        Form Student_score = new student_score();
        Form fom = new Form1();
        Form cgpa = new CGPA();
        Form result = new Result_Statistics();
        Form Sum = new result_summary();
      
        public Admin_Menu()
        {
            InitializeComponent();
        }

        private void btnCourses_Click(object sender, EventArgs e)
        {
            //this.pictureBox.Controls.Clear();

            //Form bd = new Course();
            //bd.TopLevel = false;
            //this.pictureBox.Controls.Add(bd);
            //bd.Width = pictureBox.Width;
            //bd.Height = pictureBox.Height;
            //bd.Show();
           
        }

        private void btnListCourses_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

            //Form bd = new ListCourse();
            listCourse.TopLevel = false;
            this.pictureBox.Controls.Add(listCourse);
            listCourse.Width = pictureBox.Width;
            listCourse.Height = pictureBox.Height;
            listCourse.Show();
        }

        private void btnGenResult_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

            // Form bd = new student_score();
            Student_score.TopLevel = false;
            this.pictureBox.Controls.Add(Student_score);
            Student_score.Width = pictureBox.Width;
            Student_score.Height = pictureBox.Height;
            Student_score.Show();
           
           
        }

        private void btnGPA_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

            //Form bd = new Form1();
            fom.TopLevel = false;
            this.pictureBox.Controls.Add(fom);
            fom.Width = pictureBox.Width;
            fom.Height = pictureBox.Height;
            fom.Show();

        }

        private void btnCGPA_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

            //  Form bd = new CGPA();
            cgpa.TopLevel = false;
            this.pictureBox.Controls.Add(cgpa);
            cgpa.Width = pictureBox.Width;
            cgpa.Height = pictureBox.Height;
            cgpa.Show();


        }

        private void btnStatistics_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

            // Form bd = new Result_Statistics();
            result.TopLevel = false;
            this.pictureBox.Controls.Add(result);
            result.Width = pictureBox.Width;
            result.Height = pictureBox.Height;
            result.Show();



        }

        private void btnSummary_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

            //   Form bd = new result_summary();
            Sum.TopLevel = false;
            this.pictureBox.Controls.Add(Sum);
            Sum.Width = pictureBox.Width;
            Sum.Height = pictureBox.Height;
            Sum.Show();

        }

        private void btnMenu_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

        }

        private void buttonLogout_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

            if (MessageBox.Show("Do you really want to Log Out ", "", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                // this.Close();
                Application.Exit();
            }
            else
            {

            }
        }

        private void buttonRegistration_Click(object sender, EventArgs e)
        {
             this.pictureBox.Controls.Clear();

           // Form bd = new Student_Enrolment();
            BtnReg.TopLevel = false;
            this.pictureBox.Controls.Add(BtnReg);
            BtnReg.Width = pictureBox.Width;
            BtnReg.Height = pictureBox.Height;
            BtnReg.Show();
        }
    }
}
