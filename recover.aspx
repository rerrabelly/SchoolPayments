<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recover.aspx.cs" Inherits="recover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css.css"/>
</head>
<body>
    <form runat="server" width="600">
    <div class="rcvrfrm">
    <asp:Image ID="GWS" ImageUrl="gws.png" Height="100" Width="600" runat="server"/>
    <h3>Recover Password</h3>
    <table>
        <tr><td><asp:Image ID="email" runat="server" ImageUrl="email.png" Tooltip="Enter your email" Height="35" Width="45"/></td>
        <td><asp:TextBox ID="mail" Text="Email" runat="server" Height="35" Width="535"/>
            <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="This field is required" controltoValidate="mail"/>
               <asp:RegularExpressionValidator ID="regex1" runat="server" ErrorMessage="Enter valid email id" controltoValidate="mail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"/>
        </td>
        </tr>
    </table>
    <h6 style="color:blue">The email you are typing above must the email in records. If the emails match you will receive an email with login information</h6>
<table>
<tr><td id="first"><asp:Button runat="server" ID="cancelbutton" OnClick="cancel_button" Text="Cancel and go back" Height="45" BackColor="Blue" Width="250"/></td>
    <td id="second">&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
    <td id="third"><asp:Button runat="server" ID="RPbutton" OnClick="rp_email" Text="Recover Password" Height="45" BackColor="Blue" Width="250"/></td>
</tr>
</table>

      </div>
    </form>
    <script>
    function WIP()
    { alert("Work In Progress");}
</script>
</body>
</html>
