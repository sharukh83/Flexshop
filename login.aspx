<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="images.png" />
    <title>Login page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   
<style>
    *{
      
    }
    body {
        font-family: Arial, Helvetica, sans-serif;
        background: url("Images/spots_background_paint_light_69122_1920x1080.jpg") fixed no-repeat top right;
        width: 450px;
        height: 100px;
        text-align: left;
        float: right;
        position: center;
        margin-left: 850px;
        margin-right: 450px;
        margin-top: 50px;
        margin-bottom: 70px;
    }
h2{
    font-size:38px;
    text-align:center;
    margin-bottom:80px;
    
}
.Req{
    float:left;
}
form {
    border: 2px solid #f1f1f1;
      background-color:rgba(255, 255, 255, 0.20);
      border-radius:15px;
      position:center;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 15px ;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  border-radius:25px;
  border-color:#00ffff;
  
}
    


#button1{
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
    }

 button1:hover {
  opacity: 0.8;
  
}
.fa fa-user{
    font-size:medium;
}
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin : 12px 0 12px 0;
  position:relative;
}

img.avatar {
  width: 10%;
  border-radius: 50%;
}

.container {
  padding: 10px;
  position:center;
 
  
  
  
}

span.psw {
  float: right;
  padding-top: 30px;
}

 .fb-login-button{
            text-align:center;
            position:center;
             margin:auto;
             margin-left:520px;
            
        }



#Req, #Req2{
    float:right;
}

</style>
    
</head>
<body>

<h2>Login Page</h2>

   

<form runat="server">
     
    
  <div class="imgcontainer" ">
    <img src="Images/img_avatar.png"  alt="Avatar" class="avatar"/>
  </div>

  <div class="container">
      
          
    <asp:label runat="server" id="uname"><i class= "fa fa-user" ></i><b>  Username</b></asp:label>
      <asp:RequiredFieldValidator ID="Req" ControlToValidate="text" runat="server" ErrorMessage="Enter your username" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="text" placeholder="Enter Username" name="uname" />
     
 

     <asp:label runat="server" id="psw"><i class="fa fa-lock"></i><b>  Password</b></asp:label>
      <asp:RequiredFieldValidator ID="Req2" runat="server" ControlToValidate="password" ErrorMessage="Enter your Password" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox id="password" runat="server" type="pass" placeholder="Enter Password" name="psw" TextMode="Password" />

     
      <asp:Button ID="button1"  runat="server" Text="Login" OnClick="button_Click" Height="40px" Width="100px"/> 
    
    <label>
      <asp:CheckBox runat="server" id="checkbox" checked="True" name="remember"/> Remember me
    </label>
  </div>
  

  <div class="container" style="background-color:#f1f1f1">
    
    <span class="psw">New User? Click Here <a href="Register.aspx">Create Account</a></span>
  </div>
   
</form>
   
    </body>
</html>
