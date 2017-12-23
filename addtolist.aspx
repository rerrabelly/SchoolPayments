<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addtolist.aspx.cs" Inherits="addtolist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css.css"/>
</head>
<body>
    <form id="form1" runat="server">
     <div class="msdiv">
        <asp:Image ID="GWS" ImageUrl="gws.png" Height="100" Width="600" runat="server"/>
        <table><tr><td style="width:300px"> <h3>My Students</h3></td>
            <td>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td>
            <td><asp:Button runat="server" Text="Add Student" BackColor="Blue" OnClick="asclick" Height="35" Width="200"/></td>
               </tr></table> 
    <table class="ms2div">
        <tr>
        <td style="width:150px">First Name</td>
        <td style="width:150px">Last Name</td>
        <td style="width:150px">Student Id</td>
        <td style="width:150px">School Name</td>
        </tr>
        <tr>
        <td style="width:150px">Robert</td>
        <td style="width:150px">Teriyaki</td>
        <td style="width:150px">1452565</td>
        <td style="width:150px">UHCL</td>
        </tr>
    </table>
    <table><tr><td style="width:500px;text-align:center"> <asp:Button ID="Okbutton" Text="OK" runat="server" BackColor="Blue" Height="40" OnClick="ok_click" /></td></tr></table>
   
       </div>
    </form>
</body>
</html>
