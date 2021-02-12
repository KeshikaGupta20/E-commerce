using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class userdetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "";
        str = Session["user"].ToString();

        if (Session["user"] != null)
        {
            //con.Open();
            //SqlCommand cmd = new SqlCommand("Select count(userid) from register where emailid=@emailid", con);
            //cmd.Parameters.Add("@emailid", str);
            //SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{
            //    Label2.Text = dr[0].ToString();
            //}
            //con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("select Count(userid) from register", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            
            Label2.Text = "total users"+"="+ i.ToString();
            
       
        }

         bind();

    }
    protected void bind()
    {

        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select *from register", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        con.Close();
    }
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
}