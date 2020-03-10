using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Addtocart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == null)
        {
            Label2.Text = "Welcome Guest,";
            LinkButton2.Visible = true;
            LinkButton1.Visible = false;
        }
        else
        {
            Label2.Text = "Welcome " + Session["username"].ToString();
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;

        }


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

            if (Request.QueryString["mat"] !=null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }

        }
    
    
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
       
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                  
        
            Response.Redirect("Add2shop.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
    }





    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource2;
            DataList1.DataBind();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = null;
        DataList1.DataSource = SqlDataSource1;
        DataList1.DataBind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");

    }
}
    

    
   