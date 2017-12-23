<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wdwd.aspx.cs" Inherits="wdwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="CSS.css"/>
</head>
<body>
    <form id="form1" runat="server">
<header>
    <div id="mainh">
        <table style="width:40%;height:100px;">
            <tr><td>
                    <div class="dropdown">
                        <a class="a1">For Parents</a>
                        <div class="dropdown-content">
                            <a href="createaccount.aspx" >Create Account</a>
                            <a href="login.apsx" >Login</a>
                            <a href="faq.aspx" >Frequently Asked Questions</a>
                            <a href="support.aspx">Support</a>
                        </div>
                    </div>
                </td>
                <td><a href="wdwd.aspx" class="a1">What Do We Do</a></td>
                <td><a href="http://www.foodservice.com/blogs/" class="a1">Blog</a></td> </tr>
            </table>

        <table style="width:40%;height:100px">
            <tr><td><label id="banner"><font color="black">gateWay</font><font color="navy">School</font><font color="lightgreen">Account.com</font></label></td>
        </table>
                 
        <table style="width:20%;height:100px">        
            <tr>
               <td style="height:100%;text-align:center"><asp:Button ID="Button1" runat="server" onclick="login_click" Text="Login" Height="35" Width="60" BackColor="Blue"/> </td>
                <td> <asp:Button ID="Button2" runat="server" onclick="ca_click" Text="Create Account" Height="35" Width="120" BackColor="Blue"/></td>
            </tr>
        </table> 
    </div>
    </header>
    <!-- Here goes the main section after header-->
    <div id="section1">
    <h4 style="color:blue">What Do We Do</h4>
    <h1 style="color:blue">WE MAKE IT EASY FOR SCHOOLS TO COLLECT PAYMENTS ONLINE</h1>
    <h3 style="color:blue">How gateWaySchoolAccount works!</h3>
    </div>
    <!-- Here goes the For Schools section -->
<div class="section2">
    <!-- Here goes the For Schools and For Parents section -->
    <div class="section2left">
    <h4>For Schools....</h4>
        <ol>
            <li><h3 style="margin-bottom:-20px;color:blue">Easy software installation</h3><p>Getting set up is simple. After the setup process is complete, our expert staff will train you so you will have confidence.</p>
</li>
            <li><h3 style="margin-bottom:-20px;color:blue">Communicate with parents</h3><p>Utilize the built in alert banners on myschoolaccount to notify all parents using the service of upcoming events, school closings, and other important notifications.</p></li>
            <li><h3 style="margin-bottom:-20px;color:blue">Collect payments</h3><p>Utilize the built in alert banners on myschoolaccount to notify all parents using the service of upcoming events, school closings, and other important notifications.
</p></li>
            <li><h3 style="margin-bottom:-20px;color:blue">Generate reports</h3><p>Generate reports
A large variety of essential reports are always available in our admin portal. Generate financial reports that are vital to a healthy school lunch program.
</p></li>
            <li><h3 style="color:blue">Benefits for schools</h3>
                <ul>
                    <li>Speed up lines in your cafeteria</li>
                    <li>Increase sales with funds dedicated to cafeteria purchases</li>
                    <li>Nightly updates of student account records</li>
                    <li>Comprehensive Reporting</li>
                    <li>Reduce Labor Costs</li>
                </ul></li>
        </ol>
    </div>
    <!-- Here goes the For Parents section -->
    <div class="section2right">
    <h4>For Parents....</h4>
        <ol>
            <li><h3 style="margin-bottom:-20px;color:orange">Create an account</h3><p>Once your school has announced you will be using gateWaySchoolAccount to manage your student’s lunch account it’s time to create an account.</p></li>
            <li><h3 style="margin-bottom:-20px;color:orange">Add students</h3><p>Adding students is easy with their school ID number.</p></li>
            <li><h3 style="margin-bottom:-20px;color:orange">Make a secure deposit</h3><p>Adding students is easy with their school ID number.</p></li>
            <li><h3 style="margin-bottom:-20px;color:orange">Get low balance notifications</h3><p>Set up a low balance notifications and never have your student miss a day of lunch due to low funds.</p></li>
            <li><h3 style="color:orange">Benefits for parents</h3>
                <ul>
                    <li>Convenience of both ACH and Credit Card Transactions</li>
                    <li>24/7 Access</li>
                    <li>Receive low balance notifications via email</li>
                    <li>Quickly view 30 days of detailed purchase history</li>
                    <li>Monitor healthy eating habits</li>
                    <li>Manage multiple students at once</li>
                    <li>Transfer funds between students</li>
                </ul>
            </li>
        </ol>
    </div>
    <div style="clear: both;">
</div>  
</form>
</body>
</html>