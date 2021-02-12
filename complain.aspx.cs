using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class complain : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    string str = "";

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
            SqlCommand cmd = new SqlCommand("Select *  from register where emailid=@emailid", con);
            cmd.Parameters.AddWithValue("@emailid", str);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label5.Text = dr[6].ToString();
            }
            con.Close();

            Label7.Text = DateTime.Now.ToShortDateString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO complain(date,emailid,sub,content)values(@date,@emailid,@sub,@content)", con);
        cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(Label7.Text));
        cmd.Parameters.AddWithValue("@emailid", Label5.Text);
        cmd.Parameters.AddWithValue("@sub", TextBox2.Text);
        cmd.Parameters.AddWithValue("@content", TextBox3.Text);

        int i = cmd.ExecuteNonQuery();

        if (i > 0)
        {
            Response.Write("<script>alert (' Successfully Send')</script>");
        }

        else
            Response.Write("<script>alert ('Oops error in Sending')</script>");

        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
}