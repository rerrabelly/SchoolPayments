using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        using (System.Data.SqlClient.SqlConnection sql = new System.Data.SqlClient.SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432017sp02errabellyr;Persist Security Info=True;User ID=errabellyr;Password=1472539"))
        {
            sql.Open();

            String selectquery = "SELECT * FROM Errabelly_WADSP17_userinfo";

            System.Data.SqlClient.SqlDataAdapter ad = new System.Data.SqlClient.SqlDataAdapter(selectquery, sql);

            DataSet ds = new DataSet();
            ad.Fill(ds);
            g1.DataSource = ds;
            g1.DataBind();
            sql.Close();


        }
    }
}