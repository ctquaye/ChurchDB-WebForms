using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChurchDB
{
    public partial class SMS : System.Web.UI.Page
    {
        static private SqlConnection conn = new SqlConnection(Properties.Settings.Default.con);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

          /*  try
            {

                string query = "INSERT INTO [contactTable] (firstname,surname,phone) values (@firstname,@surname,@phone)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {

                    conn.Open();
                    string fname;

                    fname = gvContacts.Rows[DataGridView.SelectedRows]
                    TextBox sname = new TextBox();
                    TextBox phone = new TextBox();
                    fname.Text = row.Cells[1].Text;
                    sname.Text = row.Cells[2].Text;
                    phone.Text = row.Cells[].Text;

                    cmd.Parameters.AddWithValue("@firstname", fname);
                    cmd.Parameters.AddWithValue("@surname", sname.Text);
                    cmd.Parameters.AddWithValue("@telephone", phone.Text);

                    cmd.ExecuteNonQuery();
                    conn.Close();


                }
            }
            catch (Exception ex)
            { ex.GetBaseException(); }*/

        }
        }
    }
