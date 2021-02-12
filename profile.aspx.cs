using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    string str = "";

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
            SqlCommand cmd = new SqlCommand("Select * from register where emailid=@emailid", con);
            cmd.Parameters.AddWithValue("@emailid", str);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[4].ToString();
                TextBox5.Text = dr[5].ToString();
                Label13.Text = dr[6].ToString();
                TextBox6.Text = dr[7].ToString();
                RadioButtonList1.SelectedValue = dr[8].ToString();
                TextBox7.Text = dr[9].ToString();
                DropDownList1.SelectedValue = dr[10].ToString();
                TextBox9.Text = dr[11].ToString();


            }
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("men.aspx");
    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        str = Session["user"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("update register set firstname=@firstname,lastname=@lastname,address=@address,pincode=@pincode,contactno=@contactno,dob=@dob,gender=@gender,password=@password,sq=@sq,sa=@sa where emailid=@emailid ", con);
        cmd.Parameters.AddWithValue("@emailid", str);
        cmd.Parameters.AddWithValue("@firstname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@lastname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@address", TextBox3.Text);
        cmd.Parameters.AddWithValue("@pincode", TextBox4.Text);
        cmd.Parameters.AddWithValue("@contactno", TextBox5.Text);
        cmd.Parameters.AddWithValue("@dob", TextBox6.Text);
        cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
        cmd.Parameters.AddWithValue("@password", TextBox7.Text);
        cmd.Parameters.AddWithValue("@sq", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@sa", TextBox9.Text);

        int i = cmd.ExecuteNonQuery();

        if (i > 0)
        {
            Response.Write("<script>alert (' Your Profile is updated')</script>");
        }
        else
            Response.Write("<script>alert (' Error Occured in Updation')</script>");

        con.Close();
    }
}