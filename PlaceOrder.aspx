<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<!DOCTYPE html>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <link rel="stylesheet" href="footers.css" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="images.png" />
    <title>order page</title>
    <style>
        * {
  box-sizing: border-box;
  }

body {
    border-color:aliceblue;
  font-family: Arial;
  padding: 10px;
  background: #f1f1f1;
}


.header {
  padding: 10px;
  width:100%;
  text-align: center;
  background: white;
  background-image: url("images/e-commerce-integration-header-image.png") ;
  background-repeat:no-repeat;
  background-attachment: inherit;
  background-color:#16bdc8;
 background-size: cover;
  border-top-left-radius:20PX;
 border-top-right-radius:20PX;
 margin-left:2px;
 cursor:pointer;
 transition:0.3s;
 }
.header h1{
  font-size: 50px;
  color:#ffd800;
  top:auto;
 
}
 .cats a{
                margin-left:35px;
                margin-top:28px;
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
  color: white;
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
    margin-top:27px;
}
.fa-cart-plus{
    font-size:x-large;
}
        .auto-style2 {
            width: 76%;
            height: 133px;
        }
        .auto-style3 {
            height: 68px;
        }
        .auto-style4 {
            height: 68px;
            width: 239px;
            font:bold;
        }
        .auto-style5 {
            width: 239px;
            font:bold;
        }
        .auto-style6 {
            width: 100%;
            height: 149px;
        }
        .auto-style7 {
            height: 80%;
        }
        .auto-style8 {
            height: 71px;
            width: 352px;
            font:bold;
        }
        .auto-style9 {
            width: 352px;
            font:bold;
        }
        .foot{
            text-align:center;
        }
        #Button1{
            cursor:pointer;
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
    </style>
    
    
</head>
<body>
    <div class="header">
 <marquee><h1 class="weather">FlexShop.Com</h1></marquee>
</div>
<form id="form1" runat="server">
<div class="topnav">
    <div class="dropdown">
<a href="Default.aspx"><p><i class="fa fa-home"></i> Home</p></a></div>
<div class="dropdown">
  <button  class="dropbtn"><a href="Addtocart.aspx">  Brands  </a> </button>
    
</div>

 
      <div class="tops">  
       <a href="About.aspx"><i class="fa fa-location-arrow"></i> About Us</a>
       </div>
   
    <div class="tops">
             <a href="Feedback.aspx"><i class="fa fa-comment"></i>  Feedback</a>
          </div>

    <a href="Addtocart.aspx" style="float:right"  class="cart" ><i class="fa fa-cart-plus"> <asp:Label ID="Label2" runat="server" Text="" style="color: #CC0000"></asp:Label></i> </a>
  <a href="login.aspx" style="float:right" class="man">Login  &<br />SignUp </a>
</div>
    
    <div>
    
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">Order ID :- </td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" ClientIDMode="Static" style="color: #FF0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Order Date :- </td>
                <td>
                    <asp:Label ID="Label4" runat="server" style="color: #FF0000"></asp:Label>
                </td>
                 
            </tr>
        </table>
    
    </div>
        <div runat="server">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" GridLines="Horizontal" Height="342px" Width="1315px" ShowFooter="True" HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="S No" >
                        <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                    <asp:BoundField DataField="productid" HeaderText="Product ID" >
                        <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                    <asp:BoundField DataField="productname" HeaderText="Product Name" >
                        <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                    <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="price" HeaderText="Price" >
                        <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" >
                        <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                    <asp:BoundField DataField="totalprice" HeaderText="Total Price" >
                        <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" ControlStyle-ForeColor="#0066FF" ControlStyle-Font-Underline="true" />
                </Columns>
                <FooterStyle CssClass="foot" Font-Bold="True" />
                <HeaderStyle Height="40px" />
            </asp:GridView>

        </div>


        <div>

            <table border="1" class="auto-style6">
                <tr>
                    <td class="auto-style8">Type your Address :-</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox1" runat="server" Height="48px" placeholder="Enter your Address" TextMode="MultiLine" Width="259px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Mobile Number :-</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your Mobile NO" Height="36px" Width="264px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" BackColor="Orange" Text="Place Order" Width="132px" />
            <br />

        </div>

        <div class="cb-footer cb-col-100 cb-col " style="cursor:pointer; width:100%">
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
    
    </form>
</body>
</html>
