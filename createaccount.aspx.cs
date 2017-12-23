using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class createaccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cancel_click(object sender, EventArgs e)
    {
        //Do somthing
        Response.Redirect("~/Default.aspx");
    }
    protected void email_check(object sender, EventArgs e)
    {
        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;
        foreach (UserInfor user in allUsersList)
        {
            if (user.EmailAddress == emailtextbox.Text)
            {

                Response.Write("<script>alert('" + emailtextbox.Text + " already exists.Please Login');</script>");
                emailtextbox.Text = "";
                break;
            }
        }
    }

    protected void ca_click(object sender, EventArgs e)
    {

        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;

        var email = allUsersList.Find(x => x.EmailAddress == emailtextbox.Text);
        if (email != null)
        {
            Response.Write("<script>alert('Your email address is already registered in our database. Please login.');</script>");
            //ClientScript.RegisterStartupScript(this.GetType(), "Fail", "<script type='text/javascript'>alert('User ' + x.EmailAddress +' already exist. Please Login');</script>'");
        }
        else
        {
            SqlConnection db_conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432017sp02errabellyr;Persist Security Info=True;User ID=errabellyr;Password=1472539;Asynchronous Processing=true;MultipleActiveResultSets=True");

            string q = "INSERT INTO Errabelly_WADSP17_UserInfo(EmailAddress,Password,FirstName,LastName,SecurityQuestion,SecurityQAnswer,StateOrProvince,SchoolDistName) " +
                "VALUES(" + "'" + emailtextbox.Text + "', '" + TextBox7.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + secq.SelectedValue + "' , '" + TextBox9.Text
            + "','" + states.SelectedItem.Text + "','" + textbox1.Text + "')";
            SqlCommand sqlCommand = new SqlCommand(q, db_conn);
            try
            {
                db_conn.Open();
                sqlCommand.ExecuteNonQuery();
            }
            finally
            {
                db_conn.Close();
            }


            UserInfor uinfor = new UserInfor();
            uinfor.StateOrProvince = states.SelectedItem.Text;
            uinfor.SchoolDistrictName = textbox1.Text;
            uinfor.FirstName = TextBox2.Text;
            uinfor.LastName = TextBox3.Text;
            uinfor.EmailAddress = emailtextbox.Text;
            uinfor.Password = TextBox7.Text;
            uinfor.SecurityQuestion = secq.SelectedItem.Text;
            uinfor.SecurityQuestionAnswer = TextBox9.Text;
            allUsersList.Add(uinfor);
            Application["AllUsersList"] = allUsersList;
            Session["currentUser"] = uinfor;
            //Response.Write("<script>alert()</script>");
            //ScriptManager.RegisterStartupScript(this.GetType(), "Success", "alert('');" );
            ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Thank you for signing up.You can now login using login option. An email has also been sent to the email address you proided during Sign up');window.location='login.aspx';</script>'");
            //Response.Redirect("~/MyStudents.aspx");

            String msgTo = emailtextbox.Text;
            String msgSubject = "We have Received your Message!";
            String msgBody = "Dear" + TextBox2.Text + ",<br/>" + "\n" +
            "Thank you for signing up with us <br/>" + "\n" +
            "You can now access your student school account at <a href='http://dcm.uhcl.edu/c432017sp02errabellyr/Login.aspx'>Login </a>" + "\n" +
            "Thank you again for your Signing Up. If you have any questions, please <a href='http://dcm.uhcl.edu/c432017sp02errabellyr/atest.aspx'>contact us</a>  " +
            "us at<give the link to the Contact Us.<br/>" + "\n" +
            "With Best Wishes.<br/>" + "\n" +
            "gateWay school Account administration Team<br/>";
            MailMessage mailObj_d = new MailMessage();
            mailObj_d.Body = msgBody;
            mailObj_d.From = new MailAddress("ranadheerwad@gmail.com", "Gateway school Administration Team");
            mailObj_d.To.Add(new MailAddress(msgTo));
            mailObj_d.Subject = msgSubject;
            mailObj_d.IsBodyHtml = true;
            SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
            SMTPClient.Host = "smtp.gmail.com";
            SMTPClient.Port = 587;
            SMTPClient.Credentials = new System.Net.NetworkCredential("ranadheerwad@gmail.com", "ranadheerwad123");
            SMTPClient.EnableSsl = true;
            try { SMTPClient.Send(mailObj_d); }
            catch (Exception ex) {
                Console.WriteLine("Excepption found", ex);
            }
        }
    }
}