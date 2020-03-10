using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string strcon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand com = new SqlCommand(@"insert into Detailsdata (Email, UserName, PassWord,MobileNo) values(@Email, @UserName, @PassWord, @MobileNo)", con);
        
        SqlParameter p1 = new SqlParameter("Email", text.Text);
        SqlParameter p2 = new SqlParameter("UserName", texts.Text);
        SqlParameter p3 = new SqlParameter("PassWord", password.Text);
        SqlParameter p4 = new SqlParameter("MobileNo", passwords.Text);
        com.Parameters.Add(p1);
        com.Parameters.Add(p2);
        com.Parameters.Add(p3);
        com.Parameters.Add(p4);
        con.Open();
       
        com.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Register Succesful')", true);
        con.Close();
       
        if (IsPostBack)
        {
            text.Text = "";
            texts.Text = "";
            password.Text = "";
            passwords.Text = "";
            
           
           
        }
        
    }
}