using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    string s = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

        if (Session["user"] != null)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category like 'Men%' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (Session["user"] != null)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category like 'Women%' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        //if (Session["user"] != null)
        //{
        //    con.Open();
        //    SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category like 'Kid%' ", con);
        //    DataSet ds = new DataSet();
        //    ad.Fill(ds);
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();
        //    con.Close();
        //}

        //else
        //{
        //    con.Open();
        //    SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category like 'Home%' ", con);
        //    DataSet ds = new DataSet();
        //    ad.Fill(ds);
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();
        //    con.Close();
        //}

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}