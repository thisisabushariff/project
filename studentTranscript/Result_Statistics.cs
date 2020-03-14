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
    public partial class Result_Statistics : Form
    {
        MySqlConnection con = new MySqlConnection("server = localhost; uid = root; database = student_transcript");
        
        public Result_Statistics()
        {
            InitializeComponent();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void buttonCourse_Click(object sender, EventArgs e)
        {
            try
            {
           
                con.Close();
                con.Open();
                this.chartCourse.Series["CarryOver"].Points.Clear();
                this.chartCourse.Series["Non CarryOver"].Points.Clear();

                var cmd = new MySqlCommand("SELECT * FROM student_result WHERE Code = '" + textBoxCode.Text.Trim() + "'", con);
                var dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    var grade = 0;

                    var CPE = "SELECT Grade FROM student_result WHERE Grade =  '" + "F" + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND Code = '" + textBoxCode.Text.Trim() + "'";
                   
                    con.Close();
                    con.Open();
                    MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        grade += 1;
                    }

                    this.chartCourse.Series["CarryOver"].Points.AddXY("Students Result", Convert.ToInt16(grade));
                }
                else
                {
                   
                }
                con.Close();
                con.Open();
                var cmmd = new MySqlCommand("SELECT * FROM student_result WHERE Code = '" + textBoxCode.Text.Trim() + "'", con);
                var drr = cmmd.ExecuteReader();
                if (drr.Read())
                {
                    var grad = 0;

                    var CPE = "SELECT Grade FROM student_result WHERE Grade !=  '" + "F" + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND Code = '" + textBoxCode.Text.Trim() + "'";

                    con.Close();
                    con.Open();
                    MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                  
                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        grad += 1;
                    }

                    this.chartCourse.Series["Non CarryOver"].Points.AddXY("Students Result", Convert.ToInt16(grad));
                }
                
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
         
        }

        private void buttonGeneral_Click(object sender, EventArgs e)
        {
            try
                {
            con.Close();
            con.Open();
            textBoxCode.Text = "";
            this.chartGeneral.Series["First Class"].Points.Clear();
            this.chartGeneral.Series["Second Class Upper"].Points.Clear();
            this.chartGeneral.Series["Second Class Lower"].Points.Clear();
            this.chartGeneral.Series["Third Class"].Points.Clear();
            this.chartGeneral.Series["Probation"].Points.Clear();
            
            var cmd = new MySqlCommand("SELECT * FROM tbl_cgpa WHERE Level = '" + comboBoxlevel.Text.Trim() + "'", con);
            var dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                var first = 0;

                var CPE = "SELECT CGPA FROM tbl_cgpa WHERE CGPA >=  '" + 4.5 + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND level = '" + comboBoxlevel.Text.Trim() + "' AND Programme = '" + comboBoxProgram.Text.Trim() + "'";

                con.Close();
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    first += 1;
                }

                this.chartGeneral.Series["First Class"].Points.AddXY("Students CGPA Ranges", Convert.ToInt16(first));
            }
            else
            {
            }
            
            con.Close();
            con.Open();
            var cmmd = new MySqlCommand("SELECT * FROM tbl_cgpa WHERE Level = '" + comboBoxlevel.Text.Trim() + "'", con);
            var ddr = cmmd.ExecuteReader();
            if (ddr.Read())
            {
                var SecondUpper = 0;

                var CPE = "SELECT CGPA FROM tbl_cgpa WHERE CGPA >=  '" + 3.5 + "' AND CGPA < '" + 4.5 + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND level = '" + comboBoxlevel.Text.Trim() + "' AND Programme = '" + comboBoxProgram.Text.Trim() + "'";

                con.Close();
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    SecondUpper += 1;
                }

                this.chartGeneral.Series["Second Class Upper"].Points.AddXY("Students CGPA Ranges", Convert.ToInt16(SecondUpper));
            }
            con.Close();

            con.Close();
            con.Open();
            var cmdd = new MySqlCommand("SELECT * FROM tbl_cgpa WHERE Level = '" + comboBoxlevel.Text.Trim() + "'", con);
            var drr = cmdd.ExecuteReader();
            if (drr.Read())
            {
                var SecondLower = 0;

                var CPE = "SELECT CGPA FROM tbl_cgpa WHERE CGPA >=  '" + 2.5 + "' AND CGPA < '" + 3.5 + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND level = '" + comboBoxlevel.Text.Trim() + "' AND Programme = '" + comboBoxProgram.Text.Trim() + "'";

                con.Close();
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    SecondLower += 1;
                }

                this.chartGeneral.Series["Second Class Lower"].Points.AddXY("Students CGPA Ranges", Convert.ToInt16(SecondLower));
            }
            con.Close();

            con.Close();
            con.Open();
            var ccmd = new MySqlCommand("SELECT * FROM tbl_cgpa WHERE Level = '" + comboBoxlevel.Text.Trim() + "'", con);
            var drrr = ccmd.ExecuteReader();
            if (drrr.Read())
            {
                var Third = 0;

                var CPE = "SELECT CGPA FROM tbl_cgpa WHERE CGPA >=  '" + 1.5 + "' AND CGPA < '" + 2.5 + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND level = '" + comboBoxlevel.Text.Trim() + "' AND Programme = '" + comboBoxProgram.Text.Trim() + "'";

                con.Close();
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    Third += 1;
                }

                this.chartGeneral.Series["Third Class"].Points.AddXY("Students CGPA Ranges", Convert.ToInt16(Third));
            }
            con.Close();

            con.Close();
            con.Open();
            var ccmmd = new MySqlCommand("SELECT * FROM tbl_cgpa WHERE Level = '" + comboBoxlevel.Text.Trim() + "'", con);
            var dddr = ccmmd.ExecuteReader();
            if (dddr.Read())
            {
                var Probation = 0;

                var CPE = "SELECT CGPA FROM tbl_cgpa WHERE CGPA >=  '" + 0.0 + "' AND CGPA < '" + 1.5 + "' AND Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND level = '" + comboBoxlevel.Text.Trim() + "' AND Programme = '" + comboBoxProgram.Text.Trim() + "'";

                con.Close();
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    Probation += 1;
                }

                this.chartGeneral.Series["Probation"].Points.AddXY("Students CGPA Ranges", Convert.ToInt16(Probation));
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

        private void buttonWithdraw_Click(object sender, EventArgs e)
        {
            try
            {
             con.Close();
                con.Open();
                textBoxCode.Text = "";
                comboBoxlevel.Text = "";
                this.chartWithdraw.Series["Spill Over"].Points.Clear();
                this.chartWithdraw.Series["Withdraw"].Points.Clear();

                var cmmd = new MySqlCommand("SELECT * FROM tbl_cgpa WHERE Session = '" + comboBoxSession.Text + "'", con);
                var drr = cmmd.ExecuteReader();
                if (drr.Read())
                {
                    var Spill = 0;

                    var CPE = "SELECT Session,level FROM tbl_cgpa WHERE Session = '" + comboBoxSession.SelectedItem.ToString() + "' AND level = '" + "S01" + "' OR level = '" + "S02" + "'";

                    con.Close();
                    con.Open();
                    MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                   
                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        Spill += 1;
                    }
                  
                    this.chartWithdraw.Series["Spill Over"].Points.AddXY("Students In Dangerous Stages", Convert.ToInt16(Spill));
                }

                con.Close();
                con.Open();
                var cmmdd = new MySqlCommand("SELECT * FROM tbl_cgpa WHERE CGPA >=  '" + 0.00 + "' AND CGPA < '" + 1.50 + "' AND Session = '" + comboBoxSession.Text + "'", con);
                var drrr = cmmdd.ExecuteReader();
                if (drrr.Read())
                {
                    var draw = 0;

                    var CPE = "SELECT Session,CGPA,level FROM tbl_cgpa WHERE Session = '" + comboBoxSession.Text + "' AND CGPA >=  '" + 0.00 + "' AND CGPA < '" + 1.50 + "' AND level = '" + "200" + "' OR level = '" + "300" + "' OR level = '" + "400" + "'";

                    con.Close();
                    con.Open();
                    MySqlDataAdapter da = new MySqlDataAdapter(CPE, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        draw += 1;
                    }

                    this.chartWithdraw.Series["Withdraw"].Points.AddXY("Students In Dangerous Stages", Convert.ToInt16(draw));
                }
             
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Surver Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
    }
}
