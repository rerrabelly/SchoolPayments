using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserInfor uinfo = Session["currentUser"] as UserInfor;

        if (uinfo != null)
        {
            cabutton.Enabled = false;
            lbutton.Text = "Logout";
            ddca.Enabled = false;
            //"javascript:void(0);"
            ddlogin.Text = "Logout";
            


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        UserInfor uinfo = Session["currentUser"] as UserInfor;

        if (uinfo != null)
        {

            Session.Abandon();
            Response.Write("<script>alert('You are now logged out')</script>");

            lbutton.Enabled = true;
            lbutton.Text = "Login";
            cabutton.Text = "Create Account";
            cabutton.Enabled = true;
           

        }
        else {
            Response.Redirect("~/login.aspx");
        }
            
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Do somthing
        Response.Redirect("~/createaccount.aspx");
    }
    protected void TM_Email(object sender, System.EventArgs e)
    {
            String msgTo = TextBox3.Text;
            String msgSubject = "We have Received your Message!";
            String msgBody = "Dear Parent, <br/>" + "\n" +
            "You are receiving this email beacause as you contacted us with a comment,question(s) and/or a concern(s). <br/>" + "\n" +
             "Our Support staff will respond within the next 48 hours.<br/>" + "\n" +
            "Thank you,<br/>" + "\n" +
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
            catch (Exception ex) { 
            Console.WriteLine("Excepption found", ex);}
            string script = "<script type=\"text/javascript\">alert('Thank you for your message. An email has been sent to the address that you entered. Please feel free to contact us anytime in the future so we will address your concerns.'); </script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);


    }

}
