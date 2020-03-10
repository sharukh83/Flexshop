using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections.Specialized;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
         string strcon = @"Data Source=DESKTOP-QDN2ODB\SQLEXPRESS;Initial Catalog=mmk;Integrated Security=True";
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand com = new SqlCommand(@"insert into feedback (Name, Emailid, Mobileno, Message) values(@Name, @Emailid, @Mobileno, @Message)", con);
        
        SqlParameter p1 = new SqlParameter("Name", TextBox1.Text);
        SqlParameter p2 = new SqlParameter("Emailid", TextBox2.Text);
        SqlParameter p3 = new SqlParameter("Mobileno",TextBox3.Text);
        SqlParameter p4 = new SqlParameter("Message", TextBox4.Text);
        com.Parameters.Add(p1);
        com.Parameters.Add(p2);
        com.Parameters.Add(p3);
        com.Parameters.Add(p4);
        con.Open();
       
        com.ExecuteNonQuery();
       ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thank you for your valuable Meassage')", true);
        con.Close();

        if (IsPostBack)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";


        }
           
    }
}