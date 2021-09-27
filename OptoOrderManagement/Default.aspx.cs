using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OptoOrderManagement
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                String s = "SELECT id as 'Order ID', action_required as 'Action Required', action_description as 'Action Description', urgent as 'Urgent', o_priority as 'Priority', o_status as 'Status', order_description as 'Order Description', payment_status as 'Payment Status', cost as 'Cost', tracking_number as 'Tracking Number', first_name as 'Client First Name', last_name as 'Client Last Name', company_name as 'Organisation', phone_number as 'Phone Number', order_date as 'Time Stamp' FROM Orders";
                LoadRecord(s);
            }
            
        }
        string constr = ConfigurationManager.ConnectionStrings["default"].ConnectionString;
        void LoadRecord(String para_sql)
        {
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
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void ButtonSort_Click(object sender, EventArgs e)
        {
            String str = DropDownSort.Items[DropDownSort.SelectedIndex].Value;
            String s = "";
            switch (str)
            {
         
                case "Order Number":
                    s = "SELECT id as 'Order ID', action_required as 'Action Required', action_description as 'Action Description', urgent as 'Urgent', o_priority as 'Priority', o_status as 'Status', order_description as 'Order Description', payment_status as 'Payment Status', cost as 'Cost', tracking_number as 'Tracking Number', first_name as 'Client First Name', last_name as 'Client Last Name', company_name as 'Organisation', phone_number as 'Phone Number', order_date as 'Time Stamp' FROM Orders";
                    break;

                case "Action Required":
                    s = "SELECT id as 'Order ID', action_required as 'Action Required', action_description as 'Action Description', urgent as 'Urgent', o_priority as 'Priority', o_status as 'Status', order_description as 'Order Description', payment_status as 'Payment Status', cost as 'Cost', tracking_number as 'Tracking Number', first_name as 'Client First Name', last_name as 'Client Last Name', company_name as 'Organisation', phone_number as 'Phone Number', order_date as 'Time Stamp' FROM Orders ORDER BY action_required DESC";
                    break;

                case "Urgent":
                    s = "SELECT id as 'Order ID', action_required as 'Action Required', action_description as 'Action Description', urgent as 'Urgent', o_priority as 'Priority', o_status as 'Status', order_description as 'Order Description', payment_status as 'Payment Status', cost as 'Cost', tracking_number as 'Tracking Number', first_name as 'Client First Name', last_name as 'Client Last Name', company_name as 'Organisation', phone_number as 'Phone Number', order_date as 'Time Stamp' FROM Orders ORDER BY urgent DESC";
                    break;

                case "Status":
                    s = "SELECT id as 'Order ID', action_required as 'Action Required', action_description as 'Action Description', urgent as 'Urgent', o_priority as 'Priority', o_status as 'Status', order_description as 'Order Description', payment_status as 'Payment Status', cost as 'Cost', tracking_number as 'Tracking Number', first_name as 'Client First Name', last_name as 'Client Last Name', company_name as 'Organisation', phone_number as 'Phone Number', order_date as 'Time Stamp' FROM Orders ORDER BY status";
                    break;

                case "Date":
                    s = "SELECT id as 'Order ID', action_required as 'Action Required', action_description as 'Action Description', urgent as 'Urgent', o_priority as 'Priority', o_status as 'Status', order_description as 'Order Description', payment_status as 'Payment Status', cost as 'Cost', tracking_number as 'Tracking Number', first_name as 'Client First Name', last_name as 'Client Last Name', company_name as 'Organisation', phone_number as 'Phone Number', order_date as 'Time Stamp' FROM Orders ORDER BY order_date";
                    break;

                default:
                    s = "SELECT id as 'Order ID', action_required as 'Action Required', action_description as 'Action Description', urgent as 'Urgent', o_priority as 'Priority', o_status as 'Status', order_description as 'Order Description', payment_status as 'Payment Status', cost as 'Cost', tracking_number as 'Tracking Number', first_name as 'Client First Name', last_name as 'Client Last Name', company_name as 'Organisation', phone_number as 'Phone Number', order_date as 'Time Stamp' FROM Orders";
                    break;
            }
            LoadRecord(s);
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            String ddStr = DropDownSearch.Items[DropDownSearch.SelectedIndex].Value;
            String searchBy = TextBoxSearch.Text;
            String s = "SELECT id as 'Order ID', action_required as 'Action Required', action_description as 'Action Description', urgent as 'Urgent', o_priority as 'Priority', o_status as 'Status', order_description as 'Order Description', payment_status as 'Payment Status', cost as 'Cost', tracking_number as 'Tracking Number', first_name as 'Client First Name', last_name as 'Client Last Name', company_name as 'Organisation', phone_number as 'Phone Number', order_date as 'Time Stamp' FROM Orders";
            String temp = "";

            switch (ddStr)
            {
                default:
                    if (String.Compare(searchBy, "")!=0) {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please select an option to search!');", true);
                    }
                    temp = s;
                    break;

                case "Order Number":
                    int oid = 0;
                    try
                    {
                        oid = Convert.ToInt32(searchBy);
                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please enter an integer as Order ID!');", true);
                    }
                    temp = s + " WHERE id = " + oid;
                    break;

                case "Client First Name":
                    temp = s + " WHERE first_name = '" + searchBy+"'";
                    break;

                case "Client Last Name":
                    temp = s + " WHERE last_name = '" + searchBy + "'";
                    break;

                case "Organisation":
                    temp = s + " WHERE company_name = '" + searchBy + "'";
                    break;

                case "Phone Number":
                    temp = s + " WHERE phone_number = '" + searchBy + "'";
                    break;

                case "Status":
                    temp = s + " WHERE o_status = '" + searchBy + "'";
                    break;

            }
            LoadRecord(temp);

        }

        protected void ButtonFuzzy_Click(object sender, EventArgs e)
        {
            String ddStr = DropDownSearch.Items[DropDownSearch.SelectedIndex].Value;
            String searchBy = TextBoxSearch.Text;
            String s = "SELECT id as 'Order ID', action_required as 'Action Required', action_description as 'Action Description', urgent as 'Urgent', o_priority as 'Priority', o_status as 'Status', order_description as 'Order Description', payment_status as 'Payment Status', cost as 'Cost', tracking_number as 'Tracking Number', first_name as 'Client First Name', last_name as 'Client Last Name', company_name as 'Organisation', phone_number as 'Phone Number', order_date as 'Time Stamp' FROM Orders";
            String temp = "";
            switch (ddStr)
            {
                default:
                    if (String.Compare(searchBy, "") != 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please select an option to search!');", true);
                    }
                    temp = s;
                    break;

                case "Order Number":
                    int oid = 0;
                    try
                    {
                        oid = Convert.ToInt32(searchBy);
                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please enter an integer as Order ID!');", true);
                    }
                    temp = s + " WHERE id LIKE '%" + searchBy + "%'";
                    break;
              
                case "Client First Name":
                    temp = s + " WHERE first_name LIKE '%" + searchBy + "%'";
                    break;

                case "Client Last Name":
                    temp = s + " WHERE last_name LIKE '%" + searchBy + "%'";
                    break;

                case "Organisation":
                    temp = s + " WHERE company_name LIKE '%" + searchBy + "%'";
                    break;

                case "Phone Number":
                    temp = s + " WHERE phone_number LIKE '%" + searchBy + "%'";
                    break;

                case "Status":
                    temp = s + " WHERE o_status LIKE '%" + searchBy + "%'";
                    break;

            }
            LoadRecord(temp);
        }

        protected void gridview1_RowDataBound(object sender, GridViewRowEventArgs e)

        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
                e.Row.Attributes.Add("onmouseover", "c=style.backgroundColor;style.backgroundColor='#d4e4fc'");
                e.Row.Attributes.Add("onmouseout", "style.backgroundColor=c");
                string SId = e.Row.Cells[0].Text;
                e.Row.Attributes.Add("ondblclick", "location.href='Order.aspx?SId=" + SId + "'");
                e.Row.Attributes["style"] = "Cursor:hand";
            }


        }

    }
}