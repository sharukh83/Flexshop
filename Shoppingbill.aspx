<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shoppingbill.aspx.cs" Inherits="Shoppingbill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    <link rel="shortcut icon" href="images.png" /><title>ShoppingBill page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="footers.css" />
    <style>
        * {
            box-sizing: border-box;
            
        }

   body {
  font-family: Arial;
  padding: 10px;
  background: #f1f1f1;
            height: 235px;
            
        }


.header {
  padding: 5px;
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
    padding: 8px 8px;
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
        .auto-style1 {
            width: 100%;
            height: 42%;
        }
        .auto-style2 {
            height: 86px;
        }
        .auto-style3 {
            width: 100%;
            height: 114px;
        }
        .auto-style4 {
            width: 298px;
        }
        .auto-style5 {
           
        }
        .auto-style6 {
            color: #FF3300;
            text-decoration: underline;
        }
        .auto-style7 {
            color: #FF0000;
        }
        strong{
            text-align:left;
            float:left;
        }
        .dropdowns{
           
        }
        .auto-style8 {
            height: 134px;
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
     border-color:black;
     border:solid 0px black;

 }
 .cats a{
                margin-left:35px;
                margin-top:28px;
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
#form1{
    background-color:white;
}
        .auto-style9 {
            width: 179px;
        }
        </style>
    <script type="text/javascript">
        window.open('Shoppingbill.aspx','PrintMe','height=300px, width=300px, scrollbars=1');
    </script>

    
</head>
<body>
    <div class="header">
 <marquee><h1 class="weather">FlexShop.Com</h1></marquee>
</div>

<div class="topnav">
    <div class="dropdown">
<a href="Default.aspx"><p><i class="fa fa-home"></i> Home</p></a></div>
<div class="dropdown">
  <button  class="dropbtn" style="margin-top:9px;"><a href="Addtocart.aspx">  Brands </a></button>

</div>

 
        <div class="tops">  
       <a href="About.aspx"><i class="fa fa-location-arrow"></i> About Us</a>
       </div>
    <div class="tops">
                    <a href="Feedback.aspx"><i class="fa fa-comment"></i>  Feedback</a>
                </div>

      <a><asp:Label ID="Label1" runat="server" Text=""    style="color:#e00606; margin-left:150px;"></asp:Label></a>
   
        <asp:LinkButton ID="LinkButton2" runat="server" Text="Logout" ForeColor="lightblue"  Font="underline"  OnClick="LinkButton2_Click" float="right" ></asp:LinkButton>
 
    <a href="Add2shop.aspx" style="float:right"  class="cart" ><i class="fa fa-cart-plus "> <asp:Label ID="Label2" runat="server" Text="Cart" style="color: #CC0000"></asp:Label></i> </a>
  <a href="login.aspx" style="float:right" class="man">Login  &<br />SignUp </a>
</div>
    <br />
    
    <form id="form1" runat="server">

    <div>
      
        <table class="auto-style1">
            <tr>
                <td>Order ID:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" style="color: #FF0000"></asp:Label>
                    <br />

                    <br />
               <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" style="background-color: #FF6600" Text="Download Invoice " Width="137px" BorderColor="Black" />
                  
                    <input type ="button"  onclick=" window.print()"   value="Print" style="background-color:#ff6600; cursor:pointer; width:137px; height:31px; margin:20px; border-color:black" /
                  
                  

             
         
        
    
  
        <br /
        <br />
        <div>

            <asp:Panel ID="Panel1" runat="server" Height="392px">
                <table class="auto-style1" border="1">
                    <tr>
                        <td style="text-align: center"><span class="auto-style6" style="font-size: xx-large"><strong    style="font-style: italic; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: xx-large; color: #FF3300;">FlexShop</strong></span><br class="auto-style5" />
                            <br class="auto-style5" />
                            <span class="auto-style7" style="font-size: x-large; text-transform: capitalize; font-style: italic; font-family: Arial, Helvetica, sans-serif; text-decoration: underline; font-weight: 700;">Retail Invoice<br />
                            <br />
                            </span></td>
                    </tr>
                    <tr>
                      
                       
                        <td class="auto-style2">Cust Name:&nbsp;
                            <asp:Label ID="Label9" runat="server" Text="" style="color: #FF0000"></asp:Label>
                            <br />
                            <br />
                            Order No:&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" style="color: #FF0000"></asp:Label>
                            <br />
                            <br />
                            Order Date:&nbsp;
                            <asp:Label ID="Label5" runat="server" style="color: #FF0000"></asp:Label>
                            <br />
                            <br />
                            
                        </td>
                          
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style3" border="1">
                                <tr>
                                    <td class="auto-style4">Buyer Address:-<br />
                                        <asp:Label ID="Label6" runat="server" style="color: #FF0000"></asp:Label>
                                    </td>
                                    <td class="auto-style9">&nbsp;Seller Address:-<br />
                                        <span class="auto-style7">sion, mumbai:400017</span><br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:GridView ID="GridView1"  runat="server" Height="93px" Width="840px" AutoGenerateColumns="False" style="color: #000000">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="SNo">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Productid" HeaderText="Product ID">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productname" HeaderText="Product Name">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="price" HeaderText="Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>Grand Total:-
                            <asp:Label ID="Label8" forecolor="Red" runat="server"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>Declaration: we declare that this invoice shows actual price of the goods described inclusive of taxes and that all particular are true and correct incase you find selling price on this invoice to be more MRP mentioned on product .<br /> please Inform <span class="auto-style5"><a href="mailto:srk86086@gmail.com">srk86086@gmail.com</a>.<br />
                            <br />
                            
                            </span>
                             THIS IS COMPUTER GENERATED INVOICE AND DOES NOT REQUIRED SIGNATURE.

                        </td>
                       
                    </tr>
                </table>
            </asp:Panel>
        </div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
                    <br />
        <br />
                    <br />
        <br />

        <div class="cb-footer cb-col-100 cb-col "  style="cursor:pointer; width:100%">
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
