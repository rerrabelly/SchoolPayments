<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

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
                            <a href="createaccount.aspx">Create Account</a>
                            <a href="login.aspx">Login</a>
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
    <div>
    <h1 style="color:Blue;text-align:center">Frequently Asked Questions for gateWaySchoolAccount</h1>
    <p style="color:Blue;text-align:center"><a href="gswq_faq.pdf">View faq in pdf</a></p>
    </div>
    <div>
        <h3 style="color:darkorange">How do I find out if my students' school uses this service?</h3>
        <p>Please contact your child’s school to determine if they use the gateWaySchoolAccount.com service.
</p>
        <h3 style="color:darkorange">Who actually maintains my students' account?</h3>
        <p>A Student ID number can be obtained by contacting the students' school. Your child’s ID number may also be displayed on their school ID card.</p>
         <h3 style="color:darkorange">
I forgot my password. How can I get my password?</h3>
        <p>Click the Forgot Password? link in the gateWaySchoolAccount.com login page. Enter the e-mail address you used when you created your gateWaySchoolAccount.com account and click Retrieve Password. Your password will be e-mailed to you.</p>
        <h3 style="color:darkorange">How do I Set-Up and Manage Low Balance Email Notifications?</h3>
        <p>Low balance email notifications are a great way to  make sure that your student always has available funds for school lunch. When his/her balance goes below the set minimum, you are notified! You may change the desired email address or minimum balance at any time. Set-up and management is easy! Click here for instructions. 
</p>
                <h3 style="color:darkorange">Can I cancel a pre-order?</h3>
        <p>Once a pre-order has been submitted to your school, you can no longer cancel or change an order through our website. You will need to contact the food service department at your school to inquire about changing/canceling your orders. 
        </p><p>Most of the school's that use our pre-order services order their food well in advance based on the orders that parents have placed online. If parents have the option to change their orders online, it could cause overages or shortages for the food service provider. In addition, each school has their own policy for canceling pre-ordered items. Some are obviously more flexible than other. Therefore, the system has been setup to not allow changes once an order has been submitted to the schools. Parents will need to work directly with the food service departments to change or cancel orders that have been submitted.
</p>
                <h3 style="color:darkorange">Why am I being told that I'm using an 'iframe' and the login is disabled?</h3>
        <p>A 3rd party toolbar such as yahoo, google, ask.com, etc. will often utilize an 'iframe.' We ONLY allow secure communication of parent and student data to and from the website.  For this reason, all browser toolbars such as these (and including others) should be disabled prior to logging into gateWaySchoolAccount.
</p>
                <h3 style="color:darkorange">How long will it take for my deposit to show up in my child's account?</h3>
        <p>The cut-off time for online payments is midnight (EST) each night. Payment made before midnight (EST), will post to the student Deposit Funds the same night and be available to the student in the morning. Payments made after midnight (EST), will not post until the following night. There are occasions when payments do not post to the local school over night. This could be caused by equipment problems at the school, internet outage in a certain part of the country or a problem on one of our servers. The technical staff at gateWaySchoolAccount.com closely monitors the network traffic between our system and your local school. Any time there is a problem, we try to have it resolved within 24 hours so there is a minimal delay in posting the payments.</p>
                <h3 style="color:darkorange">What is the difference between ala carte and meal plan?</h3>
        <p>AlaCarte money can be used to purchase anything in the cafeteria, meal plan money can only be used to purchase government qualified meals (no junk food).</p>
                <h3 style="color:darkorange">Who should I contact if I have questions about a recent payment or purchase?</h3>
        <p>gateWaySchoolAccount.com is a portal for you to view payments, purchases, and transactions. All questions concerning online transactions should be directed to your school districts' food service department. However, a deposit history report is available should the inquiry be related to deposit information details.</p>
                <h3 style="color:darkorange">Can I make payments to multiple children's accounts with one payment?</h3>
        <p>Yes. You will need to enter a specific payment amount for each child.</p>
               <h3 style="color:darkorange">How do I add additional students after the initial set up of my account?</h3>
        <p>Students can be added by clicking the “Add Student” button located on the gateWaySchoolAccount.com dashboard. Students can also be added or removed from the “Manage Students” section.
</p>
               <h3 style="color:darkorange">How do I find out what my child has been buying for lunch?</h3>
        <p>Once logged into the site, click the “Manage Students” button or menu bar option. When this section is displayed, click the “VIEW HISTORY” link next to the account that you’d like to examine.
</p>
                <h3 style="color:darkorange">My student has graduated or moved to a school that doesn't use your services. How do I close my parent account?</h3>
        <p>To close your parent account, if you do not have any additional students, you can deactivate your account from within your parent account. Once you login, select the "mange my account" link at the top on your landing page. Next click the "other account options" located on the right side of the screen above the Mobile MSA banner. Select "deactivate account" and enter a reason for deactivating, such as son is graduating. Once your request has been submitted, we will deactivate your parent account.
</p>
                <h3 style="color:darkorange">What happens to the money in my child’s account at the end of the school year?</h3>
        <p>
The balances will automatically rollover to the next school year. If however, your student is graduating or changing schools, your school will provide a refund.  You may want to contact them directly to inquire about how they handle the refund process. In addition, if your student will be continuing next year, but you'd still like a refund, you will need to check with your school to inquire about their policies.</p>
               </div>
    </form>
</body>
</html>
