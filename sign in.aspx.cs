using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class sign_in : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {

    }


    protected void Button3_Click1(object sender, EventArgs e)
    {
        Label5.Visible = true;

          if (DropDownList1.SelectedIndex == 1)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from register where emailid=@emailid ", con);
            cmd.Parameters.Add("@emailid", TextBox1.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            string pass = "";

            while (dr.Read())
            {
                pass = dr[9].ToString();
            }
            if (pass == " ")
            {
                Label5.Text = "invalid emailid";
            }
            else
                if (pass == TextBox2.Text)
                {
                    Session["user"] = TextBox1.Text;
                    Response.Redirect("homeuser.aspx");
                }
                else
                {
                    Label5.Text = "Incorrect password";
                }
           
        }
        else

              if (DropDownList1.SelectedIndex == 2)
              {
                  con.Open();
                  SqlCommand cmd = new SqlCommand("select * from admin where userid=@userid ", con);
                  cmd.Parameters.Add("@userid", TextBox1.Text);
                  SqlDataReader dr = cmd.ExecuteReader();
                  string pass = "";

                  while (dr.Read())
                  {
                      pass = dr[1].ToString();
                  }
                  if (pass == " ")
                  {
                      Label5.Text = "invalid emailid";
                  }
                  else
                      if (pass == TextBox2.Text)
                      {
                          Session["user"] = TextBox1.Text;
                          Response.Redirect("userdetail.aspx");
                      }
                      else
                      {
                          Label5.Text = "Incorrect password";
                      }
                  con.Close();
              }
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if (DropDownList1.SelectedIndex == 1)
        //{
        //    Response.Redirect("men.aspx");
        //}
        //else if (DropDownList1.SelectedIndex == 2)
        //{
        //    Response.Redirect("userdetail.aspx");
        //}
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        con.Open();
        if (TextBox1.Text == "")
        {
            Response.Write("<script>alert('enter the ValueType')</script>");
        }
        else
        {
            SqlCommand cmd = new SqlCommand("select password from register where emailid=@emailid", con);
            cmd.Parameters.Add("@emailid", TextBox1.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            string pass = " ";
            while (dr.Read())
            {
                pass = dr[0].ToString();
            }
            if (pass == " ")
            {
                Label1.Text = ("Invalid user id");

            }
            else
            {
                Session["userid"] = TextBox1.Text;
                Response.Redirect("forgetpg.aspx");
            }

        }
        con.Close();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
    //    if (CheckBox1.Checked == true)
    //    {
    //        TextBox2.TextMode = ;
    //    }
    //    else
    //    {
    //        TextBox2.TextMode = 'Password';
    //    }

    }
}