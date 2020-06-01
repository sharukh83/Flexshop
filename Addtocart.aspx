<%@ Page Language="C#" CodeFile="Addtocart.aspx.cs" Inherits="Addtocart"    EnableEventValidation="False" ValidateRequest="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <link rel="stylesheet" href="footers.css" />
    <link rel="shortcut icon" href="images.png" />
    <title>Products Page</title>
    <style type="text/css">
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: 1px;
            width: 100%;
            height: 197px;
            transition:0.3s;

        }
        .auto-style1:hover{
            opacity:0.7;
            
        }
        .auto-style2:hover{
            color:blue;
            opacity:0.7;
        }
        #Label4{
          justify-content:center;
        }
        .auto-style2 {
            height: 23px;
            text-align: center;
        }
        .auto-style3 {
            
            height: 37px;
            text-align: center;
            }
        #DataList1{
            box-sizing:border-box;
            padding:5px;
        }
        #Button1{
           
            width:100px;
            height:100px;
            position:center;
        }
        .shop{
            width:100px;
            height:30px;
            color:black;
            background-color:orange;
            
        }
        
      
            #GridView1{
                width:500px;
                background-size:cover;
            }
           
* {
  box-sizing: border-box;
  }

body {
  font-family: Arial;
  padding: 10px;
  background: #f1f1f1;
}


.header {
  padding: 10px;
  width:100%;
  text-align: center;
  background: white;
  background-image: url("images/e-commerce-integration-header-image.png" ) ;
  background-repeat:no-repeat;
  background-attachment: inherit;
  background-color:#16bdc8;
 background-size: cover;
 cursor:pointer;
 margin-left:2px;
 border-top-right-radius:20px;
 border-top-left-radius:20px;
 transition:0.3s;
 }
.header h1{
  font-size: 50px;
  color:#ffd800;
  top:auto;
 
}
.header:hover{
    opacity:0.7;
}
.topnav {
  overflow:auto;
  margin-left:4px;
  background-color: #333;
}


.topnav a {
  float: left;
 font-size: 16px;
 background-color:#333;
 color:white;
  text-align:inherit;
  padding: 14px 16px;
  text-decoration: none;
}
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.dropdown{
    float:left;
    overflow:hidden;
}
.dropbtn:hover{
     background-color: #ddd;
  color: black;
}
.dropdown, .dropbtn{
    font-size:16px;
    border:none;
    outline:none;
    color:white;
    padding: 14px 16px;
    background-color:inherit;
    font-family:inherit;
    margin:0;
}
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropdown-content a {
  float: none;
  color:black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
.dropdown-content a:hover {
  background: #19c589;
}
.dropdown:hover .dropdown-content {
  display: block;
}
.tops{
    margin-top:13px;
}
.fa-cart-plus{
    font-size:x-large;
}
#DataList1{
    width:300px;
    cursor:pointer;
    
}  
#Button2{
    cursor:pointer;
} 
#Button2:hover{
    background-color:blue;
    border-color:black;
    
}
::placeholder{
    text-align:center;
    font-size:larger;
    
}
#TextBox1:hover{
    color:rgba(0, 255, 144, 0.51);
 
}
.weather{
     font-family:futura;
     font-style:italic;
     font-size:45px;
     font-weight:bold;
     -webkit-animation:colorchange 10s infinite alternate;

 }

@-webkit-keyframes colorchange {
    0% {
        color: #ff6347;
    }

    10% {
        color: deepskyblue;
    }

    20% {
        color: mediumblue;
    }

    30% {
        color: mediumspringgreen;
    }

    40% {
        color: orange;
    }

    50% {
        color: rgba(59, 47, 217, 0.63);
    }

    60% {
        color: indianred;
    }

    70% {
        color: brown;
    }

    80% {
        color: peru;
    }

    90% {
        color: deeppink;
    }

    100% {
        color: rgba(59, 47, 217, 0.63);
    }
}
#LinkButton2{
    margin-left:200px;
    text-decoration:underline;
}
 
 .mad a{
     
 }
 .sad a{
     margin-right:5px;

 }
    </style>
</head>
<body>
     <form id="form1" runat="server">
    <div class="header" >
 <marquee><h1 class="weather">FlexShop.Com</h1></marquee>
</div>

<div class="topnav">

<a href="Default.aspx"><p><i class="fa fa-home"></i> Home</p></a>

<div class="dropdown">
  <button  class="dropbtn">  Brands  </button>   
</div>


  <div class="tops">  
     <a href="About.aspx"><i class="fa fa-location-arrow"></i> About Us</a>
 </div>

  <div class="tops">
      <a href="Feedback.aspx"><i class="fa fa-comment"></i>  Feedback</a>
  </div>

    <div class="mad">
      <a><asp:Label ID="Label2" runat="server" Text=""    style="color: #CC0000 ; margin-left:150px;"></asp:Label></a>
   </div>

 <div class="sad">
     <asp:LinkButton ID="LinkButton2"  runat="server" Text="Logout" ForeColor="lightblue"   Font="underline" OnClick="LinkButton2_Click" float="right"></asp:LinkButton>
 </div>
    <a href="Add2shop.aspx" style="float:right"  class="cart" ><i class="fa fa-cart-plus"> <asp:Label ID="Label3" runat="server" text="" style="color: #CC0000"></asp:Label></i> </a>
  <a href="login.aspx" style="float:right" class="man">Login  &<br />SignUp </a>
