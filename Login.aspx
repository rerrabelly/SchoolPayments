<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="css.css"/>
</head>
<body>
    <form id="form1" runat="server" class="right" >
    <div>
    <asp:image id="Image9" runat="server" imageurl="gws.png"/>
    <h4>Login to your account</h4>
    </div>
    <div id="lctdiv">
    <table><tr>
           <td><asp:image id="Image1" runat="server" imageurl="email.png" ToolTip="Enter your email" Height="30" Width="50"/></td>
           <td><asp:TextBox id="emailtb" Text="EMail" runat="server" width="400" Height="30"/>
               <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="This field is required" controltoValidate="emailtb"/>
               <asp:RegularExpressionValidator ID="regex1" runat="server" ErrorMessage="Enter valid email id" controltoValidate="emailtb" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"/>
           </td>
           </tr><tr>
           <td><asp:image id="Image2" runat="server" imageurl="password.png" ToolTip="Enter your password" Height="30" Width="50" /></td>
           <td><asp:TextBox id="pwdtb" TextMode="Password" Text="Type answer to the security question" runat="server" width="400" Height="30"/>
               <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="This field is required" controltoValidate="pwdtb"/>
               <asp:RegularExpressionValidator ID="regex2" runat="server" ErrorMessage="Enter valid password" controltoValidate="pwdtb" ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"/>
           </td>
        </tr>
    </table>
    </div>
    <div>
    <table id="lct"><tr><td><asp:Button Text="Cancel" ID="CancelButton" causesValidation="false" OnClick="Cancel_click" runat="server" Height="50" Width="80" BackColor="Blue"/></td><td> <asp:Button Text="Login" ID="LoginButton" OnClick="Login_click" runat="server" Height="50" Width="80" BackColor="Blue"/></td></tr>
    </table>
    <table><tr><td><a href="recover.aspx">Forgot your username or passowrd?</a></td></tr>
        <tr><td><a href="createaccount.aspx">Sign up today!</a></td></tr>
    </table>
    </div>
    </form>
</body>
</html>
