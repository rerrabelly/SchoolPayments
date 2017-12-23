<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createaccount.aspx.cs" Inherits="createaccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
    <link rel="stylesheet" type="text/css" href="css.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
<div class="cadiv">
    <asp:Image ImageUrl="gws.png"  runat="server" Width="600px" Height="85px"/>
    <h3 style="color:blue">Sign Up</h3>
<p style="color:green">Select state or province of your school district</p>

<table id="table1">
    <tr>
    <td><asp:image id="Image10" runat="server" imageurl="state.PNG" Height="30" width="50" ToolTip="United States postal code"></asp:image></td>
    <td>
    <asp:DropDownList ID="states" runat="server" Height="30" width="405">
    <asp:ListItem Text="AL" Value="1"></asp:ListItem>
    <asp:ListItem Text="AK" Value="2"></asp:ListItem>
    <asp:ListItem Text="AZ" Value="3"></asp:ListItem>
    <asp:ListItem Text="AR" Value="4"></asp:ListItem>
    <asp:ListItem Text="CA" Value="5"></asp:ListItem>
    <asp:ListItem Text="CO" Value="6"></asp:ListItem>
    <asp:ListItem Text="CT" Value="7"></asp:ListItem>
    <asp:ListItem Text="DE" Value="8"></asp:ListItem>
    <asp:ListItem Text="FL" Value="9"></asp:ListItem>
    <asp:ListItem Text="GA" Value="10"></asp:ListItem>
    <asp:ListItem Text="HI" Value="11"></asp:ListItem>
    <asp:ListItem Text="ID" Value="12"></asp:ListItem>
    <asp:ListItem Text="IL" Value="13"></asp:ListItem>
    <asp:ListItem Text="IN" Value="14"></asp:ListItem>
    <asp:ListItem Text="IA" Value="15"></asp:ListItem>
    <asp:ListItem Text="KS" Value="16"></asp:ListItem>
    <asp:ListItem Text="KY" Value="17"></asp:ListItem>
    <asp:ListItem Text="LA" Value="18"></asp:ListItem>
    <asp:ListItem Text="ME" Value="19"></asp:ListItem>
    <asp:ListItem Text="MD" Value="20"></asp:ListItem>
    <asp:ListItem Text="MA" Value="21"></asp:ListItem>
    <asp:ListItem Text="MI" Value="22"></asp:ListItem>
    <asp:ListItem Text="MN" Value="23"></asp:ListItem>
    <asp:ListItem Text="MS" Value="24"></asp:ListItem>
    <asp:ListItem Text="MO" Value="25"></asp:ListItem>
    <asp:ListItem Text="MT" Value="26"></asp:ListItem>
    <asp:ListItem Text="NE" Value="27"></asp:ListItem>
    <asp:ListItem Text="NV" Value="28"></asp:ListItem>
    <asp:ListItem Text="NH" Value="29"></asp:ListItem>
    <asp:ListItem Text="NJ" Value="30"></asp:ListItem>
    <asp:ListItem Text="NM" Value="31"></asp:ListItem>
    <asp:ListItem Text="NY" Value="32"></asp:ListItem>
    <asp:ListItem Text="NC" Value="33"></asp:ListItem>
    <asp:ListItem Text="ND" Value="34"></asp:ListItem>
    <asp:ListItem Text="OH" Value="35"></asp:ListItem>
    <asp:ListItem Text="OK" Value="36"></asp:ListItem>
    <asp:ListItem Text="OR" Value="37"></asp:ListItem>
    <asp:ListItem Text="PA" Value="38"></asp:ListItem>
    <asp:ListItem Text="RI" Value="39"></asp:ListItem>
    <asp:ListItem Text="SC" Value="40"></asp:ListItem>
    <asp:ListItem Text="SD" Value="41"></asp:ListItem>
    <asp:ListItem Text="TN" Value="42"></asp:ListItem>
    <asp:ListItem Text="TX" Value="43"></asp:ListItem>
    <asp:ListItem Text="UT" Value="44"></asp:ListItem>
    <asp:ListItem Text="VT" Value="45"></asp:ListItem>
    <asp:ListItem Text="VA" Value="46"></asp:ListItem>
    <asp:ListItem Text="WA" Value="47"></asp:ListItem>
    <asp:ListItem Text="WV" Value="48"></asp:ListItem>
    <asp:ListItem Text="WI" Value="49"></asp:ListItem>
    <asp:ListItem Text="WY" Value="50"></asp:ListItem>
</asp:DropDownList>
    </td></tr>
    <tr>
        <td><asp:image id="Image1" runat="server" imageurl="state.png" Height="30" width="50" ToolTip="name of the school district your child attends" /></td>
        <td><asp:TextBox id="textbox1" Text="School District name" runat="server" width="400" Height="30"/>
            <asp:RequiredFieldValidator runat="server" ID="rfv1" ErrorMessage="This feild is required" ControlToValidate="textbox1"/>
        </td>
    </tr>
    <tr>
        <td><asp:image id="Image2" runat="server" imageurl="lname.png" Height="30" width="50" ToolTip="Parent First Name"/></td>
        <td><asp:TextBox id="TextBox2" Text="Full Name" runat="server" width="400" Height="30"/>
            <asp:RequiredFieldValidator runat="server" ID="rfv2" ErrorMessage="This feild is required" ControlToValidate="textbox2"/>
        </td>
    </tr>
    <tr>
        <td><asp:image id="Image3" runat="server" imageurl="lname.png" Height="30" width="50" ToolTip="Parent Last Name"/></td>
        <td><asp:TextBox id="TextBox3" Text="Last Name" runat="server" width="400" Height="30"/>
            <asp:RequiredFieldValidator runat="server" ID="rfv3" ErrorMessage="This feild is required" ControlToValidate="textbox3"/>
        </td>
    </tr></table>
