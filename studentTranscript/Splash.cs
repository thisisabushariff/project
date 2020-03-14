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
    public partial class Splash : Form
    {
        int counter = 0; 

        public Splash()
        {
            InitializeComponent();
        }

        private void Splash_Load(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void progressBar1_Click(object sender, EventArgs e)
        {
            
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            counter++;
            progressBar1.Value = counter;
            if (counter > 5)
            {
                timer1.Stop();
                var next = new Login();
                this.Hide();
                next.Show();
                
            }
        }
    }
}
