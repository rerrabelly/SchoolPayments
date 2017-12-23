<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["AllUsersList"] = new List<UserInfor>();

        List<UserInfor> allUsersList = new List<UserInfor>();
        //List<UserInfor> allUsersList = Application["AllUserList"];

        SqlConnection db_conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432017sp02errabellyr;Persist Security Info=True;User ID=errabellyr;Password=1472539;Asynchronous Processing=true;MultipleActiveResultSets=True");

        String query1_stmt = "select * from Errabelly_WADSP17_UserInfo";
        SqlCommand query1 = new SqlCommand(query1_stmt, db_conn);

        try
        {
            db_conn.Open();

            SqlDataReader SDR1 = query1.ExecuteReader();

            while (SDR1.Read())
            {
                UserInfor user = new UserInfor();
                user.EmailAddress = SDR1.GetString(0);
                user.Password = SDR1.GetString(1);
                user.FirstName = SDR1.GetString(2);
                user.LastName = SDR1.GetString(3);
                user.SecurityQuestion = SDR1.GetString(4);
                user.SecurityQuestionAnswer = SDR1.GetString(5);
                user.StateOrProvince = SDR1.GetString(6);
                user.SchoolDistrictName = SDR1.GetString(7);
                //user.FirstName = (string)SDR1["FirstName"];
                //user.LastName = (string)SDR1["LastName"];
                //user.Password = (string)SDR1["Password"];
                //user.EmailAddress = (string)SDR1["EmailAddress"];
                //user.SecurityQuestion = (string)SDR1["SecurityQuestion"];
                //user.SecurityQuestionAnswer = (string)SDR1["SecurityQAnswer"];
                //user.StateOrProvince = (string)SDR1["StateOrProvince"];
                //user.SchoolDistrictName = (string)SDR1["SchoolDistName"];

                //here i need to add students list to user.MyStudents
                //fetch the student list from Student table
                //compare the email address and add them to each user
                String query2_stmt = "select * from Errabelly_WADSP17_Student where EmailAddress='"+user.EmailAddress+"'";
                SqlCommand query2 = new SqlCommand(query2_stmt, db_conn);
                SqlDataReader SDR2 = query2.ExecuteReader();
                while (SDR2.Read())
                {
                    StudentInfor student = new StudentInfor();
                    student.StudentId = SDR2.GetString(0);
                    student.EmailAddress = SDR2.GetString(1);
                    student.StudentFirstName = SDR2.GetString(2);
                    student.StudentLastName = SDR2.GetString(3);
                    student.SchoolName = SDR2.GetString(4);
                    user.MyStudents.Add(student);
                }
                allUsersList.Add(user);
                Application["AllUsersList"] = allUsersList;

            }
            db_conn.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine("Exception found", ex);
        }

        if (allUsersList.Count == 0)
        {
            Console.WriteLine("Something");
        }

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
