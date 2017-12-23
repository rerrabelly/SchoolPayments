using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class addstudent : System.Web.UI.Page
{
    protected void cancel(object sender, EventArgs e)
    {
        Response.Redirect("~/mystudents.aspx");
    }
    protected void addtolist(object sender, EventArgs e)
    {
        List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;
        UserInfor uinfo = Session["currentUser"] as UserInfor;
        var flag = uinfo.MyStudents.Find(x => x.StudentId == studentid.Text);
        if(flag != null)
        {
            Response.Write("<script>alert('The student is already in your list.');</script>");

        }
        else
        {
            StudentInfor sinfo = new StudentInfor();

            SqlConnection db_conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432017sp02errabellyr;Persist Security Info=True;User ID=errabellyr;Password=1472539;Asynchronous Processing=true;MultipleActiveResultSets=True");
            String query_builder = "INSERT INTO Errabelly_WADSP17_STUDENT(EmailAddress,StudentId,StudentFirstName,StudentLastName,SchoolName) VALUES(" + "'" + uinfo.EmailAddress + "', '" + studentid.Text + "', '" + fname.Text + "', '" + lname.Text + "', '" + sname.Text + "')";
            SqlCommand sql_query = new SqlCommand(query_builder, db_conn);
            try
            {
                db_conn.Open();
                sql_query.ExecuteNonQuery();
            }
            finally
            { db_conn.Close();}

            sinfo.StudentFirstName = fname.Text;
            sinfo.StudentLastName = lname.Text;
            sinfo.StudentId = studentid.Text;
            sinfo.SchoolName = sname.Text;
            uinfo.MyStudents.Add(sinfo);
            Application["AllUsersList"] = allUsersList;
            Response.Redirect("~/MyStudents.aspx");
        }

    }


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
}