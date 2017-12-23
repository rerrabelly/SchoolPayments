using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class recover : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cancel_button(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void recover_button(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void rp_email(object sender, EventArgs e)
    {
        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;

        bool flag_email= allUsersList.Any(x => x.EmailAddress == mail.Text);

        if(flag_email)
        {
            UserInfor uinfo = allUsersList.Find(X => X.EmailAddress == mail.Text);
            

            //ClientScript.RegisterStartupScript(this.GetType(), "Success", "<script type='text/javascript'>alert('Thank you for signing up.You can now login using login option. An email has also been sent to the email address you proided during Sign up');window.location='login.aspx';</script>'");

            //UserInfor rp_user = allUsersList.Find.email();
            String rp_pwd = uinfo.Password;
            String msgTo = mail.Text;
            String msgSubject = "We have Received your Message!";
            String msgBody = "Dear Parent, <br/>" + "\n" +
            "You are receiving this email because you requested to recover your password. <br/>" + "\n" +
            "Your current password is: " +  rp_pwd + "<br/>\n" +
            "Thank you.<br/>" + "\n" +
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
            SMTPClient.Credentials = new NetworkCredential("ranadheerwad@gmail.com", "ranadheerwad123");
            SMTPClient.EnableSsl = true;
            try { SMTPClient.Send(mailObj_d); }
            catch (Exception ex)
            {
                Console.WriteLine("Excepption found", ex);
            }
            string script = "<script type=\"text/javascript\">alert('Thank you. An email notification has been sent to the address that you entered'); </script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);



        }
        else {

            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Sorry, We cannot find an matching email. Please sign up')", true);


        }
        

     }
}