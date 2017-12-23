<%@ Page Language="C#" AutoEventWireup="true" CodeFile="datamo.aspx.cs" Inherits="datamo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>


<br />
<table>
<tr>
    <td style="padding-bottom: 10px">
        Name:<br />
        <asp:TextBox ID="txtName" runat="server" />
    </td>
</tr>
<tr>
    <td style="padding-bottom: 10px">
        Country:<br />
        <asp:TextBox ID="txtCountry" runat="server" />
    </td>
</tr>
<tr>
    <td style="width: 100px">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
    </td>
</tr>
</table>
    </div>
    </form>
</body>
</html>
