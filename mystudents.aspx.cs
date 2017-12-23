using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mystudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;

        UserInfor uinfo = Session["currentUser"] as UserInfor;

        mslabel.Text = "My Students for " + uinfo.FirstName +" " + uinfo.LastName;

        

        if (uinfo.MyStudents == null)    
        {
            TableRow row1 = new TableRow();
            TableCell cell1 = new TableCell();
            cell1.Text = "No records found";
            row1.Cells.Add(cell1);
            mstable.Rows.Add(row1);

        }

        else
        {
            foreach (StudentInfor s in uinfo.MyStudents)
            {
                TableRow r1 = new TableRow();
                TableCell tCell1 = new TableCell();
                TableCell tCell2 = new TableCell();
                TableCell tCell3 = new TableCell();
                TableCell tCell4 = new TableCell();
                tCell1.Text = s.StudentFirstName;
                r1.Cells.Add(tCell1);
                tCell2.Text = s.StudentLastName;
                r1.Cells.Add(tCell2);
                tCell3.Text = s.StudentId;
                r1.Cells.Add(tCell3);
                tCell4.Text = s.SchoolName;
                r1.Cells.Add(tCell4);
                r1.Style.Add("text-align", "center");
                mstable.Rows.Add(r1);
            }
        }
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