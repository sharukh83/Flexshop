﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;




public partial class Shoppingbill : System.Web.UI.Page
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
        Label9.Text = Session["username"].ToString();
        Label3.Text = Request.QueryString["orderid"];
        Label4.Text = Label3.Text;
        findorderdate(Label4.Text);
        findaddress(Label4.Text);
        showgrid(Label4.Text);
       

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["buyitems"] = null;
        exportpdf();
       
    }
    private void exportpdf()
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        Panel1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 15f, 15f, 100f, 0f);
     
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        
        Response.End();

    }
    private void findorderdate(String Orderid)
    {
        String mycon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
        String myquery = "Select * from OrderDetails where orderid='" + Orderid + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            Label5.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();

        }

        con.Close();
    }
    private void findaddress(String Orderid)
    {
        String mycon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
        String myquery = "Select * from OrderAddress where orderid='" + Orderid + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            Label6.Text = ds.Tables[0].Rows[0]["address"].ToString();

        }

        con.Close();
    }
       private void showgrid(String orderid)
    {
        DataTable dt = new DataTable();
        DataRow dr;

        dt.Columns.Add("sno");
        dt.Columns.Add("productid");
        dt.Columns.Add("productname");
        dt.Columns.Add("quantity");
        dt.Columns.Add("price");
        dt.Columns.Add("totalprice");
        String mycon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from orderdetails where orderid='" + orderid + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        int totalrows = ds.Tables[0].Rows.Count;
        int i = 0;
        int grandtotal = 0;
        while (i < totalrows)
        {
            dr = dt.NewRow();
            dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
            dr["productid"] = ds.Tables[0].Rows[i]["productid"].ToString();
            dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
            dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
            dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
            int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
            int quantity = Convert.ToInt32(ds.Tables[0].Rows[i]["quantity"].ToString());
            int totalprice = price * quantity;
            dr["totalprice"] = totalprice;
            grandtotal = grandtotal + totalprice;
            dt.Rows.Add(dr);
            i = i + 1;
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();

        Label8.Text = grandtotal.ToString();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}