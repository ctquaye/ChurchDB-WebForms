using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChurchDB
{
    public partial class Test : System.Web.UI.Page
    {
        static private SqlConnection conn = new SqlConnection(Properties.Settings.Default.Connector);
        string gender = "chromosome";
        string currentDate = DateTime.Now.ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            try
            {
                
                string query = "INSERT INTO [contactTable] (firstname,surname,phone) values (@firstname,@surname,@phone)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {



                    if (conn.State == System.Data.ConnectionState.Closed)
                    {
                        conn.Open();
                        cmd.Parameters.AddWithValue("@firstname", fname.Text);
                        cmd.Parameters.AddWithValue("@surname", sname.Text);
                        
                        cmd.Parameters.AddWithValue("@phone", phone.Text);
                       
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    else {
                        cmd.Parameters.AddWithValue("@firstname", fname.Text);
                        cmd.Parameters.AddWithValue("@surname", sname.Text);
                       
                        cmd.Parameters.AddWithValue("@telephone", phone.Text);
                       
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }

                    fname.Text = String.Empty;
                    sname.Text = String.Empty;
                    male.Checked = false;
                    female.Checked = false;
                    phone.Text = String.Empty;
                    residence.Text = String.Empty;
                    profession.Text = String.Empty;

                }
            }
            catch (Exception ex)
            { ex.GetBaseException(); }

        
        }

        protected void male_CheckedChanged(object sender, EventArgs e)
        {
            if (male.Checked == true)
            {
                gender = male.Text;
            }
            else { gender = female.Text; }
        }
    }
}