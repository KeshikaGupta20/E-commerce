using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class buyform : System.Web.UI.Page
{
     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    string s = "";
    string str = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            str = Session["user"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("select proid from cart where userid=@userid", con);
            cmd.Parameters.Add("@userid", str);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
                Label4.Text = dr[1].ToString();
                Label5.Text = dr[2].ToString();
                Label6.Text = dr[3].ToString();
                Label7.Text = dr[4].ToString();

            }
            con.Close();
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["user"]!=null)
        {

            //Response.Redirect("sign in.aspx");
        //}
        //else 
            str = Session["user"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand("UPDATE product SET quantity=(quantity-1) where proid IN('select proid from cart where userid=@userid ')", con);
            cmd.Parameters.Add("@userid", str);
            cmd.ExecuteNonQuery();
            //int i = cmd.ExecuteNonQuery();

            //if (i > 0)
            //{
            //    //Response.Write("<script>alert (' Your Profile updated')</script>");
            
            //else
                //Response.Write("<script>alert (' Error Occured in Updation')</script>");

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
            SqlDataAdapter ad = new SqlDataAdapter("delete from cart where userid= '" + str + "' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();

            Response.Write("<script>alert('Thankyou!! your order is successfully placed')</script>");
            //Response.Write("thankyou for ordering");
            name.Text = "";
            number.Text = "";
            pin.Text = "";
            add.Text = "";
            //}
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("men.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}