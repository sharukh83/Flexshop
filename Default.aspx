
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Template" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="images.png" />
    <title>Home Page</title>
    <link rel="stylesheet" href="footers.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
       <body>
        <link rel="stylesheet" href="footers.css" />

        <style>
           

            * {
                box-sizing: border-box;
            }

            body {
                font-family: Arial;
                padding:2px;
                background-color:white;
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

            .set {
                animation: set 3s infinite linear;
                -webkit-animation: set 3s infinite linear;
            }

            
            img {
                display: block;
                margin-top: auto;
                margin-left: 5px;
                margin-right: auto;
                margin-bottom: auto;
            }

            .man {
                margin-left: 550px;
                float: right;
            }

            h1 {
                font: bold;
                font-size: 50px;
            }

            .header h1 {
                font: bold;
                font-size: 50px;
                color: #ffd800;
                top: auto;
            }

            .header:hover {
                opacity: 0.7;
            }


            .topnav {
                overflow: auto;
                margin-left: 4px;
                background-color:white;
                background-color: #333;
            }


                .topnav a {
                    float: left;
                    font-size: 16px;
                    color: white;
                    background-color: #333;
                    text-align: center;
                    padding: 8px 8px;
                    text-decoration: none;
                }

            .cart {
                float: right;
                font-size: large;
            }


            .topnav a:hover {
                background-color: #ddd;
                color: black;
            }

            .fa fa-cart-plus {
                font-size: x-large;
            }





            .leftcolumn {
                float: left;
                width: 100%;
            }




            .fakeimg {
                background-color: white;
                width: 33.33px;
                height: auto;
                padding: 2px;
                display: inline-table;
                cursor: pointer;
                transition: 0.3s;
               
            }

                .fakeimg:hover {
                    color: blue;
                    opacity: 0.7;
                }

            .fake {
                display: inline-table;
                width: 10px;
                padding: 10px;
                color: black;
                transition: 0.3s;
                background-color: white;
            }

                .fake:hover {
                    color: blue;
                    opacity: 0.7;
                }

            h2 {
                margin-left: 550px;
                border-color: orange;
                cursor: pointer;
            }

                h2:hover {
                    color: orange;
                }

            .card {
                background-color: white;
                padding: 0px;
                width: inherit;
                margin-top: 2px;
            }


            .row::after {
                content: "";
                display: table;
                clear: both;
            }



            .center {
                margin-left: 10px;
                margin-right: 55px;
                text-align: center;
                width: 50px;
                float: left;
            }

            p {
                margin-bottom: 10px;
                font: bolder;
                text-align: center;
            }

            h6 {
                display: inline-table;
            }

            p:hover {
                color: blue;
            }

            .dropdown {
                float: left;
                overflow: hidden;
            }

            .dropbtn:hover {
                background-color: #ddd;
                color: black;
            }



            .deal {
                margin-left: 300px;
                float: inherit;
            }

            .dropdown, .dropbtn {
                font-size: 16px;
                border: none;
                outline: none;
                color: white;
                padding: 14px 16px;
                background-color: #333;
                font-family: inherit;
                margin-top: 25%;
                margin: 0;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
                border-radius: 12px;
            }

                .dropdown-content a {
                    float: none;
                    color: black;
                    padding: 12px 16px;
                    text-decoration: none;
                    display: block;
                    text-align: left;
                }

            .mos {
                float: right;
                position: center;
            }

            .dropdown-content a:hover {
                background: #19c589;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .tops {
                margin-top: 13px;
            }

            .mad {
                float: right;
                position: center;
                direction: ltr;
            }

            .web {
                background-color: rgba(0, 0, 0, 0.28);
                min-width: 978px;
                border-top: 1px solid #ddd;
                border-top-width: 1px;
                border-top-style: solid;
                border-top-color: rgb(221, 221, 221);
                margin-top: 25px;
            }


            .footer {
                width: 100px;
                margin: 0 auto;
                text-align: left;
            }

            .col, .row {
                width: 100%;
            }

            .row {
                display: -webkit-flex;
                display: flex;
                flex-flow: row wrap;
                flex-direction: row;
                flex-wrap: wrap;
            }

            .abo {
                margin-left: 65px;
                width: 90% !important;
                padding-top: 60px;
            }

            .fa-shopping-cart {
                font-size: x-large;
            }

            .cat a {
                margin-top: 30px;
            }

            .tmv a {
                margin-top: 27px;
            }

            .cats a{
                margin-left:35px;
                margin-top:28px;
            }

            .weather {
                font-family: futura;
                font-style: italic;
                margin-right:150px;
                font-size: 45px;
                font-weight: bold;
                margin-right: 400px;
                -webkit-animation: colorchange 10s infinite alternate;
                
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

                110% {
                    color: cornflowerblue;
                }
            }

            #Label1 {
                margin-top: 200px;
            }
            .cb-footer:before{
                content: '';
                position:absolute;
                top:-2px;
                left:-2px;
                background-size:400px;
                background:linear-gradient(90deg,#fb0094,#0000ff,#00ff00,#ffff00,#ff0000,#0000ff,#00ff00,#ffff00,#ff0000);
                width:calc(100% + 4px);
                height:calc(100% +  4px);
                z-index: -1;
               -webkit-animation: animate 20s ease infinite ;

            }
            
           
            .cb-footer:after{
                filter:blur(20px);
            }

            @-webkit-keyframes animate {
                0% {
                    background-position:0%, 50%;
                }

                50% {
                    background-position: 100%, 50%;
                }

                100%{
                    background-position:0%, 50%;
                }
            
            }
                </style>
</head>

<body>

    <form runat="server">

        <div class="set">



            <div class="header" style="text-align:match-parent; font-size:50%;">
                <Marquee><h1 class="weather"> FlexShop.Com </h1></Marquee>
            </div>
        </div>

        
            <div class="topnav">
                <div class="dropdown">
                    <a href="Default.aspx">
                        <p><i class="fa fa-home "></i> Home</p>
                    </a>
                </div>
                <div class="dropdown">
                    <button class="dropbtn"><a href="Addtocart.aspx">Brands  </a></button>

                </div>

                
                <div class="cat">
                    <a href="About.aspx"><i class="fa fa-location-arrow"></i> About Us</a>
                </div>

                <div class="cats">
                    <a href="Feedback.aspx"><i class="fa fa-comment"></i>  Feedback</a>
                </div>

                <div class="tmv">

                    <a href="Add2shop.aspx" style="float: right; border:1px solid; border-radius:20px;" class="cart"><i class="fa fa-shopping-cart"></i>  Cart</a>
                   
                    <a href="login.aspx" style="float: right; border:1px solid;  border-radius:20px; " class="man">Login  &<br />
                        SignUp </a>
                       

                </div>
            </div>
       

       
            <div class="rows">
                <div class="leftcolumn">
                    <div class="card">
                        <h2 class="weather">Shop By Brands</h2>
                        <div class="fakeimg" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/1476696449790.png" Style="height: 134px; width: 160px;" class="center" /><p>VOLTAS</p>
                            </a></span>
                        </div>
                        <div class="fakeimg" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/1488104744211.jpg" Style="height: 134px; width: 160px;" class="center" /><p>SAMSUNG</p>
                            </a></span>
                        </div>
                        <div class="fakeimg" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/1488104784707.jpg" Style="height: 134px; width: 160px;" class="center" /><p>LG</p>
                            </a></span>
                        </div>
                        <div class="fakeimg" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/1488017391650.png" Style="height: 134px; width: 160px;" class="center" /><p>Godrej</p>
                            </a></span>
                        </div>
                        <div class="fakeimg" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/1488104666873.jpg" Style="height: 134px; width: 160px;" class="center" /><p>Hitachi</p>
                            </a></span>
                        </div>
                    </div>
                </div>
            </div>
        
        <article>
            <div class="rows">
                <div class="leftcolumn">
                    <div class="card">
                        <h2 class="weather" style="margin-right: 10px;">Shop By Type</h2>
                        <div class="fakeimg" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/download (4).jpg" Style="height: 240px; width: 350px;" class="center" /></a></span>
                        </div>
                        <div class="fakeimg" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/plitac.jpg" Style="height: 240px; width: 350px;" class="center" /></a></span>
                        </div>
                        <div class="fakeimg" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/1155768_MAJOR-APPLIANCES-JANART_ContentGrid_750x400_3_1547456758._CB456171374_.jpg" Style="height: 240px; width: 350px;" class="center" /></a></span>
                        </div>
                    </div>
                </div>
            </div>


            <div class="rows" style="cursor: pointer;">
                <div class="leftcolumn">
                    <div class="card">
                        <h2 class="weather" style="margin-right: 20px;">Insane Deals on ACs </h2>
                        <div class="fake" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/download (2).jpg" Style="height: 100px; width: 250px;" />
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star-half-empty" style="color: orange"></i>
                                <p>Midea 1 Ton 3 Star Split AC - White </p>
                            </a></span>
                            <p><i class="fa fa-rupee"></i>19,999</p>



                        </div>


                        <div class="fake" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/183-dzz-1-5-split-voltas-original-imaf8tdfdvgx2he6.jpeg" Style="height: 100px; width: 250px;" />
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star-half-empty" style="color: orange"></i>
                                <p>Air Conditioner </p>
                            </a></span>
                            <p><i class="fa fa-rupee"></i>24,999</p>

                        </div>

                        <div class="fake" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/1-5-hitachi-window-raw518kudz1-original-imaegpqxmad3hnye.jpeg" Style="height: 100px; width: 250px;" />
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <p>Hitachi 1.5 Ton 5 Star Window AC - White  </p>
                            </a></span>
                            <p><i class="fa fa-rupee"></i>31,999</p>

                        </div>

                        <div class="fake" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/download (1).jpg" Style="height: 100px; width: 200px;" />
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star-half" style="color: orange"></i>

                                <p>LG 3.5 Ton 5 Star Split AC - White  </p>
                            </a></span>
                            <p><i class="fa fa-rupee"></i>21,999</p>

                        </div>

                        <div class="fake" style="height: 180px;">
                            <span><a href="Addtocart.aspx">
                                <asp:Image runat="server" src="Images/cai12es3c8f0-1-inverter-carrier-original-imaf2utjczupcznr.jpeg" Style="height: 100px; width: 200px;" />
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <i class="fa fa-star" style="color: orange"></i>
                                <p>SAMSUNG 1.5 Ton 5 Star Inverter AC - White  </p>
                            </a></span>
                            <p><i class="fa fa-rupee"></i>25,999</p>

                        </div>
                    </div>
                </div>
            </div>
        </article>
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
        </footer>
    </form>
</body>

</html>
