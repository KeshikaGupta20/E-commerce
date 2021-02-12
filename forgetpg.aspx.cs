using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class forgetpg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    String user = "", squs = "", sans = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        user = Session["userid"].ToString();
        SqlCommand cmd = new SqlCommand("select sq,sa from register where emailid=@emailid", con);
        cmd.Parameters.Add("@emailid", user);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            squs = dr[0].ToString();
            sans = dr[1].ToString();
        }
        Label1.Text = user;
        Label2.Text = squs;

        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (sans == TextBox2.Text)
        {
            Panel1.Visible = true;
        }
        else
            Label2.Text = "incorrect ans";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == TextBox4.Text)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update register set password=@password where emailid=@emailid", con);
            cmd.Parameters.AddWithValue("@password", TextBox3.Text);
            cmd.Parameters.AddWithValue("@emailid", user);

            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Write("<script>alert('your password has reset')</script>");
            }
            else
                Response.Write("<script>alert('Oops!! error')</script>");
            con.Close();
        }
        else
            Response.Write("<script>alert('password mismatch')</script>");
        
    }
}