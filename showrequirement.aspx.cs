using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class showrequirement : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    

    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
   
    protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
    {
        con.Open();
        foreach (GridViewRow gvd in GridView1.Rows)
        {
            Label lb = (Label)gvd.FindControl("label2");
            CheckBox chk = (CheckBox)gvd.FindControl("Checkbox1");

            if (chk != null && chk.Checked)
            {
                SqlCommand cmd = new SqlCommand("update required set status=@status where productid=productid", con);
                cmd.Parameters.AddWithValue("@status", "Available");
                cmd.Parameters.AddWithValue("@productid", lb.Text);
                cmd.ExecuteNonQuery();

            }

        }
        GridView1.DataBind();

        con.Close();

    }
    protected void CheckBox2_CheckedChanged1(object sender, EventArgs e)
    {
        con.Open();
        foreach (GridViewRow gvd in GridView1.Rows)
        {
            Label lb = (Label)gvd.FindControl("label2");
            CheckBox chk = (CheckBox)gvd.FindControl("Checkbox2");

            if (chk != null && chk.Checked)
            {
                SqlCommand cmd = new SqlCommand("update required set status=@status where productid=productid", con);
                cmd.Parameters.AddWithValue("@status", "Not Available");
                cmd.Parameters.AddWithValue("@productid", lb.Text);
                cmd.ExecuteNonQuery();

            }

        }
        GridView1.DataBind();

        con.Close();

    }
}