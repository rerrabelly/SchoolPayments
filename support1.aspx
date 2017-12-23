<%@ Page Language="C#" AutoEventWireup="true" CodeFile="support.aspx.cs" Inherits="support" %>

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
                        <a>For Parents</a>
                        <div class="dropdown-content">
                            <a href="" onclick="javascript:alert('Work In Progress')">Create Account</a>
                            <a href="" onclick="javascript:alert('Work In Progress')">Login</a>
                            <a href="/faq.aspx" >Frequently Asked Questions</a>
                            <a href="/support.aspx">Support</a>
                        </div>
                    </div>
                </td>
                <td><a href="/wdwd.aspx">What Do We Do</a></td>
                <td><a href="#" onclick="javascript:alert('Work In Progress')">Blog</a></td> </tr>
            </table>

        <table style="width:40%;height:100px">
            <tr><td><label id="banner"><font color="black">gateWay</font><font color="navy">School</font><font color="lightgreen">Account.com</font></label></td>
        </table>
                 
        <table style="width:20%;height:100px">        
            <tr>
                <td style="height:100%;text-align:center"> <button class="button" onclick="javascript:alert('Work In Progress');">Create Account</button> </td>
                <td> <button class="button" onclick="javascript:alert('Work In Progress');">Login</button></td>
            </tr>
        </table> 
    </div>
    </header>
    <!-- Here is the FAQ-->
    <div class="major">
    <h1 style="color:blue">gateWaySchoolAccount Support</h1>
    <a href="/gateWaySchoolAccount Support.pdf">click here to download the pdf version of FAQ</a>
    <h5 style="color:blue">
We like to listen to our users and of course help based on their asks. Here are the most common questions that our support agents field and how you can solve them quickly.</h5>
    <h1>I forgot my user ID and/or password. How can I get them?</h1>
    <p>Click the Forgot Password? link in the gateWaySchoolAccount.com <a href="#" onclick="javascript:alert('Work In Progress')">login page</a>. Enter the e-mail address you used when you created your gateWaySchoolAccount.com account and click Retrieve Password. Your password and user ID will be e-mailed to you.</p>
    <h1>What’s my child eating and how far back can I see information?</h1>
    <p>Once logged into the site, click “Manage Students” on the main menu bar. From there, click the “VIEW HISTORY” link under the actions section next to the account that you’d like to examine. We display 30 days worth of purchase information, if you require information past the 30 days displayed, you should contact the food service department of your childs school.</p>
    <h1>Why can't I pay with a credit/debit card?</h1>
    <p>Your school distirct has chosen to only accept ACH debits. That is an industry term for a "E-Check", a check without the paper. The funds are simply transferred from your bank account to the school, the same as if you had written them a check. You may want to contact the food service department at your local school district for more information about accepting credit cards.</p>
    <h1>My students balance is not what it should be. What’s the deal?</h1>
    <p>gateWaySchoolAccount.com is a portal for you to make & view payments, purchases, and transactions. We simply display the information to you that is provided to us by your childs’ school. If you feel there is a descrepency you should contact the food service department of your school.</p>
    <h1>Why am I not getting low balance notifications?</h1>
    <p>When you are in the “Manage my Account” section, make sure that you check the box that states ”Send Low Balance Notification emails”, add an amount at which you would like to be notified and make sure you then check the enabled box. Then save. Most times our users forget to check that enable box.</p>
    </div>
<!-- Here is the connect supportstaff code-->
    <div class="minor">
        <div style="height:60px">
            <h3 style="color:blue">Connect with gateWaySchoolAccount.com Support Staff</h3>
            <p><a href="/atest.aspx">or Click here to contact Us</a></p>
        </div>
        <div style="height:60px">
            <table>
                <tr>
                    <td><textarea rows="2" cols="25">FirstName</textarea></td>
                    <td><textarea rows="2" cols="25">LastName</textarea></td>
                    <td><textarea rows="2" cols="25">Email Address</textarea></td>
                    <td><textarea rows="2" cols="25">School Name</textarea></td>
                </tr>
            </table>
        </div>
        <div style="height:50px;"><textarea rows="2" cols="110">Type of your message here</textarea></div>
        <div style="height:50px" class="ub">
        <button class="clbutton" onclick="javascript:alert('Work In Progress');">Click here to Send your message to support Staff
        </button>
        </div>
    </div>
    </form>
</body>
</html>
