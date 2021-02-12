using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class view_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "";

        if (Session["user"] == null)
        {
            Response.Redirect("sign in.aspx");
        }
        else
        {
            str = Session["user"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from register where emailid=@emailid", con);
            cmd.Parameters.Add("@emailid", str);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label9.Text =  dr[1].ToString();
                Label10.Text = dr[2].ToString();
                Label11.Text = dr[3].ToString();
                Label12.Text = dr[4].ToString();
                Label13.Text = dr[5].ToString();
                Label14.Text = dr[6].ToString();
                Label15.Text = dr[7].ToString();
            }
        }
        con.Close();
    }
}