<%@ Page Language="C#" AutoEventWireup="true" CodeFile="datamonew.aspx.cs" Inherits="datamonew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" CssClass="Grid" AutoGenerateColumns="false"
    EmptyDataText="No records has been added.">
<Columns>
    <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="120" />
    <asp:BoundField DataField="Country" HeaderText="Country" ItemStyle-Width="120" />
</Columns>
</asp:GridView>

    </div>
    </form>
</body>
</html>