<table id="table2">
    <tr><td> <h4 style="color:green">NOTE: Your Email will be your username</h4></td></tr>
</table>
<table id="table3">
         <tr>
        <td><asp:image id="Image4" runat="server" imageurl="mail.png" Height="30" width="50" ToolTip="A valid email address"/>
        </td>
        <td><asp:TextBox ID="emailtextbox" Text="EMail Address" runat="server" width="400" Height="30" AutoPostBack="true" OnTextChanged="email_check"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="Rfv4" ErrorMessage="This feild is required" ControlToValidate="emailtextbox"/>
            <asp:RegularExpressionValidator ID="regex2" runat="server" ErrorMessage="Enter valid email id" controltoValidate="emailtextbox" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"/>
        </td>
    </tr>
               <tr>
        <td><asp:image id="Image5" runat="server" imageurl="mail.png" Height="30" width="50" ToolTip="Retype the email address entered above"/></td>
        <td><asp:TextBox id="TextBox5" Text="Retype EMail Address" runat="server" width="400" Height="30"/>
            <asp:RequiredFieldValidator runat="server" ID="rfv5" ErrorMessage="This feild is required" ControlToValidate="textbox5"/>
            <asp:RegularExpressionValidator ID="regex1" runat="server" ErrorMessage="Enter valid email id" controltoValidate="textbox5" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"/>
            <asp:CompareValidator ID="cv1" runat="server" ErrorMessage="emails do not match"  ControlToValidate="textbox5" ControlToCompare="emailtextbox" />
        </td>
    </tr>
               <tr>
        <td><asp:image id="Image6" runat="server" imageurl="pwd.png" Height="30" width="50" ToolTip="Password must be between 8 and 10 characters, contain at least one digit, one alphabetic character, and must not contain special character"/></td>
        <td><asp:TextBox id="TextBox6" Text="Password" TextMode="password" runat="server" width="400" Height="30"/>
            <asp:RequiredFieldValidator runat="server" ID="rfv6" ErrorMessage="This feild is required" ControlToValidate="textbox6"/>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid password" controltoValidate="textbox6" ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"/>
        </td>
    </tr>
     <tr>
        <td><asp:image id="Image7" runat="server" imageurl="pwd.png" Height="30" width="50" ToolTip="Password must be between 8 and 10 characters, contain at least one digit, one alphabetic character, and must not contain special character"/></td>
        <td><asp:TextBox id="TextBox7" Text="Retype Password" TextMode="password" runat="server" width="400" Height="30"/>
            <asp:RequiredFieldValidator runat="server" ID="rfv7" ErrorMessage="This feild is required" ControlToValidate="textbox7"/>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid password" controltoValidate="textbox7" ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"/>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match"  ControlToValidate="textbox7" ControlToCompare="textbox6" />
        </td>
    </tr>
</table> 
<table id="table5">
     <tr><td><h4 style="color:green">Select</h4></td>
        <td><h4  style="color:green">a security question</h4></td>
    </tr>
    <tr> <td><asp:image id="Image8" runat="server" imageurl="seq.png" Height="35" width="50" ToolTip="Select a security question"/></td>
         <td><asp:DropDownList ID="secq" runat="server" Height="30" width="405">
    <asp:ListItem Enabled="true" Text="Select security question" Value="-1"></asp:ListItem>
    <asp:ListItem Text="What is your mother's maiden name?" Value="1"></asp:ListItem>
    <asp:ListItem Text="What was your childhood nickname?" Value="2"></asp:ListItem>
    <asp:ListItem Text="What is the name of your favorite childhood friend?" Value="3"></asp:ListItem>
    <asp:ListItem Text="What is your favorite sport team?" Value="4"></asp:ListItem>
    <asp:ListItem Text="What was the make and model of your first car?" Value="5"></asp:ListItem>
    <asp:ListItem Text="What school did you attend for sixth grade?" Value="6"></asp:ListItem>
    <asp:ListItem Text="What was the last name of your third grade teacher?" Value="7"></asp:ListItem>
    <asp:ListItem Text="In what town was your first job?" Value="8"></asp:ListItem>
    <asp:ListItem Text="What is your favorite movie?" Value="9"></asp:ListItem>
    <asp:ListItem Text="Who is your childhood sports hero?" Value="10"></asp:ListItem>
    <asp:ListItem Text="In what year was your father born?" Value="11"></asp:ListItem>
    </asp:DropDownList>
    </td></tr>
    <tr> <td><asp:image id="Image9" runat="server" imageurl="seq.png" Height="30" width="50" ToolTip="Enter an answer to the security question"/></td>
    <td><asp:TextBox id="TextBox9" Text="Type answer to the security question" runat="server" width="400" Height="30"/>
        <asp:RequiredFieldValidator runat="server" ID="rfv9" ErrorMessage="This feild is required" ControlToValidate="textbox9"/>
    </td></tr>
</table>

 <table>
        <tr>
            <td style="text-align:center"><asp:Button ID="Button1" runat="server" onclick="cancel_click" Text="Cancel" Height="45" Width="200" BackColor="Blue" CausesValidation="false"/></td>
            <td style="text-align:center"><asp:Button ID="Button2" runat="server" onclick="ca_click" Text="Create Account" Height="45" Width="250" BackColor="Blue"/></td>
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