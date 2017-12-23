using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class support : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Do somthing
        Response.Redirect("~/Login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Do somthing
        Response.Redirect("~/createaccount.aspx");
    }

    protected void email_click(object sender, EventArgs e)
    {

        String msgSubject = "We have Received your Message!";
        String mailTo = TextBox4.Text;
        String msgBody = "Dear Parent, <br/>" + "\n" +
        "You are receiving this email beacause as you contacted us with a comment,question(s) and/or a concern(s). <br/>" + "\n" +
         "Our Support staff will respond within the next 48 hours.<br/>" + "\n" +
        "Thank you,<br/>" + "\n" +
         "gateWay school Account administration Team<br/>";
        MailMessage mailObj_d = new MailMessage();
        mailObj_d.Body = msgBody;
        mailObj_d.From = new MailAddress("ranadheerwad@gmail.com", "Gateway school Administration Team");
        mailObj_d.To.Add(new MailAddress(mailTo));
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
        string script = "<script type=\"text/javascript\">alert('Thank you for your message. An email has been sent to the address that you entered. Please feel free to contact us anytime in the future so we will address your concerns.'); </script>";
        ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);


    }

    protected void SMButton_click(object sender, EventArgs e)
    {
        //Do somthing
        Response.Redirect("~/createaccount.aspx");
    }

    protected void lg_click(object sender, EventArgs e)
    {
        UserInfor uinfo = Session["currentUser"] as UserInfor;

        if (uinfo != null)
        {
            Response.Redirect("Mystudents.aspx");

        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}