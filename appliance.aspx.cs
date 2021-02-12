using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class appliance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Home Appliances' ", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

        bind();
    }
    protected void bind()
    {

        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select *from Product where category= 'Home Appliances' ", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            LinkButton asp = sender as LinkButton;
            Label lb = (Label)asp.FindControl("Label1");
            Session["pro"] = lb.Text;
            Response.Redirect("view.aspx");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}