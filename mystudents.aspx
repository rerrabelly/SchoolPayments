<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mystudents.aspx.cs" Inherits="mystudents" %>

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
        <table><tr><td style="width:300px"> <h3><asp:Label ID="mslabel" runat="server" Text="My Students for"></asp:Label> </h3></td>
            <td>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td>
            <td><asp:Button runat="server" Text="+Add Student" BackColor="Blue" OnClick="asclick" Height="35" Width="200"/></td>
        </tr></table> 
    <asp:Table ID="mstable" runat="server" CssClass="ms2div">
        <asp:TableRow>
            <asp:TableHeaderCell>FirstName</asp:TableHeaderCell>
            <asp:TableHeaderCell>Last Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Student Id</asp:TableHeaderCell>
            <asp:TableHeaderCell>School Name</asp:TableHeaderCell>
        </asp:TableRow>
    </asp:Table>
    <table><tr><td style="width:600px;text-align:center"> <asp:Button ID="Okbutton" Text="OK" runat="server" BackColor="Blue" Height="40" OnClick="ok_click"/></td></tr></table>
   
        
    </div>
    </form>
</body>
</html>
