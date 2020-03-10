<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Paymentpage.aspx.cs" Inherits="Paymentpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <link rel="stylesheet" href="footers.css" />
    <link rel="shortcut icon" href="images.png" />
    <title> Payment Method</title>
    <style>
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
  color: #f2f2f2;
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
        .auto-style2 {
            width: 100%;
            margin-left:480px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #FF0000;
            background-color:#f9f9f9;
        }
      .check:hover{
          color:#000000;
      }
       #Label5:hover{
          color:#000000;
      }
        #Label6:hover{
          color:#000000;
      }
        .title{
            font-size:45px;
           font-style:italic;
           color:red;
           font-weight:bold;
          text-align:center;
          
         
        }
        #Button1, Button2{
            margin-left:480px;
        }
        .pay{
            margin-left:480px;
            margin-top:50px;
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
      
 
    <a href="Add2shop.aspx" style="float:right"  class="cart" ><i class="fa fa-cart-plus"> <asp:Label ID="Label3" runat="server" text="" style="color: #CC0000"></asp:Label></i> </a>
  <a href="login.aspx" style="float:right" class="man">Login  &<br />SignUp </a>

    </div>
        <div class="auto-style3" style="font-family: Arial, Helvetica, sans-serif; font-size:xx-large; font-weight: bold; font-style: italic; text-transform: none; background-color:white; text-align:center;">
             <span class="auto-style4"><strong class="title" ><em style="text-decoration: underline">Payment Methods</em></strong></span>
        </div>
        <br />
        <div style="background-color:white;">

            <table class="auto-style2" >
                <tr>
                      <td>
                        <asp:CheckBox ID="CheckBox1" runat="server"  Text="Debit Card" Font-Bold="True" Font-Italic="True" Font-Size="Large" />
                    
                  
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                     <td>
                        <asp:CheckBox ID="CheckBox2"  runat="server"  Text="credit Card" Font-Bold="True" Font-Italic="True" Font-Size="Large" />
                    
                       
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                     <td>
            <asp:CheckBox ID="CheckBox3"   runat="server"  Text="By Cash" Font-Bold="True" Font-Italic="True" Font-Size="Large" />
               </tr>
                </table>
        <p>
            
            <asp:Button ID="Button1" runat="server"  Text="Click Here"  width="100px"  Height="30px" OnClick="Button1_Click" style="color: #000000; background-color:#f5881f;" Font-Bold="True" />
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server"  Text="PlaceOrder"  width="100px"  Height="30px" OnClick="Button2_Click" style="color: #000000; background-color:#f5881f;" Font-Bold="True" />
        </p>

                        
               <br />
        <p>
            <strong style="margin-left:450px; margin-top:40px; ">Payment Selected:</strong> <asp:Label ID="pay" runat="server" Text="" style="font-weight: 700; color: #CC0000"></asp:Label>
        </p>
                         </div>
      
       
         <footer>
            <div class="cb-footer cb-col-100 cb-col "  style="cursor: pointer; width: 100%;">
                <div class="cb-ftr-cntrn">
                    <div class="cb-col-25 cb-col">
                        <div class="text-left cb-font-16  text-bold" style="margin-left: 18px; margin-bottom: 20px;">ABOUT</div>
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

                    <div class="cb-col-25 cb-col" style="margin-left: 250px">
                        <div class="text-left cb-font-16  text-bold" style="margin-left: 15px; margin-bottom: 20px;">HELP</div>
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

                    <div class="cb-col-25 cb-col" style="margin-left: 250px">
                        <div class="text-left cb-font-16  text-bold" style="margin-left: 15px; margin-bottom: 20px;">Social</div>
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

 <div class="mos" style="float: right; margin-top: 125px; cursor: pointer">
                    <i class="fa fa-facebook-official w3-hover-opacity w3-large" style="color: blue"></i>
                    <i class="fa fa-instagram w3-hover-opacity w3-large" style="color: rgba(194, 18, 99, 0.92);"></i>
                    <i class="fa fa-snapchat w3-hover-opacity w3-large" style="color: #147186"></i>
                    <i class="fa fa-pinterest-p w3-hover-opacity w3-large" style="color: #1cccd8"></i>
                    <i class="fa fa-twitter w3-hover-opacity w3-large" style="color: rgba(13, 120, 113, 0.77);"></i>
                    <i class="fa fa-linkedin w3-hover-opacity w3-large " style="color: rgba(59, 47, 217, 0.63);"></i>

                </div>
            </div>
                </div>
        </footer>
    </form>
</body>
</html>
