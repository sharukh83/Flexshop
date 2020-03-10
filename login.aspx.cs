using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void button_Click(object sender, EventArgs e)
    {
        string strcon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
        SqlConnection scon = new SqlConnection(strcon);
        String myquery = "select * from Detailsdata where UserName='" + text.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String uname;
        String pass;


        if (ds.Tables[0].Rows.Count > 0)
        {
            uname = ds.Tables[0].Rows[0]["UserName"].ToString();
            pass = ds.Tables[0].Rows[0]["PassWord"].ToString();

            scon.Close();
            if (uname == text.Text && pass == password.Text)
            {
                Session["UserName"] = uname;
                Session["buyitems"] = null;
                fillsavedCart();
                Response.Redirect("Addtocart.aspx");
            }

          ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Succesful')", true);
           
        }
        else
        {
            
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Unsuccessful')", true);
        }

    }
    private void fillsavedCart()
    {
        DataTable dt = new DataTable();
        DataRow dr;
        dt.Columns.Add("sno");
        dt.Columns.Add("productid");
        dt.Columns.Add("productname");
        dt.Columns.Add("quantity");
        dt.Columns.Add("price");
        dt.Columns.Add("totalprice");
        dt.Columns.Add("productimage");

        String mycon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from SavedCartDetail where username='" + Session["UserName"].ToString() + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            int i = 0;
            int counter = ds.Tables[0].Rows.Count;
            while (i < counter)
            {
                dr = dt.NewRow();
                dr["sno"] = i + 1;
                dr["productid"] = ds.Tables[0].Rows[i]["productid"].ToString();
                dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
                dr["productimage"] = ds.Tables[0].Rows[i]["productimage"].ToString();
                dr["quantity"] = "1";
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                int price1 = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
                int quantity1 = Convert.ToInt32(ds.Tables[0].Rows[i]["quantity"].ToString());
                int totalprice1 = price1 * quantity1;
                dr["totalprice"] = totalprice1;
                dt.Rows.Add(dr);
                i = i + 1;
            }

        }
        else
        {
            Session["buyitems"] = null;
        }
        Session["buyitems"] = dt;
    }
}