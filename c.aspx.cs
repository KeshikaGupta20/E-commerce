using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class c : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string str = "";

    protected void Page_Load(object sender, EventArgs e)
    {

        //string str = "";

        //if (Session["user"] == null)
        //{
        //    Response.Redirect("sign in.aspx");
        //}

        str = Session["user"].ToString();
        con.Open();

        SqlDataAdapter ad = new SqlDataAdapter(" select * from cart where userid='" + str + "' ", con)
            ;
        DataSet ds = new DataSet();
        ad.Fill(ds);

        GridView2.DataSource = ds;
        GridView2.DataBind();
        con.Close();
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
    //    LinkButton asp = sender as LinkButton;

    //    Label lb = (Label)asp.FindControl("label1");
    //    con.Open();
    //    SqlDataAdapter ad = new SqlDataAdapter("delete from cart where proname='" + lb.Text + "'", con);
    //    DataSet ds = new DataSet();
    //    ad.Fill(ds);
    //    con.Close();
    }
   
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        //LinkButton asp = sender as LinkButton;
        //Label lb = (Label)asp.FindControl("label1");
        //con.Open();
        //SqlDataAdapter ad = new SqlDataAdapter("delete from cart where proname='" + lb.Text + "'", con);
        //DataSet ds = new DataSet();
        //ad.Fill(ds);
        ////GridView2.DataSource = ds;
        ////GridView2.DataBind();

        //con.Close();

    }
    protected void LinkButton1_Click2(object sender, EventArgs e)
    {
        LinkButton asp = sender as LinkButton;
        Label lb = (Label)asp.FindControl("label1");
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("delete from cart where proname='" + lb.Text + "'", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        //GridView2.DataSource = ds;
        //GridView2.DataBind();

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        foreach (GridViewRow gvd in GridView2.Rows)
        {
            SqlCommand cmd = new SqlCommand("insert into orderdetails(userid,productid,productname,amount,size,quantity) values ('" + gvd.Cells[0].Text + "','" + gvd.Cells[1].Text + "','" + gvd.Cells[2].Text + "','" + gvd.Cells[3].Text + "','" + gvd.Cells[4].Text +"','" + gvd.Cells[5].Text +"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        Label3.Text = "Records inserted successfully";
            //Response.Redirect("buyform.aspx");
            //str = Session["user"].ToString();
            //con.Open();
            //SqlDataAdapter ad = new SqlDataAdapter("Truncate table cart where userid='" + str + "' ", con);
            //DataSet ds = new DataSet();
            //ad.Fill(ds);
            //con.Close();
        }
    }

   

