﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class particpantpage : System.Web.UI.Page
{
    string connstr ="Data Source=(localdb)\\v11.0;Initial Catalog=SMES;Integrated Security=True";
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlDataAdapter da = new SqlDataAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txteventname.Text = (String)Session["cossa"];
            //txteventname.Text = (String)Session["EventName"];//display the chosen label at the click of the button
            txteventname.Enabled = false;
        }
        
       
    }

    protected void btnenroll_click(object sender, EventArgs e)
    {
        string gender = "";
        if (Rbtfemale.Checked == true)
        {
            gender = "Female";

        }
        else
        {
            gender = "Male";
        }

        SqlConnection conn = new SqlConnection(connstr);// creating an instance of the sql connection
        da.InsertCommand = new SqlCommand("Insert into [SMES].[dbo].[Participant] values (@Eventname,@EventType,@Event,@Name,@phone,@Gender)", conn);
        da.InsertCommand.Parameters.AddWithValue("@Eventname", txteventname.Text);
        da.InsertCommand.Parameters.AddWithValue("@EventType", ddleventtype.SelectedValue);
        da.InsertCommand.Parameters.AddWithValue("@Event", ddlevent.SelectedValue);
        da.InsertCommand.Parameters.AddWithValue("@Name",txtname.Text);
        da.InsertCommand.Parameters.AddWithValue("@phone", txtnumber.Text);
        da.InsertCommand.Parameters.AddWithValue("@Gender",gender);
        
        conn.Open();
        da.InsertCommand.ExecuteNonQuery();
        conn.Close();
    }

    protected void Rbtfemale_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection(connstr);

    }
}