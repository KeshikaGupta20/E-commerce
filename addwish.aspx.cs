using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class addwish : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    string str = "";
    string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        str = Session["user"].ToString();
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter(" select * from wish where userid='" + str + "' ", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("men.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton asp = sender as LinkButton;
        Label lb = (Label)asp.FindControl("label1");

        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("delete from wish where proid='" + lb.Text + "'", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        

        con.Close();
    }
}