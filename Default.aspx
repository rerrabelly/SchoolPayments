<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
                        <a class="a1">For Parents</a><div class="dropdown-content">
                             <asp:Hyperlink runat="server" id="ddca" NavigateUrl="createaccount.aspx" Text="Create Account"/>
                             <asp:LinkButton runat="server" id="ddlogin" Onclick="Button1_Click" Text="Login" causesValidation="false" />
                            <a href="faq.aspx" >Frequently Asked Questions</a>
                            <a href="support.aspx">Support</a>
                        </div>
                    </div>
                </td>
                <td><a href="wdwd.aspx" class="a1">What Do We Do</a></td>
                <td><a href="http://www.foodservice.com/blogs/" class="a1">Blog</a></td> </tr>
            </table>

        <table style="width:40%;height:100px">
            <tr><td><a href="Default.aspx" class="a1">
                <div>
                    <label id="banner"><font color="black">gateWay</font><font color="navy">School</font><font color="lightgreen">Account.com</font></label></td>
                </div>
        </tr>
        </a>
        </table>
                 
        <table style="width:20%;height:100px">        
            <tr>
                <td style="height:100%;text-align:center"><asp:Button ID="lbutton" runat="server" onclick="Button1_Click" Text="Login" Height="35" Width="60" BackColor="Blue" CausesValidation="false"/> </td>
                <td> <asp:Button ID="cabutton" runat="server" onclick="Button2_Click" Text="Create Account" Height="35" Width="120" BackColor="Blue" CausesValidation="false"/>
                </td>
            </tr>
        </table> 
    </div>
    </header>
        <div id="main">
            <div id="top">       
                <img src="wad1.jpg"  style="height:95%;width:100%;margin-left:0px;"/>
            </div>
            <div id="para">
                <h1 style="color:maroon">School Payment Solutions for Online Payments and more!</h1>
              <h4 style="color:navy">A complete  School Payment Solution for any school, any size! A cashless option for parents and students. 
               Our online payment portal gives parents the ability to log on to their students' accounts and deposit funds for lunch and other school activities.
              </h4>
              </div>
         </div>
        <div id="bottom">
        <div id="sub1">
            <h2 style="color:white">With gateWaySchoolAccount Online Payments, School Financial Management Has Never Been Easier!</h2>
            <h4 style="color:white">Improve cash management by giving your parents the ability to make secure deposits into their children's meal accounts.</h4>
            <ul style="color:white">
                <li>Increase revenue</li>
                <li>Collect funds in a centralized portal</li>
                <li>Speed up lines in your cafeteria</li>
                <li>Collect funds in a centralized portal</li>
                <li>Reporting for every activity and department</li>
                <li>Attract more parents, students, and supporters</li>
                <li>Reduce labor by limiting processes & involvement</li>
            </ul>
            </div>
        <div id="sub2">
           <p style="color:white">To learn more about our Online Payment Portal for Schools, it's features, pricing details, or to schedule a demo, fill out the form below and click the "Tell Me More" button. A
               gateWaySchoolAccount representative will be in contact with you within 48 hours.
</p>
           <table style="color:white">
              <tr ><td> 
                   <asp:Label Text="First Name" runat="server" Font-Size="Large" Font-Bold="true" /><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red"/>
                   </td>
                  <td><asp:TextBox  Id="TextBox1" runat="server" Width="100%" />
                      <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox1" />
                  </td>
               </tr>
                <tr><td> 
                   <asp:Label Text="Last Name" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label>
                    <asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red"/>
                   </td>
                  <td><asp:TextBox  Id="TextBox2" runat="server" Width="100%" />
                      <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="This field is required" controltoValidate="TextBox2"/>
                  </td></tr>
               <tr><td> 
                   <asp:Label Text="Email Address" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label>
                   <asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red"/>
                   </td>
                  <td><asp:TextBox  Id="TextBox3" runat="server" Width="100%" />
                      <asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="This field is required" controltoValidate="TextBox3"/>
                      <asp:RegularExpressionValidator ID="regex1" runat="server" ErrorMessage="Enter valid email id" controltoValidate="TextBox3" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"/>
                  </td>
               </tr>
               <tr><td> 
                   <asp:Label Text="Your or Parent Phone Number" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label>
                <asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red"/>   
               </td>
                  <td><asp:TextBox  Id="TextBox4" runat="server" Width="100%"/>
                      <asp:RequiredFieldValidator ID="rfv4" runat="server" ErrorMessage="This field is required" controltoValidate="TextBox4"/>
                      <asp:RegularExpressionValidator ID="regex2" runat="server" ErrorMessage="Enter valid phone number" controltoValidate="TextBox4" ValidationExpression="^[0-9]{3}-[0-9]{3}-[0-9]{4}$"/>
                  </td>
               </tr>
                <tr><td> 
                   <asp:Label Text="Name Of  Your School or District " runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label>
                <asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red"/>   
                </td><td>
                       <asp:TextBox  Id="TextBox5" runat="server" Width="100%" />
                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ErrorMessage="This field is required" controltoValidate="TextBox5"/>
                    
                    
                  </td>
               </tr>
               <tr><td> 
                   <asp:Label Text="Comments" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label>
                   <asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red"/>
               </td>
                  <td><asp:TextBox  Id="TextBox6" runat="server" Width="100%" /></td>
                   <asp:RequiredFieldValidator ID="rfv6" runat="server" ErrorMessage="This field is required" controltoValidate="TextBox6"/>

               </tr>
            <tr><td></td>
                <td>
                <asp:Button ID="TMM" Text="Tell Me More" runat="server" Height="40" Width="130" BackColor="Blue" causesValidation="true" OnClick="TM_Email"/>
                </td></tr>
            
                 </table>
            </div>
        
<div>
<table>
    <tr>
        <td style="width:33%;height:100px"><asp:AdRotator id="Ads" runat="server"  AdvertisementFile="ads.xml" Target="_blank" KeywordFilter="Computer" /></td>
        <td style="width:33%;height:100px"><asp:AdRotator id="AdRotator1" runat="server"  AdvertisementFile="ads.xml" Target="_blank" KeywordFilter="Computer" /></td>
        <td style="width:34%;height:100px"><asp:AdRotator id="AdRotator2" runat="server"  AdvertisementFile="ads.xml" Target="_blank" KeywordFilter="Computer" /></td>
    </tr>
</table>

</div>
</div>

</form>

</body>
</html>