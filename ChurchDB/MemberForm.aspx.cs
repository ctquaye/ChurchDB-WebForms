using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChurchDB
{
    
    public partial class MemberForm : System.Web.UI.Page
    {
        static private SqlConnection conn = new SqlConnection(Properties.Settings.Default.con);
        string gender = "chromosome";
        string currentDate = DateTime.Now.ToString("yyyyMMdd");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            
            try {

              DateTime birthDate = Convert.ToDateTime(dob.Text);
                string birthDate1 =birthDate.ToString("yyyyMMdd");
                string query = "INSERT INTO [memberTable] (firstname,surname,gender,dob,marital_status,telephone,residence,profession,department,join_date) values (@firstname,@surname,@gender,@dob,@marital_status,@telephone,@residence,@profession,@department,@join_date)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                        cmd.Parameters.AddWithValue("@firstname", fname.Text);
                        cmd.Parameters.AddWithValue("@surname", sname.Text);
                        cmd.Parameters.AddWithValue("@gender", gender);
                        cmd.Parameters.AddWithValue("@dob", birthDate1);
                        cmd.Parameters.AddWithValue("@marital_status", status.Text);
                        cmd.Parameters.AddWithValue("@telephone", phone.Text);
                        cmd.Parameters.AddWithValue("@residence", residence.Text);
                        cmd.Parameters.AddWithValue("@profession", profession.Text);
                        cmd.Parameters.AddWithValue("@department", selectdept.SelectedValue);
                        cmd.Parameters.AddWithValue("@join_date", currentDate);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    else {
                        cmd.Parameters.AddWithValue("@firstname", fname.Text);
                        cmd.Parameters.AddWithValue("@surname", sname.Text);
                        cmd.Parameters.AddWithValue("@gender", gender);
                        cmd.Parameters.AddWithValue("@dob", birthDate1);
                        cmd.Parameters.AddWithValue("@marital_status", status.Text);
                        cmd.Parameters.AddWithValue("@telephone", phone.Text);
                        cmd.Parameters.AddWithValue("@residence", residence.Text);
                        cmd.Parameters.AddWithValue("@profession", profession.Text);
                        cmd.Parameters.AddWithValue("@department", selectdept.SelectedValue);
                        cmd.Parameters.AddWithValue("@join_date", currentDate);
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

            catch (SqlException sqlEx)
            {
                throw new Exception("My method threw an exception in SQL:" + sqlEx.Message);
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