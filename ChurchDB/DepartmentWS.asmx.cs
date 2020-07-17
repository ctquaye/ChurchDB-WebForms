using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ChurchDB
{
    /// <summary>
    /// Summary description for DepartmentWS
    /// </summary>
    [WebService(Namespace = "http://localhost/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class DepartmentWS : System.Web.Services.WebService
    {
        static private SqlConnection conn = new SqlConnection(Properties.Settings.Default.con);

        [WebMethod]

        public List<departmentCount> getdepartmentCount()
        {

            List<departmentCount> d = new List<departmentCount>();
            
            int usheringNo = usheringCount();
            int welfareNo = welfareCount();
            int intercessorsNo = intercessorsCount();

         
            d.Add(new departmentCount {
                ushering = usheringNo,
                welfare = welfareNo,
                intercessors= intercessorsNo
                
            });
            return d;
        }

        public int usheringCount()
        {
            conn.Open();
            string query = "SELECT Count(department) FROM memberTable WHERE department = 'choir'";
            int x = 0;
            SqlDataReader reader;
            
            using (SqlCommand cmd =new SqlCommand(query,conn)) {
                
                reader = cmd.ExecuteReader();
                while (reader.Read()) {
                    x=reader.GetInt32(0);
                }
                conn.Close();
                return x;           
        } 
            
        }

        public int welfareCount()
        {
            conn.Open();
            string query = "SELECT Count(department) FROM memberTable WHERE department = 'welfare'";

            int x = 0;
            SqlDataReader reader;

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {

                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    x = reader.GetInt32(0);
                }
                conn.Close();
                return x;
            }
        }

        public int intercessorsCount()
        {
            conn.Open();
            string query = "SELECT Count(department) FROM memberTable WHERE department = 'intercessors'";

            int x = 0;
            SqlDataReader reader;

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {

                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    x = reader.GetInt32(0);
                }
                conn.Close();
                return x;
                
            }
            }

        public class departmentCount
        {
            public int ushering { get; set; }
            public int welfare { get; set; }
            public int intercessors { get; set; }
           // public int choir { get; set; }
           // public int none { get; set; }          

            }
        }
    }

