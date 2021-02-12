using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class view : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string s = "";
    string str = "";
    double discount=0.00;
    double p = 0 ;
    double dp=0.00;
    double d = 0.00;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pro"] == null)
        {
            
            Response.Redirect("sign in.aspx");
        }
        else
        {
            //LinkButton asp = sender as LinkButton;
            //Label lb = (Label)asp.FindControl("Label1");
            s = Session["pro"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from product where proid=@proid", con);
            cmd.Parameters.Add("@proid", s);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label10.Text = dr[2].ToString();
                Label12.Text = dr[0].ToString();
                Label13.Text = dr[1].ToString();
                Label20.Text = dr[3].ToString();
                Label15.Text = dr[5].ToString();
                Label17.Text = dr[6].ToString();
                Image6.ImageUrl = "~/" + dr[7].ToString();
            }
            con.Close();

      

        p = Convert.ToDouble(Label15.Text);
        d = Convert.ToDouble(Label20.Text) / 100;
        discount = p * d;
        dp = p - discount;

        Label18.Text = Convert.ToString(dp);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("sign in.aspx");
        }
        else
        {

            str = Session["user"].ToString();
            con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("insert into cart(userid,proid,proname,price,quan,size)values(@userid,@proid,@proname,@price,@quan,@size)", con);
                cmd.Parameters.Add("@userid", str);
                cmd.Parameters.Add("@proid", Label12.Text);
                cmd.Parameters.Add("@proname", Label13.Text);
                cmd.Parameters.Add("@price", Label18.Text);
                cmd.Parameters.Add("@quan", TextBox2.Text);
                cmd.Parameters.Add("@size", TextBox3.Text);



                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Write("<script>alert (' Added to cart')</script>");
                }
                else
                {
                    Response.Write("<script>alert (' Oops! error oocured')</script>");
                }
            }
            finally
            {
                con.Close();
            }

            
            str = Session["user"].ToString();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into orderdetails(userid,prooid,prooname,pricee,quann,sizee)values(@userid,@prooid,@prooname,@pricee,@quann,@sizee)", con);
            cmd1.Parameters.AddWithValue("@userid", str);
            cmd1.Parameters.AddWithValue("@prooid", Label12.Text);
            cmd1.Parameters.AddWithValue("@prooname", Label13.Text);
            cmd1.Parameters.AddWithValue("@pricee", Label18.Text);
            cmd1.Parameters.AddWithValue("@quann", TextBox2.Text);
            cmd1.Parameters.AddWithValue("@sizee", TextBox3.Text);



            int j = cmd1.ExecuteNonQuery();

            con.Close();

                con.Open();
            
                SqlCommand cmd2 = new SqlCommand("update product set quantity=(quantity-1) where proid=@proid", con);
                cmd2.Parameters.AddWithValue("@proid", Label12.Text);

                int z = cmd2.ExecuteNonQuery();

                con.Close();


        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("men.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        str = Session["user"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into wish(userid,proid,proname,category,price)values(@userid,@proid,@proname,@category,@price)", con);

        cmd.Parameters.Add("@userid", str);
        cmd.Parameters.Add("@proid", Label12.Text);
        cmd.Parameters.Add("@proname", Label13.Text);
        cmd.Parameters.Add("@price", Label18.Text);
        cmd.Parameters.Add("@category", Label10.Text);
       

        int i = cmd.ExecuteNonQuery();

        if (i > 0)
        {
            Response.Write("<script>alert (' Added to Wish List')</script>");
        }
        else
        {
            Response.Write("<script>alert (' Oops! error oocured')</script>");
        }
        con.Close();
    }
}