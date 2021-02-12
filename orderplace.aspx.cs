using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class orderplace : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);


    SqlCommand cmd = new SqlCommand();
    string str = "";
    string orderid;
    string odate;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GenerateAutoID();
        }

        
           odate = DateTime.Now.ToShortDateString();
           Label4.Text = odate;

       
            

        str = Session["user"].ToString();
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter(" select * from cart where userid='" + str + "' ", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

        str = Session["user"].ToString();

        if (Session["user"] != null)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select sum(price) from cart where userid='" + str + "' ", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            Label6.Text = "Total Price" + "=" + i.ToString();

        }
    }
    private void GenerateAutoID()
    {
        string pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];
        }

        //string orderid;
        orderid = "order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);
        Label3.Text = orderid;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        str = Session["user"].ToString();
        string stat = "sold";
        string odr = Label3.Text;
        
        con.Open();
        SqlCommand cmd= new SqlCommand("Update orderdetails set status=@status,orderid=@orderid,date=@date where userid=@userid",con);
        cmd.Parameters.AddWithValue("@userid", str);
        cmd.Parameters.AddWithValue("@status",stat.ToString());
        cmd.Parameters.AddWithValue("@orderid", odr.ToString());
        cmd.Parameters.AddWithValue("@date", odate.ToString());
        int i = cmd.ExecuteNonQuery();

        con.Close();

        str = Session["user"].ToString();
        string p = Label6.Text;
        
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Insert into orderaddress(orderid,date,custname,phn,pincode,address,userid,pay)values(@orderid,@date,@custname,@phn,@pincode,@address,@userid,@pay)", con);
        cmd1.Parameters.AddWithValue("@orderid", odr.ToString());
        cmd1.Parameters.AddWithValue("@date", odate.ToString());
        cmd1.Parameters.AddWithValue("@custname", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@phn", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@pincode", TextBox4.Text);
        cmd1.Parameters.AddWithValue("@address", TextBox3.Text);
        cmd1.Parameters.AddWithValue("@userid", str);
        cmd1.Parameters.AddWithValue("@pay", DropDownList1.SelectedValue);
        //cmd1.Parameters.AddWithValue("@totalprice", p.ToString());

        int j= cmd1.ExecuteNonQuery();

        //if (j > 0)
        //{
        //    Response.Write("<script>alert (' Your Order Is Successfully Placed')</script>");
        //}
        //else
        //{
        //    Response.Write("<script>alert (' Oops! error oocured')</script>");
        //}
        con.Close();


        str = Session["user"].ToString();
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("delete from cart where userid= '" + str + "' ", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        con.Close();

        Response.Redirect("thankupage.aspx");

            
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("homeuser.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}