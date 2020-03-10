using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Paymentpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pay.Text = "None";
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        if (dt != null)
        {

            Label3.Text = dt.Rows.Count.ToString();
        }
        else
        {
            Label3.Text = "0";

        }
       
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        var message = "";
        if (CheckBox1.Checked)
        {
            message = CheckBox1.Text + "";
        }
        if (CheckBox2.Checked)
        {
            message += CheckBox2.Text + "";
        }
        if (CheckBox3.Checked)
        {
            message += CheckBox3.Text + "";
        }
        pay.Text = message;
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("PlaceOrder.aspx");
    }
}