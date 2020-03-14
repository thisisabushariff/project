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
    public partial class CGPA : Form
    {
        MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");

        public CGPA()
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
          
        }

        private void buttonCGPA_Click(object sender, EventArgs e)
        {
          
        }

        private void CGPA_Load(object sender, EventArgs e)
        {

        }

        private void buttonResult_Click(object sender, EventArgs e)
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
                var cmd = new MySqlCommand("SELECT * FROM student_result WHERE Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text + "' AND Semester = '" + "FIRST" + "'", con);
                var dr = cmd.ExecuteReader();
                dataGridView1.Visible = true;
                while (dr.Read())
                {
                    dataGridView1.Rows.Add(dr["Code"].ToString(), dr["Title"].ToString(), dr["CreditUnit"].ToString(), dr["Grade"].ToString(), dr["GP"].ToString(), dr["PE"].ToString());

                }
                dataGridView2.Rows.Clear();
                dataGridView2.Visible = true;
                con.Close();
                con.Open();
                var cmmd = new MySqlCommand("SELECT * FROM student_result WHERE Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND RegNo = '" + textBoxReg.Text + "' AND Semester = '" + "SECOND" + "'", con);
                var ddr = cmmd.ExecuteReader();
                dataGridView2.Visible = true;
                while (ddr.Read())
                {
                    dataGridView2.Rows.Add(ddr["Code"].ToString(), ddr["Title"].ToString(), ddr["CreditUnit"].ToString(), ddr["Grade"].ToString(), ddr["GP"].ToString(), ddr["PE"].ToString());

                }
                con.Close();
                con.Close();
                con.Open();
                PreviousCGPA.Text = "       ";
                var cmad = new MySqlCommand("SELECT * FROM result_details WHERE RegNo LIKE '" + textBoxReg.Text + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "'", con);
                var ddrr = cmad.ExecuteReader();
                if (ddrr.Read())
                {
                    var cpe = 0;
                    var ccr = 0;
                    var CPE = "SELECT TPE,TCR FROM result_details WHERE RegNo =  '" + textBoxReg.Text + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND Level = '" + comboBoxlevel.SelectedItem.ToString() + "'";
                   

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
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
         
        }

        private void label19_Click(object sender, EventArgs e)
        {

        }

        private void buttonClose_Click(object sender, EventArgs e)
        {
            this.Close();
            var back = new Menu();
            back.Show();
            

        }

        private void textBoxReg_TextChanged(object sender, EventArgs e)
        {
            try
            {
                dataGridView1.Rows.Clear();
                dataGridView1.Visible = true;
                dataGridView2.Rows.Clear();
                dataGridView2.Visible = true;
            con.Close();
            con.Open();
            var ccmd = new MySqlCommand("SELECT * FROM student WHERE RegNo = '" + textBoxReg.Text.Trim() + "'", con);
            var ddr = ccmd.ExecuteReader();
            if (ddr.Read())
            {
                textBoxName.Text = ddr["Name"].ToString();
                
            }
            else
            {

            }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
      
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

        private void textBoxName_KeyPress(object sender, KeyPressEventArgs e)
        {
            char ch = e.KeyChar;
            if (!char.IsLetter(ch) && ch != ' ' && ch != 8)
            {
                e.Handled = true;
                MessageBox.Show("unwanted character");
            }
        }
    }
}
