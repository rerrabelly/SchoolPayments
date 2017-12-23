<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addstudent.aspx.cs" Inherits="addstudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css.css"/>
  </head>
<body>
    <form id="form1" runat="server">
    <div class="asdiv">
    <asp:Image ID="GWS" ImageUrl="gws.png" Height="100" Width="600" runat="server"/>
        <table><tr><td style="width:400px"><h3>My Students</h3></td>
            <td>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td>
            <td><asp:Button runat="server" Id="asbutton" Text="Add Student" BackColor="Blue" Enabled="false" Height="35" Width="100"/></td>
             </tr></table>
           <div>
               <h3>New Student Information</h3>
            </div>
            <table>
            <tr>
            <td><asp:Image ID="email" runat="server" ImageUrl="lname.png" Tooltip="Enter your email" Height="35" Width="45"/></td>
            <td><asp:TextBox ID="fname" Text="Student First Name" runat="server" Height="35" Width="235"/>
                <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Student First Name is required" controltoValidate="fname"/>
            </td>
            </tr>
            <tr>
            <td><asp:Image ID="Image1" runat="server" ImageUrl="lname.png" Tooltip="Enter your email" Height="35" Width="45"/></td>
            <td><asp:TextBox ID="lname" Text="Student Last Name" runat="server" Height="35" Width="235"/>
                <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="Student last name is required" controltoValidate="lname"/>
            </td>
            </tr>
            <tr>
            <td><asp:Image ID="Image2" runat="server" ImageUrl="sid.png" Tooltip="Enter your email" Height="35" Width="45"/></td>
            <td><asp:TextBox ID="studentid" Text="Student Id" runat="server" Height="35" Width="235"/>
                <asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="Student Id is required" controltoValidate="studentid"/>
                <asp:RegularExpressionValidator ID="regex1" runat="server" ErrorMessage="Enter valid student id" controltoValidate="studentid" ValidationExpression="^[0-9]{10}$"/>
            </td>
            </tr>
            <tr>
            <td><asp:Image ID="Image3" runat="server" ImageUrl="sname.png" Tooltip="Enter your email" Height="35" Width="45"/></td>
            <td><asp:TextBox ID="sname" Text="School Name" runat="server" Height="35" Width="235"/>
                <asp:RequiredFieldValidator ID="rfv4" runat="server" ErrorMessage="School Name is required" controltoValidate="sname"/>
            </td>
            </tr>
            </table>
        
        <table><tr><td style="width:300px;text-align:center"><asp:Button runat="server" Text="Cancel" BackColor="Blue" OnClick="cancel" Height="35" Width="200" CausesValidation="false"/></td>
            <td style="width:300px;text-align:center"><asp:Button runat="server" Text="Add to list" BackColor="Blue" OnClick="addtolist" Height="35" Width="200"/></td>
               </tr></table>
        </div>
        
      
   </form>
</body>
</html>