</div>
    

        <div class="mads"  runat="server" style="margin-top:20px; margin-right:30px; font-style:italic; ">
            <asp:LinkButton ID="LinkButton1" Text="View All products" runat="server"  Font-Underline="true"   ForeColor="Blue"  OnClick="LinkButton1_Click"></asp:LinkButton>
             <asp:Button ID="Button2" runat="server"   style="float:right; border-radius:10%;  border-color:rgba(19, 175, 217, 0.59);  width:85px; height:40px;" Text="Click Here" OnClick="Button2_Click" ></asp:Button>
        <asp:TextBox ID="TextBox1"  runat="server" placeholder="Search Products" style="float:right; width:1000px; background-color:rgba(221, 221, 221, 0.88); border-color:#13eaaf; margin-bottom:15px; height:40px; margin-right:5px; border-radius:25px;" ></asp:TextBox>
       
    </div>
    <div>
    
        
        
        
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="#9D9D9D"  DataSourceID="SqlDataSource1" ForeColor="Black"  Width="1300px" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" style="text-align: center">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" BorderStyle="Solid" />
            <ItemStyle BackColor="White" />
            <ItemTemplate>
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label4" runat="server" style="text-align: center" Text="Product ID"></asp:Label>
                            &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("ProductID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' />
                        </td>
                    </tr>
                    <tr>
                       
                            
                       
                        <td class="auto-style2">&nbsp;
                           

                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style3"><i style=" font:bold">Price :-</i>
                            &nbsp;<asp:Label ID="Label7" runat="server" ForeColor="Red"  Text='<%# Eval("price") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity
                            <asp:DropDownList ID="DropDownList1" ForeColor="red"  runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;">
                            <asp:Button ID="Button1" runat="server" style="background-color:orange; width:100px; height:30px; margin-top:30px; display:inline-table"  CommandArgument='<%# Eval("ProductID")%>'  CommandName="addtocart" Text="Add to Cart"  />
                          
                        </td>
                       
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mmkConnectionString %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
    

        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mmkConnectionString %>" SelectCommand="SELECT * FROM [products] WHERE ([Keysearch] LIKE '%' + @Keysearch + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Keysearch" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    

       <div class="cb-footer cb-col-100 cb-col " style="cursor:pointer; width:100%;">
        <div class="cb-ftr-cntrn">
            <div class="cb-col-25 cb-col">
                <div class="text-left cb-font-16  text-bold" style="margin-left:18px; margin-bottom:20px;">ABOUT</div>
                <ul class="cb-ftr-ul">
                    <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Stories</span>
                    </li>
                    <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Contact Us</span>
                    </li>
                     <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Press</span>
                    </li>
                     <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">FAQ</span>
                    </li>
                </ul>
            </div>

             <div class="cb-col-25 cb-col" style="margin-left:250px">
                <div class="text-left cb-font-16  text-bold" style="margin-left:15px; margin-bottom:20px;">HELP</div>
                <ul class="cb-ftr-ul">
                    <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Payment</span>
                    </li>
                    <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Shipping</span>
                    </li>
                     <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Cancellation & Return</span>
                    </li>
                     <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Report Infringment</span>
                    </li>
                </ul>
            </div>

            <div class="cb-col-25 cb-col" style="margin-left:250px">
                <div class="text-left cb-font-16  text-bold" style="margin-left:15px; margin-bottom:20px;">Social</div>
                <ul class="cb-ftr-ul">
                    <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Facebook</span>
                    </li>
                    <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Twitter</span>
                    </li>
                     <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Instagram</span>
                    </li>
                     <li class="cb-ftr-lst"><a href="#" class="text-white"></a>
                        <span class="shops">Linkln</span>
                    </li>
                </ul>
            </div>

        </div>


    <div class="mos" style="float:right; margin-top:125px; cursor:pointer">
        <i class="fa fa-facebook-official w3-hover-opacity w3-large" style="color:blue"></i>
        <i class="fa fa-instagram w3-hover-opacity w3-large" style="color:rgba(194, 18, 99, 0.92);"></i>
        <i class="fa fa-snapchat w3-hover-opacity w3-large" style="color:#147186"></i>
        <i class="fa fa-pinterest-p w3-hover-opacity w3-large" style="color:#1cccd8"></i>
        <i class="fa fa-twitter w3-hover-opacity w3-large"  style="color:rgba(13, 120, 113, 0.77);"></i>
        <i class="fa fa-linkedin w3-hover-opacity w3-large " style="color:rgba(59, 47, 217, 0.63);"></i>
     </div>
        </div>
    </div>
    </form>
</body>
</html>
