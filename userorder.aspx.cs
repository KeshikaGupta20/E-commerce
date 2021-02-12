using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class userorder : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string str = "";
    string st = "";

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
            SqlDataAdapter ad = new SqlDataAdapter(" select * from orderaddress where userid='" + str + "' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }


        if (Session["user"] == null)
        {
            Response.Redirect("sign in.aspx");
        }
        else
        {
            str = Session["user"].ToString();
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from orderdetails where userid='" + str + "' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);

            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();
        }

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            LinkButton asp = sender as LinkButton;
            Label lb = (Label)asp.FindControl("Label1");
            Session["order"] = lb.Text;
            Response.Redirect("bill.aspx");
        }
    }
}