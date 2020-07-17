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
    public partial class Login : System.Web.UI.Page
    {
        static private SqlConnection conn = new SqlConnection(Properties.Settings.Default.con);

        protected void Page_Load(object sender, EventArgs e)
        {
            wrongLogin.Visible = false;
            emptyLogin.Visible = false;
            msgDiv.Visible = false;
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            //string h=Sqlfunctions.MD5Hash(unamefield.Text);
            // MessageBox.Show(h);
            if (username.Text == "" && password.Text == "")
            {
                msgDiv.Visible = true;
                emptyLogin.Visible = true;                
                return;
            }
            else
            {
                bool validate = LoginMethod(username.Text, password.Text);
                if (validate == true)
                {
                    Session["user-name"] = username.Text;

                    HttpContext.Current.Response.Redirect("Memberview.aspx");
                }
                else
                {
                    msgDiv.Visible = true;
                    wrongLogin.Visible = true;
                }
            }
        }

        static public bool LoginMethod(string uname, string pass)
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

            //static private SqlConnection con = new SqlConnection(Properties.Settings.Default.DataConString);

            string sqllog = "SELECT * from loginTable where username = '" + uname + "'and password='" + pass + "'";

            SqlCommand cmdselect = new SqlCommand(sqllog, conn);
            // IPdatabaseDataSet ds = new IPdatabaseDataSet();
            DataSet ds = new DataSet();
            SqlDataAdapter adapt = new SqlDataAdapter(cmdselect);
            adapt.Fill(ds);
            int ia = ds.Tables[0].Rows.Count;
            if (ia == 1)
            {

                return true;
            }
            else {

                return false;
            }
        }
    }
}