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
    public partial class Contact : Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                //receive the order ID from Default page
                int sid = Convert.ToInt32(Request.QueryString["SId"]);
                LoadRecord(sid);
            }

        }

        string constr = ConfigurationManager.ConnectionStrings["default"].ConnectionString;

        //load order information according to the order ID
        void LoadRecord(int i)
        {
            String para_sql = "SELECT id, part_description as 'Part Description', action_required as 'Action Required', urgent as 'Urgent', p_priority as 'Priority', p_status as 'Status' FROM Part where order_id =" + i;
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
            LabelOID.Text = i.ToString(); 
            TextPriority.Text = getInfo("SELECT o_priority FROM Orders WHERE id =" + i);
            TextCost.Text = getInfo("SELECT cost FROM Orders WHERE id =" + i);
            TextTrackNum.Text = getInfo("SELECT tracking_number FROM Orders WHERE id =" + i);
            TextActionDes.Text = getInfo("SELECT action_description FROM Orders WHERE id =" + i);
            TextOrderDes.Text = getInfo("SELECT order_description FROM Orders WHERE id =" + i);
            TextFName.Text = getInfo("SELECT first_name FROM Orders WHERE id =" + i);
            TextLName.Text = getInfo("SELECT last_name FROM Orders WHERE id =" + i);
            TextCName.Text = getInfo("SELECT company_name FROM Orders WHERE id =" + i);
            TextEmail.Text = getInfo("SELECT email FROM Orders WHERE id = " + i);
            TextPhone.Text = getInfo("SELECT phone_number FROM Orders WHERE id = " + i);
            TextSFN.Text = getInfo("SELECT address.first_name FROM Orders INNER JOIN address ON shipping_address_id=address.id WHERE Orders.id =" + i);
            TextSLN.Text = getInfo("SELECT address.last_name FROM Orders INNER JOIN address ON shipping_address_id=address.id WHERE Orders.id =" + i);
            TextSPN.Text = getInfo("SELECT address.phone_number FROM Orders INNER JOIN address ON shipping_address_id=address.id WHERE Orders.id =" + i);
            TextSA1.Text = getInfo("SELECT address_1 FROM Orders INNER JOIN address ON shipping_address_id=address.id WHERE Orders.id =" + i);
            TextSA2.Text = getInfo("SELECT address_2 FROM Orders INNER JOIN address ON shipping_address_id=address.id WHERE Orders.id = " + i);
            TextSCoun.Text = getInfo("SELECT address.country FROM Orders INNER JOIN address ON shipping_address_id=address.id WHERE Orders.id =" + i);
            TextSState.Text = getInfo("SELECT address.state FROM Orders INNER JOIN address ON shipping_address_id=address.id WHERE Orders.id =" + i);
            TextSCity.Text = getInfo("SELECT address.city FROM Orders INNER JOIN address ON shipping_address_id=address.id WHERE Orders.id =" + i);
            TextSPost.Text = getInfo("SELECT address.postcode FROM Orders INNER JOIN address ON shipping_address_id=address.id WHERE Orders.id =" + i);
            TextBFN.Text = getInfo("SELECT address.first_name FROM Orders INNER JOIN address ON billing_address_id=address.id WHERE Orders.id = " + i);
            TextBLN.Text = getInfo("SELECT address.last_name FROM Orders INNER JOIN address ON billing_address_id=address.id WHERE Orders.id = " + i);
            TextBPN.Text = getInfo("SELECT address.phone_number FROM Orders INNER JOIN address ON billing_address_id=address.id WHERE Orders.id =" + i);
            TextBA1.Text = getInfo("SELECT address_1 FROM Orders INNER JOIN address ON billing_address_id=address.id WHERE Orders.id =" + i);
            TextBA2.Text = getInfo("SELECT address_2 FROM Orders INNER JOIN address ON billing_address_id=address.id WHERE Orders.id =" + i);
            TextBCoun.Text = getInfo("SELECT address.country FROM Orders INNER JOIN address ON billing_address_id=address.id WHERE Orders.id =" + i);
            TextBState.Text = getInfo("SELECT address.state FROM Orders INNER JOIN address ON billing_address_id=address.id WHERE Orders.id =" + i);
            TextBCity.Text = getInfo("SELECT address.city FROM Orders INNER JOIN address ON billing_address_id=address.id WHERE Orders.id = " + i);
            TextBPost.Text = getInfo("SELECT address.postcode FROM Orders INNER JOIN address ON billing_address_id=address.id WHERE Orders.id =" + i);
            LabelTime.Text = getInfo("SELECT order_date FROM Orders WHERE id = " + i);

            String strAct = getInfo("SELECT action_required FROM Orders WHERE id =" + i);
            String strUrg = getInfo("SELECT urgent FROM Orders WHERE id = " + i);
            String strStatus = getInfo("SELECT o_status FROM Orders WHERE id =" + i);
            String strPay = getInfo("SELECT payment_status FROM Orders WHERE id = " + i);

            DropDownActionReq.SelectedValue = strAct;
            DropDownUrgent.SelectedValue = strUrg;
            DropDownStatus.SelectedValue = strStatus;
            DropDownPayStatus.SelectedValue = strPay;

        }

        //An SQL executer as a help function
        String getInfo(String query)
        {
            
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand(query,con))
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

        //help function, common part to update information in any kind of update button
        void buttonUp(String query)
        {
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand(query, con))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        con.Open();
                        cmd.Connection = con;
                        cmd.ExecuteNonQuery();
                        con.Close();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
                    }
                }
            }
        }

        protected void ButtonCommitCustomerInfo_Click(object sender, EventArgs e)
        {

            String q = "UPDATE orders SET first_name = '" + TextFName.Text + "', last_name = '" + TextLName.Text + "', company_name = '" + TextCName.Text + "', email = '" + TextEmail.Text + "', phone_number = '" + TextPhone.Text + "' WHERE orders.id = " + Convert.ToInt32(LabelOID.Text);
            buttonUp(q);
        }

        protected void ButtonCommitOrderInfo_Click(object sender, EventArgs e)
        {
            //if TextPriority.Text
            String q = "UPDATE orders SET action_required = '" + DropDownActionReq.SelectedValue + "', urgent = '" + DropDownUrgent.SelectedValue + "', o_priority = " + Convert.ToInt32(TextPriority.Text) + ", o_status = '" + DropDownStatus.SelectedValue + "', action_description = '" + TextActionDes.Text + "', payment_status = '" + DropDownPayStatus.SelectedValue + "', cost = " + Convert.ToDouble(TextCost.Text) + " , tracking_number = '" + TextTrackNum.Text + "', order_description = '"+ TextOrderDes.Text +"' WHERE orders.id =" + Convert.ToInt32(LabelOID.Text);
            
            buttonUp(q);
        }

        protected void ButtonCommitShipAddr_Click(object sender, EventArgs e)
        {
            String s = getInfo("SELECT id FROM address ORDER BY id DESC LIMIT 1");
            int new_id = Convert.ToInt32(s)+1;
            String q = "INSERT INTO address (id, first_name, last_name, phone_number, address_1, address_2, country, state, city, postcode) VALUES ("+ new_id +",'"+ TextSFN.Text + "', '" + TextSLN.Text + "', '" + TextSPN.Text + "', '" + TextSA1.Text + "', '" + TextSA2.Text + "','" + TextSCoun.Text + "','" + TextSState.Text + "','" + TextSCity.Text + "','" + TextSPost.Text + "')";
            buttonUp(q);
            q = "UPDATE orders SET shipping_address_id = " + new_id + " WHERE orders.id = " + Convert.ToInt32(LabelOID.Text);
            buttonUp(q);
        }
        protected void ButtonCommitBillAddr_Click(object sender, EventArgs e)
        {
            String s = getInfo("SELECT id FROM address ORDER BY id DESC LIMIT 1");
            int new_id = Convert.ToInt32(s) + 1;
            String q = "INSERT INTO address (id, first_name, last_name, phone_number, address_1, address_2, country, state, city, postcode) VALUES (" + new_id + ",'" + TextSFN.Text + "', '" + TextSLN.Text + "', '" + TextSPN.Text + "', '" + TextSA1.Text + "', '" + TextSA2.Text + "','" + TextSCoun.Text + "','" + TextSState.Text + "','" + TextSCity.Text + "','" + TextSPost.Text + "')";
            buttonUp(q);
            q = "UPDATE orders SET billing_address_id = " + new_id + " WHERE orders.id = " + Convert.ToInt32(LabelOID.Text);
            buttonUp(q);
        }

        //back to home WITHOUT saving any changes on the current page!
        protected void ButtonHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        //use RowDataBound to react to mouse click and jump to the Part page
        protected void gridview1_RowDataBound(object sender, GridViewRowEventArgs e)

        {
            e.Row.Cells[0].Visible = false;
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                e.Row.Attributes.Add("onmouseover", "c=style.backgroundColor;style.backgroundColor='#d4e4fc'");
                e.Row.Attributes.Add("onmouseout", "style.backgroundColor=c");
                string PId = e.Row.Cells[0].Text;
                e.Row.Attributes.Add("ondblclick", "location.href='Part.aspx?PId=" + PId + "'");
                e.Row.Attributes["style"] = "Cursor:hand";
            }


        }
    }
}