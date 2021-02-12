using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class showproduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "";
        str = Session["user"].ToString();

        if (Session["user"] != null)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select Count(proname) from product", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            Label2.Text = "Total Product" + "=" + i.ToString();


        }

    }
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

        if (DropDownList1.SelectedIndex == 5)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Women Casual' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (DropDownList1.SelectedIndex == 6)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Women Ethnic' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (DropDownList1.SelectedIndex == 7)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Women Summer wear' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (DropDownList1.SelectedIndex == 8)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Women Footwear' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (DropDownList1.SelectedIndex == 9)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Kid boy' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (DropDownList1.SelectedIndex == 10)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Kid girl' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        if (DropDownList1.SelectedIndex == 11)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from product where category= 'Home Appliances' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}