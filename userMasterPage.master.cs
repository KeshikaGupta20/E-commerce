using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class userMasterPage : System.Web.UI.MasterPage
{
     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "";
        str = Session["user"].ToString();

        if (Session["user"] != null)
        {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select count(proname) from cart where userid=@userid", con);
        cmd.Parameters.Add("@userid", str);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label1.Text = dr[0].ToString();
        }
        con.Close();
        }

        if (Session["user"] != null)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select firstname from register where emailid=@emailid", con);
            cmd.Parameters.Add("@emailid", str);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label2.Text = dr[0].ToString();
            }
            con.Close();
        }





    }


}
