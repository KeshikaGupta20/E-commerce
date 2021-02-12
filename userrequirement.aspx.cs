using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class userrequirement : System.Web.UI.Page
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
                Label4.Text = dr[6].ToString();
            }
            con.Close();
        }

        Label7.Text = DateTime.Now.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO required(userid,date,productid,size)values(@userid,@date,@productid,@size)", con);
        cmd.Parameters.AddWithValue("@userid",Label4.Text);
        cmd.Parameters.AddWithValue("@date", Label7.Text);
        cmd.Parameters.AddWithValue("@productid", TextBox1.Text);
        cmd.Parameters.AddWithValue("@size", TextBox2.Text);

        int i = cmd.ExecuteNonQuery();

        if (i > 0)
        {
            Response.Write("<script>alert (' Requirement Successfully Send')</script>");
        }

        else
            Response.Write("<script>alert ('Oops error in Sending')</script>");

        con.Close();

        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        str = Session["user"].ToString();
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter(" select * from required where userid='" + str + "' ", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

    }
}