﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class datamo : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BindGrid()
    {
        GridView1.DataSource = (DataTable)ViewState["Customers"];
        GridView1.DataBind();
    }
    protected void Insert(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)ViewState["Customers"];
        dt.Rows.Add(txtName.Text.Trim(), txtCountry.Text.Trim());
        ViewState["Customers"] = dt;
        this.BindGrid();
        txtName.Text = string.Empty;
        txtCountry.Text = string.Empty;
    }


}