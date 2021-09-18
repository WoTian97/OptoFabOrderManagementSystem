using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OptoOrderManagement
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                int pid = Convert.ToInt32(Request.QueryString["PId"]);
                LabelPID.Text = Request.QueryString["PId"];
            }

        }

        string constr = ConfigurationManager.ConnectionStrings["default"].ConnectionString;

        String getInfo(String query)
        {

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand(query, con))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        con.Open();
                        cmd.Connection = con;
                        da.SelectCommand = cmd;
                        return cmd.ExecuteScalar().ToString();
                    }
                }
            }
        }
    }
}