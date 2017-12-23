using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Cancel_click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void Login_click(object sender, EventArgs e)
    {

        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;

        string uname = emailtb.Text;
        string pwd = pwdtb.Text;
        Boolean loggedin = false;
        foreach (UserInfor u in allUsersList)
        {
            if (u.EmailAddress == uname)
            {
                if (u.Password == pwd)
                {
                    Session["currentUser"] = u;
                    Response.Redirect("~/mystudents.aspx");
                }
                else
                {
                    loggedin = true;
                    break;
                }
            }
        }

        if (!loggedin)
        {
            Response.Write("<script>alert('It appears that this user is not in our database. Please signup first')</script>");
        }
        else
        {
            Response.Write("<script>alert('Incorrect Password')</script>");
        }

    }
    
}