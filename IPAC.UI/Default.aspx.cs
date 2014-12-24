using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace IPAC.UI
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetChartTypes();
        }

        private void GetChartTypes()
        {
            string cs = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                // SqlCommand cmd = new SqlCommand("SELECT Name,Salary FROM Test_Table",con);
                SqlCommand cmd = new SqlCommand("sp_dashboard_test", con);
                con.Open();
                cmd.ExecuteNonQuery();

                Series series = Chart1.Series["Series1"];
                Series series1 = Chart1.Series["Series2"];


                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    //
                    series.Points.AddXY(rdr["Department"].ToString(), rdr["Present"].ToString());
                    series1.Points.AddXY(rdr["Department"].ToString(), rdr["Absent"].ToString());
                }
            }


        }


    }
}

