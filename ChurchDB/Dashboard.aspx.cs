using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChurchDB
{
    public partial class Dashboard : System.Web.UI.Page
    {
        static private SqlConnection con = new SqlConnection(Properties.Settings.Default.con);
        public string technical, welfare, intercessors, choir, ushering, none;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string query = "SELECT COUNT (department) FROM [memberTable] WHERE department = @choir";
                                
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);//Advised to use parameterized query
                cmd.Parameters.AddWithValue("@choir", "choir");
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    choir = dr.GetValue(0).ToString();                    
                    dr.Close();
                    con.Close();
                }

                string query1 = "SELECT COUNT (department) FROM [memberTable] WHERE department = @intercessors";
                con.Open();
                cmd.CommandText = query1;
                cmd.Parameters.AddWithValue("@intercessors", "intercessors");
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    intercessors = dr.GetValue(0).ToString();
                    dr.Close();
                    con.Close();
                }

                string query2 = "SELECT COUNT (department) FROM [memberTable] WHERE department = @welfare";
                con.Open();
                cmd.CommandText = query2;
                cmd.Parameters.AddWithValue("@welfare", "welfare");
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    welfare = dr.GetValue(0).ToString();
                    dr.Close();
                    con.Close();
                }

                string query3 = "SELECT COUNT (department) FROM [memberTable] WHERE department = @technical";
                con.Open();
                cmd.CommandText = query3;
                cmd.Parameters.AddWithValue("@technical", "technical");
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    technical = dr.GetValue(0).ToString();
                    dr.Close();
                    con.Close();
                }

                string query4 = "SELECT COUNT (department) FROM [memberTable] WHERE department = @ushering";
                con.Open();
                cmd.CommandText = query4;
                cmd.Parameters.AddWithValue("@ushering", "ushering");
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ushering = dr.GetValue(0).ToString();
                    dr.Close();
                    con.Close();
                }

                string query5 = "SELECT COUNT (department) FROM [memberTable] WHERE department = @none";
                con.Open();
                cmd.CommandText = query5;
                cmd.Parameters.AddWithValue("@none", " ");
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    none = dr.GetValue(0).ToString();
                    dr.Close();
                    con.Close();
                }
            }

            catch (SqlException SqlEx) { SqlEx.Message.ToString(); }
            catch (Exception Ex) { Ex.Message.ToString(); }

            Type csType = this.GetType();
            string script = string.Format("var Depts = '{0},{1},{2},{3},{4},{5}';", choir, intercessors, welfare, ushering, technical, none);
            if (!ClientScript.IsClientScriptBlockRegistered("myScript"))
            {
                ClientScript.RegisterClientScriptBlock(csType, "myScript", script, true);
            }
        }
           
        }
    }
