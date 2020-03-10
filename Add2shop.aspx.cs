using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Add2shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Label1.Text = "Welcome  " + Session["username"].ToString();
            
            LinkButton2.Visible = true;

        }
       
        if (!Page.IsPostBack)
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


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from products where productid =" + Request.QueryString["id"];
                  
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["productid"]     = ds.Tables[0].Rows[0]["productid"].ToString();
                    dr["Productimage"]  = ds.Tables[0].Rows[0]["Productimage"].ToString();
                    dr["productname"]   = ds.Tables[0].Rows[0]["productname"].ToString();
                    dr["price"]         = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["quantity"]      = Request.QueryString["quantity"];
                
                    decimal price       = Convert.ToDecimal(ds.Tables[0].Rows[0]["Price"].ToString());
                    int quantity        = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                    int totalprice      = (int)price * quantity;
                    dr["totalprice"]    = totalprice;
                    savecartdetail(1, ds.Tables[0].Rows[0]["productid"].ToString(), ds.Tables[0].Rows[0]["productname"].ToString(), ds.Tables[0].Rows[0]["productimage"].ToString(), "1", ds.Tables[0].Rows[0]["price"].ToString(), totalprice.ToString());


                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();


                 
                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "  Total Amount    ";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("Add2shop.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from products where ProductID =" + Request.QueryString["id"] ;
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"]           = sr + 1;
                    dr["productid"]     = ds.Tables[0].Rows[0]["productid"].ToString();
                    dr["productname"]   = ds.Tables[0].Rows[0]["productname"].ToString();
                    dr["Productimage"]  = ds.Tables[0].Rows[0]["Productimage"].ToString();
                    dr["quantity"]      = Request.QueryString["quantity"];
                    dr["price"]         = ds.Tables[0].Rows[0]["price"].ToString();
                  
                    decimal price       = Convert.ToDecimal(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity        = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                    int totalprice      = (int)price * quantity;
                    dr["totalprice"]    = totalprice;
                    savecartdetail(1, ds.Tables[0].Rows[0]["productid"].ToString(), ds.Tables[0].Rows[0]["productname"].ToString(), ds.Tables[0].Rows[0]["productimage"].ToString(), "1", ds.Tables[0].Rows[0]["price"].ToString(), totalprice.ToString());
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                 
                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "  Total Amount    ";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("Add2shop.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount   ";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }


            }
            Label2.Text = GridView1.Rows.Count.ToString();

        }


    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();

                break;

            }
        }

        for (int i = 2; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }
        Session["buyitems"] = dt;
        clearsavedcart();

        Session["buyitems"] = dt;
        Response.Redirect("Add2shop.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("EditOrder.aspx?sno=" + GridView1.SelectedRow.Cells[0].Text);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        clearsaved();
        
        Response.Redirect("Paymentpage.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    private void savecartdetail(int sno, String productid, String Productname, String productimage, String quantity, String price, String totalprice)
    {
        String query = "insert into SavedCartDetail(sno,productid,Productname,Productimage,quantity,price,totalprice,username) values(" + sno + ",'" + productid + "','" + Productname + "','" + productimage + "','" + quantity + "','" + price + "','" + totalprice + "','" + Session["username"].ToString() + "')";
        String mycon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }

    private void clearsavedcart()
    {
        String mycon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";

        String updatedata = "delete from SavedCartDetail where username='" + Session["username"].ToString() + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Redirect("Addtocart.aspx");
    }
    private void clearsaved()
    {
        String mycon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
        

        String updatedata = "delete from SavedCartDetail ";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
       
    }
}
