using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class men : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    string s = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        //con.Open();
        //SqlDataAdapter ad = new SqlDataAdapter(" select proid,proname,category from product where proid=@proid", con);

        //DataSet ds = new DataSet();
        //ad.Fill(ds);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();

        //con.Close();

        //LinkButton asp = sender as LinkButton;
        //Label lb = (Label)asp.FindControl("Label1");
        //con.Open();
        //SqlCommand cmd = new SqlCommand("select proid,proname,category from product where proid=@proid", con);
        //cmd.Parameters.Add("@proid", lb.Text);
        //SqlDataReader dr = cmd.ExecuteReader();
        //while(dr.Read())
        //{
        //    Label5.Text=



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("buyform.aspx");
        //Label2.Text = Label7.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("buyform.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("buyform.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("buyform.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("buyform.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        
    }
    //cart code//
    //protected void Button7_Click(object sender, EventArgs e)
    //{
    //    string str = Session["user"].ToString();
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("insert into cart(userid,proname,price,quan)values(@userid,@proname,@price,@quan)", con);
    //    cmd.Parameters.Add("@userid", str);
    //    cmd.Parameters.Add("@proname", Label7.Text);
    //    cmd.Parameters.Add("@price", Convert.ToInt32(Label2.Text));
    //    cmd.Parameters.Add("@quan", TextBox1.Text);


    //    int i = cmd.ExecuteNonQuery();

    //    if (i > 0)
    //    {
    //        Response.Write("<script>alert (' Added to cart')</script>");
    //    }
    //    else
    //        Response.Write("<script>alert ('  error oocured in adding')</script>");

    //    con.Close();
    //}
    //protected void Button8_Click(object sender, EventArgs e)
    //{
    //    string str = Session["user"].ToString();
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("insert into cart(userid,proname,price,quan)values(@userid,@proname,@price,@quan)", con);
    //    cmd.Parameters.Add("@userid", str);
    //    cmd.Parameters.Add("@proname", Label8.Text);
    //    cmd.Parameters.Add("@price", Convert.ToInt32(Label4.Text));
    //    cmd.Parameters.Add("@quan", TextBox2.Text);

    //    int i = cmd.ExecuteNonQuery();

    //    if (i > 0)
    //    {
    //        Response.Write("<script>alert (' Added to cart')</script>");
    //    }
    //    else
    //        Response.Write("<script>alert ('  error oocured in adding')</script>");

    //    con.Close();
    //}
    //protected void Button9_Click(object sender, EventArgs e)
    //{
    //    string str = Session["user"].ToString();
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("insert into cart(userid,proname,price,quan)values(@userid,@proname,@price,@quan)", con);
    //    cmd.Parameters.Add("@userid", str);
    //    cmd.Parameters.Add("@proname", Label9.Text);
    //    cmd.Parameters.Add("@price", Convert.ToInt32(Label6.Text));
    //    cmd.Parameters.Add("@quan", TextBox3.Text);


    //    int i = cmd.ExecuteNonQuery();

    //    if (i > 0)
    //    {
    //        Response.Write("<script>alert (' Added to cart')</script>");
    //    }
    //    else
    //        Response.Write("<script>alert ('  error oocured in adding')</script>");

    //    con.Close();
    //}
    //protected void Button10_Click(object sender, EventArgs e)
    //{
    //    string str = Session["user"].ToString();
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("insert into cart(userid,proname,price,quan)values(@userid,@proname,@price,@quan)", con);
    //    cmd.Parameters.Add("@userid", str);
    //    cmd.Parameters.Add("@proname", Label12.Text);
    //    cmd.Parameters.Add("@price", Convert.ToInt32(Label18.Text));
    //    cmd.Parameters.Add("@quan", TextBox4.Text);

    //    int i = cmd.ExecuteNonQuery();

    //    if (i > 0)
    //    {
    //        Response.Write("<script>alert (' Added to cart')</script>");
    //    }
    //    else
    //        Response.Write("<script>alert ('  error oocured in adding')</script>");

    //    con.Close();
    //}
    //protected void Button11_Click(object sender, EventArgs e)
    //{
    //    string str = Session["user"].ToString();
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("insert into cart(userid,proname,price,quan)values(@userid,@proname,@price,@quan)", con);
    //    cmd.Parameters.Add("@userid", str);
    //    cmd.Parameters.Add("@proname", Label13.Text);
    //    cmd.Parameters.Add("@price", Convert.ToInt32(Label19.Text));
    //    cmd.Parameters.Add("@quan", TextBox5.Text);


    //    int i = cmd.ExecuteNonQuery();

    //    if (i > 0)
    //    {
    //        Response.Write("<script>alert (' Added to cart')</script>");
    //    }
    //    else
    //        Response.Write("<script>alert ('  error oocured in adding')</script>");

    //    con.Close();
    //}
    //protected void Button12_Click(object sender, EventArgs e)
    //{
    //    string str = Session["user"].ToString();
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("insert into cart(userid,proname,price,quan)values(@userid,@proname,@price,@quan)", con);
    //    cmd.Parameters.Add("@userid", str);
    //    cmd.Parameters.Add("@proname", Label14.Text);
    //    cmd.Parameters.Add("@price", Convert.ToInt32(Label20.Text));
    //    cmd.Parameters.Add("@quan", TextBox6.Text);


    //    int i = cmd.ExecuteNonQuery();

    //    if (i > 0)
    //    {
    //        Response.Write("<script>alert (' Added to cart')</script>");
    //    }
    //    else
    //        Response.Write("<script>alert ('  error oocured in adding')</script>");

    //    con.Close();
    //}
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 1)
        {

            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category In ('Men Casual') ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (DropDownList1.SelectedIndex == 2)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Men Ethnic' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (DropDownList1.SelectedIndex == 3)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Men Summer wear' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (DropDownList1.SelectedIndex == 4)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Men Footwear' ", con);
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