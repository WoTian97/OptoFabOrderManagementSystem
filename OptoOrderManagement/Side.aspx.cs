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
    public partial class Side : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                int sid = Convert.ToInt32(Request.QueryString["id"]);
                LoadRecord(sid);
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
        String getInfos(String query)
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
                        string result = "";
                        MySqlDataReader reader = cmd.ExecuteReader();
                        int cnt = 1;
                        while (reader.Read())
                        {
                            result += String.Format("<a href=\"Coating.aspx?id={0}\">{1}</a> ", reader[0], cnt++);
                        }
                        return result;
                    }
                }
            }
        }
        void LoadRecord(int i)
        {

            String para_sql = "SELECT * FROM Surface where side_id =" + i;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand(para_sql))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        da.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            GridViewSurfaces.DataSource = dt;
                            GridViewSurfaces.DataBind();
                        }
                    }
                }
            }
            LabelSide.Text = "Side " + i.ToString();
            LabelDescription.Text = getInfo("select description_of_face from Side WHERE id =" + i);
            LabelPolygonal.Text = getInfo("select polygonal_extruded from Side WHERE id =" + i);
            div_coatings.InnerHtml = getInfos("select id from Coating where side_id = " + i);

        }
    }
}

