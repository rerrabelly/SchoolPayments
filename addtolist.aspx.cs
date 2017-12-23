using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addtolist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void asclick(object sender, EventArgs e)
    {
        Response.Redirect("~/addstudent.aspx");
    }
    protected void ok_click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}