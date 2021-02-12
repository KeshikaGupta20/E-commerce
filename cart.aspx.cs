using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string str = "";
    string st = "";
    DataTable dt = new DataTable();


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
            SqlDataAdapter ad = new SqlDataAdapter(" select * from cart where userid='" + str + "' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        str = Session["user"].ToString();

        if (Session["user"] != null)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select sum(price) from cart where userid='" + str + "' ", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            L.Text = "Total Price" + "=" + i.ToString();


        }

        if (!IsPostBack)
        {
            GenerateAutoID();
        }
        odate.Text = DateTime.Now.ToShortDateString();

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

        string orderid;
        orderid = "order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);
        oid.Text = orderid;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //LinkButton asp = sender as LinkButton;

        //Label lb = (Label)asp.FindControl("label1");
        //con.Open();
        //SqlDataAdapter ad = new SqlDataAdapter("delete from cart where proname='" + lb.Text + "'", con);
        //DataSet ds = new DataSet();
        //ad.Fill(ds);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();

        //con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("men.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        //int i=0 ;
        //string c="";
        //if (Session["user"] != null)
        //{
        //    con.Open();
        //    SqlCommand cmd1 = new SqlCommand("select count(proid) from cart where userid=@userid", con);
        //    cmd1.Parameters.Add("@userid", Session["user"].ToString());
        //    SqlDataReader dr1 = cmd1.ExecuteReader();
        //    while (dr1.Read())
        //    {
        //        c = dr1[0].ToString();
        //    }

        //    SqlCommand cmd = new SqlCommand("select proid from cart where userid=@userid",con);
        //    cmd.Parameters.Add("@userid", Session["user"].ToString());
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        L.Text = dr[0].ToString();
        //        L0.Text = dr[1].ToString();
        //        }
        //    }
        //    con.Close();
        //SqlCommand cmd2 = new SqlCommand("select proid from cart");

        //str = Session["user"].ToString();

        //con.Open();
        //SqlCommand cmd = new SqlCommand("Select proid from cart where emailid=@emailid", con);
        //cmd.Parameters.Add("@emailid", str);
        //cmd.ExecuteNonQuery();


        //str = Session["user"].ToString();
        //con.Open();
        //SqlDataAdapter ad = new SqlDataAdapter("delete from cart where userid= '" + str + "' ", con);
        //DataSet ds = new DataSet();
        //ad.Fill(ds);
        //con.Close();

        Response.Redirect("orderplace.aspx");
    }



    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        //LinkButton asp = sender as LinkButton;
        //Label lb = (Label)asp.FindControl("label1");
        //con.Open();
        //SqlDataAdapter ad = new SqlDataAdapter("delete from cart where proname='" + lb.Text + "'", con);
        //DataSet ds = new DataSet();
        //ad.Fill(ds);
        ////GridView1.DataSource = ds;
        ////GridView1.DataBind();

        //con.Close();
    }
    protected void LinkButton1_Click2(object sender, EventArgs e)
    {
        //LinkButton asp = sender as LinkButton;
        //Label lb = (Label)asp.FindControl("label1");
        //con.Open();
        //SqlDataAdapter ad = new SqlDataAdapter("delete from cart where proname='" + lb.Text + "'", con);
        //DataSet ds = new DataSet();
        //ad.Fill(ds);
        //GridView2.DataSource = ds;
        //GridView2.DataBind();

        //con.Close();
    }
    protected void LinkButton1_Click3(object sender, EventArgs e)
    {
        LinkButton asp = sender as LinkButton;
        Label lb = (Label)asp.FindControl("label2");

        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("delete from cart where proid='" + lb.Text + "'", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        //GridView2.DataSource = ds;
        //GridView2.DataBind();

        con.Close();



        con.Open();
        SqlCommand cmd=new SqlCommand("delete from orderdetails where prooid=@prooid",con);
        cmd.Parameters.AddWithValue("@prooid",lb.Text);

        int i = cmd.ExecuteNonQuery();
        con.Close();


        con.Open();
        SqlCommand cmd1=new SqlCommand("update product set quantity=(quantity+1) where proid=@proid", con);
        cmd1.Parameters.AddWithValue("@proid", lb.Text);

        int j = cmd1.ExecuteNonQuery();

        con.Close();

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        str = Session["user"].ToString();

        LinkButton asp = sender as LinkButton;
        Label lb = (Label)asp.FindControl("label2");
        Session["wishlist"] = lb.Text;
        Response.Redirect("addwish.aspx");
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in GridView1.Rows)
        {
            var checkbox = gvrow.FindControl("CheckBox1") as CheckBox;
            if (checkbox.Checked)
            {
                var lid = gvrow.FindControl("Label2") as Label;
                var lproname = gvrow.FindControl("Label1") as Label;
                var lprice = gvrow.FindControl("Label3") as Label;
                var lsize = gvrow.FindControl("Label4") as Label;
                var lquan = gvrow.FindControl("Label5") as Label;


                SqlCommand cmd = new SqlCommand("insert into orderdetails(orderid,prooid,prooname,pricee,sizee,quann,date)values(@orderid,@prooid,@prooname,@pricee,@sizee,@quann,@date)", con);
                cmd.Parameters.AddWithValue("orderid", oid.Text);
                cmd.Parameters.AddWithValue("prooid", lid.Text);
                cmd.Parameters.AddWithValue("prooname", lproname.Text);
                cmd.Parameters.AddWithValue("pricee", lprice.Text);
                cmd.Parameters.AddWithValue("sizee", lsize.Text);
                cmd.Parameters.AddWithValue("quann", lquan.Text);
                cmd.Parameters.AddWithValue("date", odate.Text);

                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert (' Your Order is Successfully Placed')</script>");
                }
                else
                {
                    Response.Write("<script>alert (' Oops!! Error Occur')</script>");
                }
                con.Close();  


            }
        }
    }
}
