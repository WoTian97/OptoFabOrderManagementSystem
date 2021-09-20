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
    public partial class Coating : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                int cid = Convert.ToInt32(Request.QueryString["id"]);
                LoadRecord(cid);
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

        void LoadRecord(int i)
        {

            String layer_sql = "SELECT * FROM Layer where coating_id =" + i;
            String spec_sql = "SELECT * FROM Spec where coating_id =" + i;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand(layer_sql))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        da.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            GridViewLayers.DataSource = dt;
                            GridViewLayers.DataBind();
                        }
                    }
                }

                using (MySqlCommand cmd = new MySqlCommand(spec_sql))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        da.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            GridViewSpecifications.DataSource = dt;
                            GridViewSpecifications.DataBind();
                        }
                    }
                }

            }
            LabelCoating.Text = "Coating " + i.ToString();
            LabelCoatingMethod.Text = getInfo("select coating_method from Coating WHERE id =" + i);
            LabelCoatingAreaDimension.Text = getInfo("select coated_area_dimension from Coating WHERE id =" + i);
            LabelPosition.Text = getInfo("select position from Coating WHERE id =" + i);
            LabelCompensationCoating.Text = getInfo("select compensation_coating from Coating WHERE id =" + i);
            LabelProtectiveCoating.Text = getInfo("select protactive_coating from Coating WHERE id =" + i);
            LabelDepositionProcess.Text = getInfo("select deposition_process from Coating WHERE id =" + i);
        }
    }
}