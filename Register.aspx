<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="images.png" />
    <title>Register Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background: url("Images/northern-lights.jpg") fixed no-repeat top right;
        background-size:cover;
         width:400px;
        height: 100px;
        text-align: match-parent;
        float: right;
        margin-left: 450px;
        margin-right: 500px;
        margin-top: 30px;
        margin-bottom: 100px;
    }

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background: url("Images/northern-lights.jpg") fixed no-repeat top right;
        background-size:cover;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border-color:#12e9ae;
  border-radius:25px;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}


/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;

}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  margin-top:30px;
  border-radius:25px;
  font-size:larger;
  border-color:black;
}

.registerbtn:hover {
  opacity: 1;
}


p{
    color:#000000;
}
::placeholder{
    font-size:16px;
    font-family:Cambria, Cochin, Georgia, Times, Times New Roman, serif;
   
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
#Req1, #Req2, #Req3, #Req4{
    float:right;
}
#Ran1, #Ran2{
    float:right;
}
</style>
</head>
<body>

<form  runat="server">
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr/>

    <label for="email"><b><i class="fa fa-envelope icon"></i>  Email</b></label>
      <asp:RequiredFieldValidator ID="Req1" ControlToValidate="text" runat="server" ErrorMessage="Enter your Email" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="Ran2" runat="server" ControlToValidate="text"   ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> </asp:RegularExpressionValidator>  
    <asp:TextBox id="text" runat="server" placeholder="Enter Email" name="email" ></asp:TextBox>

      <label for="email"><b> <i class="fa fa-user icon"></i>  UserName</b></label>
      <asp:RequiredFieldValidator ID="Req4" ControlToValidate="text" runat="server" ErrorMessage="Enter your Username" ForeColor="Red"></asp:RequiredFieldValidator>
       <asp:TextBox id="texts" runat="server" placeholder="Enter Username" name="email" ></asp:TextBox>



    <label for="psw"><b><i class=" fa fa-lock icon" ></i> Password</b></label>
      <asp:RequiredFieldValidator ID="Req2" runat="server" ControlToValidate="password"  ErrorMessage="Enter your Password" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox id="password" runat="server" placeholder="Enter Password" name="psw" TextMode="Password"></asp:TextBox>

    <label for="psw-repeat"><b><i class="fa fa-mobile icon"></i>   Mobile No</b></label>
      <asp:RequiredFieldValidator ID="Req3" runat="server" ControlToValidate="passwords" ErrorMessage="Enter your Mobile No" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="Ran1" runat="server" ControlToValidate="passwords" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ErrorMessage="Enter the valid Range " ForeColor="red"></asp:RegularExpressionValidator>
       <asp:Textbox id="passwords" runat="server" placeholder="Enter Mobile No" name="psw-repeat" ></asp:Textbox>
    
    
    <asp:Button id="submit" runat="server" Text="Register" class="registerbtn" OnClick="submit_Click"/>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="login.aspx">Sign in</a>.</p>
  </div>
</form>

</body>
</html>
