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
    public partial class OpticalOrPhotonic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                int oid = Convert.ToInt32(Request.QueryString["OID"]);
                LoadRecord(oid);
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
                            result += String.Format("<a href=\"Side.aspx?id={0}\">{1}</a> ", reader[0], cnt++);
                        }
                        return result;
                    }
                }
            }
        }

        void LoadRecord(int i)
        {
            LabelTitle.Text = "Optical " + i.ToString();
            LabelServiceType.Text = getInfo("select service_type from Optical_Or_Photonic WHERE id =" + i);
            LabelSupplierType.Text = getInfo("select supplier_type from Optical_Or_Photonic WHERE id =" + i);
            LabelStockType.Text = getInfo("select stock_type from Optical_Or_Photonic WHERE id =" + i);
            LabelMaterial.Text = getInfo("select material from Optical_Or_Photonic WHERE id =" + i);
            LabelInstruction.Text = getInfo("select special_instruction from Optical_Or_Photonic WHERE id =" + i);
            LabelQuantity.Text = getInfo("select quantity from Optical_Or_Photonic WHERE id =" + i);
            div_sides.InnerHtml = getInfos("select id from Side WHERE optical_id = " + i);

            string material_id = getInfo("select material_prop_id from Optical_Or_Photonic WHERE id =" + i);
            LabelToxicity.Text = getInfo("select toxicity from MaterialProperty where id = " + material_id);
            LabelMaterialType.Text = getInfo("select m_type from MaterialProperty where id = " + material_id);
            LabelMaxTemp.Text = getInfo("select max_temp from MaterialProperty where id = " + material_id);
            LabelHazards.Text = getInfo("select hazards from MaterialProperty where id = " + material_id);
            LabelInstructions.Text = getInfo("select special_instructions from MaterialProperty where id = " + material_id);
            LabelChemical.Text = getInfo("select chemical_com from MaterialProperty where id = " + material_id);
            LabelMTA.Text = getInfo("select MTA from MaterialProperty where id = " + material_id);
            HyperLinkMaterialDocument.NavigateUrl = getInfo("select doc_link from MaterialProperty where id = " + material_id);

            string geometry_id = getInfo("select geometry_id from Optical_Or_Photonic WHERE id =" + i);
            LabelGeometryType.Text = getInfo("select g_type from Geometry where id = " + geometry_id);
            LabelMajorDiamater.Text = getInfo("select major_diameter from Geometry where id = " + geometry_id);
            LabelMinorDiameter.Text = getInfo("select minor_diameter from Geometry where id = " + geometry_id);
            LabelThickness.Text = getInfo("select thickness from Geometry where id = " + geometry_id);
            LabelWedge.Text = getInfo("select wedge from Geometry where id = " + geometry_id);
            LabelChamferWidth.Text = getInfo("select chamfer_width from Geometry where id = " + geometry_id);
            LabelSideLength.Text = getInfo("select side_length from Geometry where id = " + geometry_id);
            LabelWidth.Text = getInfo("select width from Geometry where id = " + geometry_id);
            LabelLength.Text = getInfo("select length from Geometry where id = " + geometry_id);
            HyperLinkGFile.NavigateUrl = getInfo("select file_link from Geometry where id = " + geometry_id);
            LabelDimensionAccuracy.Text = getInfo("select dimension_accuracy from Geometry where id = " + geometry_id);
            LabelNumberSides.Text = getInfo("select number_of_sides from Geometry where id = " + geometry_id);
        }
    }
}