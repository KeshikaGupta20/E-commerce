﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class adminchngepass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    string str = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("sign in.aspx");
        }
        else
        {
           
            con.Open();
            SqlCommand cmd = new SqlCommand("update admin set password=@password where userid=@userid", con);
            cmd.Parameters.AddWithValue("@userid", "admin@gmail.com");
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Write("<script>alert (' Your Password is Changed')</script>");
            }
            else
                Response.Write("<script>alert (' Error Occured in Changing')</script>");

            con.Close();
        }
    }
}