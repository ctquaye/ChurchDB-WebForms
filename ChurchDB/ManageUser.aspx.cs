using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChurchDB
{
    public partial class ManageUser : System.Web.UI.Page
    {

        static private SqlConnection con = new SqlConnection(Properties.Settings.Default.con);
        protected void Page_Load(object sender, EventArgs e)
        {
            passMismatch.Visible = false;
            success.Visible = false;
        }

        protected void gvUsers_PreRender(object sender, EventArgs e)
        {
            try
            {
                gvUsers.UseAccessibleHeader = true;
                gvUsers.HeaderRow.TableSection = TableRowSection.TableHeader;
                gvUsers.HeaderStyle.HorizontalAlign = HorizontalAlign.Center;
            }
            catch
            { }
        }

        
        private void BindTheData()
        {
            gvUsers.DataSourceID = null;
            DataSet dt = new DataSet();
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * FROM loginTable", con);
            SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
            Adapter.Fill(dt);
            con.Close();
            if (dt.Tables[0].Rows.Count > 0)
            {
                gvUsers.DataSource = dt;
                gvUsers.DataBind();
            }
        }
        static public string EncryptPassword(string pass)
        {
            MD5 md5two = new MD5CryptoServiceProvider();
            //compute hash from the bytes of text


            md5two.ComputeHash(ASCIIEncoding.ASCII.GetBytes(pass));
            //get hash result after compute it


            byte[] result2 = md5two.Hash;
            StringBuilder strBuilder2 = new StringBuilder();
            for (int i = 0; i < result2.Length; i++)
            {
                //change it into 2 hexadecimal digits
                //for each byte
                strBuilder2.Append(result2[i].ToString("x2"));
            }
            pass = strBuilder2.ToString();

            return pass;

        }

        protected void gvUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvUsers.EditIndex = -1;
            BindTheData();
        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //find the controls form Gridview for the row which is going to update
            GridViewRow row = (GridViewRow)gvUsers.Rows[e.RowIndex];
            TextBox username = (TextBox)row.Cells[1].Controls[0];
            TextBox password = (TextBox)row.Cells[2].Controls[0];
            int logid = Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value.ToString());
            gvUsers.EditIndex = -1;
            con.Open();
            //Encrypt password
            string EncryptedPass = password.Text;
            EncryptedPass = EncryptPassword(EncryptedPass);
            //update record
            SqlCommand cmd = new SqlCommand("Update loginTable SET username='" + username.Text + "', password='" + EncryptedPass + "' Where userid='" + logid + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindTheData();
        }

        protected void gvUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvUsers.EditIndex = e.NewEditIndex;
            BindTheData();
        }

        protected void Addbtn_Click(object sender, EventArgs e)
        {
            

            if (success.Visible)
            {
                passMismatch.Visible = false;
            }

            bool x = checkPassword(password.Text, verifypass.Text);

            if (x == true)
            {

                MD5 md5two = new MD5CryptoServiceProvider();

                //compute hash from the bytes of text
                string pass = verifypass.Text;
                md5two.ComputeHash(ASCIIEncoding.ASCII.GetBytes(pass));
                //get hash result after compute it

                byte[] result2 = md5two.Hash;
                StringBuilder strBuilder2 = new StringBuilder();
                for (int i = 0; i < result2.Length; i++)
                {
                    //change it into 2 hexadecimal digits
                    //for each byte
                    strBuilder2.Append(result2[i].ToString("x2"));
                }
                pass = strBuilder2.ToString();

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "insert into loginTable (username, password) values ('" + username.Text + "','" + pass + "')";
                cmd.ExecuteNonQuery();

                con.Close();


                username.Text = String.Empty;
                password.Text = String.Empty;
                verifypass.Text = String.Empty;
                success.Visible = true;
                BindTheData();
                
            }
            else { passMismatch.Visible = true; }
        }

        static public bool checkPassword(string pass, string confirmpass)
        {
            if (pass == confirmpass)
            {
                return true;
            }
            else {
                return false;

            }
        }
    }
}