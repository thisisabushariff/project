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
    public partial class Menu : Form
    {
        Form course = new Course();
        Form listCourse = new ListCourse();
        Form BtnReg = new Student_Enrolment();
        Form Student_score = new student_score();
        Form fom = new Form1();
        Form USA = new UserAccount();
        Form cgpa = new CGPA();
        Form result = new Result_Statistics();
        Form Sum = new result_summary();
      

        public Menu()
        {
            InitializeComponent();
        }

        private void btnCourses_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

            course.TopLevel = false;
            this.pictureBox.Controls.Add(course);
            course.Width = pictureBox.Width;
            course.Height = pictureBox.Height;
            course.Show();
           
        }

        private void Menu_Load(object sender, EventArgs e)
        {

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

        private void btnLogout_Click(object sender, EventArgs e)
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

        private void btnUser_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

          //  Form bd = new UserAccount();
            USA.TopLevel = false;
            this.pictureBox.Controls.Add(USA);
            USA.Width = pictureBox.Width;
            USA.Height = pictureBox.Height;
            USA.Show();

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

        private void pictureBox_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

           // Form bd = new Result_Statistics();
            result.TopLevel = false;
            this.pictureBox.Controls.Add(result);
            result.Width = pictureBox.Width;
            result.Height = pictureBox.Height;
            result.Show();

        }

        private void button1_Click(object sender, EventArgs e)
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

        private void button2_Click(object sender, EventArgs e)
        {
            this.pictureBox.Controls.Clear();

         //   Form bd = new result_summary();
            Sum.TopLevel = false;
            this.pictureBox.Controls.Add(Sum);
            Sum.Width = pictureBox.Width;
            Sum.Height = pictureBox.Height;
            Sum.Show();

        }

        private void panelLeft_Paint(object sender, PaintEventArgs e)
        {

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
