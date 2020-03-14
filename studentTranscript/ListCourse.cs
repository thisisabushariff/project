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
    public partial class ListCourse : Form
    {
        MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");
      
        public ListCourse()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            

        }

        private void buttonView_Click(object sender, EventArgs e)
        {
            try
            {
                dataGridViewCourse.Rows.Clear();

            dataGridViewCourse.Visible = true;
            con.Open();
            var cmd = new MySqlCommand("SELECT * FROM courses", con);
            var dr = cmd.ExecuteReader();
            dataGridViewCourse.Visible = true;
            while (dr.Read())
            {
                dataGridViewCourse.Rows.Add(dr["course_id"], dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), dr["Semester"].ToString(), dr["Status"].ToString());

            }
            con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void buttonTList_Click(object sender, EventArgs e)
        {
            try
            {
                dataGridViewCourse.Rows.Clear();

                dataGridViewCourse.Visible = true;
                con.Open();
                var cmd = new MySqlCommand("SELECT * FROM courses", con);
                var dr = cmd.ExecuteReader();
                dataGridViewCourse.Visible = true;
                while (dr.Read())
                {
                    dataGridViewCourse.Rows.Add(dr["course_id"], dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), dr["Semester"].ToString(), dr["Status"].ToString());

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
    }
}
