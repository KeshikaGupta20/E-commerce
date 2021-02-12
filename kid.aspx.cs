using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class kid : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    string s = ""; 

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 1)
        {

            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category In ('Kid boy') ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (DropDownList1.SelectedIndex == 2)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Kid girl' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
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
}