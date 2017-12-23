using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class faq : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ca_click(object sender, EventArgs e)
    {
        Response.Redirect("~/createaccount.aspx");
    }
    protected void login_click(object sender, EventArgs e)
    {
        Response.Redirect("~/login.aspx");
    }
}