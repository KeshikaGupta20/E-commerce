using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class add_account : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GenerateAutoID();
        }
    }
    private void GenerateAutoID()
    {
        string pass = "123456789";
        Random r = new Random();
        char[] mypass = new char[3];
        for (int i = 0; i < 3; i++)
        {
            mypass[i] = pass[(int)(5 * r.NextDouble())];
        }

        string userid;
        userid = "" /*+ DateTime.Now.Hour.ToString() 
                     * + DateTime.Now.Minute.ToString()
                     * + DateTime.Now.Second.ToString()
                     * + DateTime.Now.Day.ToString() 
                     * + DateTime.Now.Month.ToString()
                     * + DateTime.Now.Year.ToString()*/ + new string(mypass);
        Label16.Text = userid;
       
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO register(userid,firstname,lastname,address,pincode,contactno,emailid,dob,gender,password,sq,sa)values(@userid,@firstname,@lastname,@address,@pincode,@contactno,@emailid,@dob,@gender,@password,@sq,@sa)", con);
        cmd.Parameters.Add("@firstname", TextBox1.Text);
        cmd.Parameters.Add("@lastname", TextBox2.Text);
        cmd.Parameters.Add("@address", TextBox3.Text);
        cmd.Parameters.Add("@pincode", TextBox5.Text);
        cmd.Parameters.Add("@contactno", TextBox6.Text);
        cmd.Parameters.Add("@emailid", TextBox7.Text);
        cmd.Parameters.Add("@dob", TextBox8.Text);
        cmd.Parameters.Add("@gender", RadioButtonList1.SelectedValue);
        cmd.Parameters.Add("@password", TextBox9.Text);
        cmd.Parameters.Add("@sq", DropDownList2.SelectedValue);
        cmd.Parameters.Add("@sa", TextBox11.Text);
        cmd.Parameters.Add("@userid", Label16.Text);

        int i = cmd.ExecuteNonQuery();

        if (i > 0)
        {
            Response.Write("<script>alert (' Successfully Register')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox11.Text = "";
            DropDownList2.SelectedIndex = 0;
            RadioButtonList1.SelectedIndex = 0;
            //if()
            //{
            //Response.Redirect("add account.aspx");
            //}
        }
        else
            Response.Write("<script>alert ('error oocured in register')</script>");

        con.Close();

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox11.Text = "";
        DropDownList2.SelectedIndex = 0;
        RadioButtonList1.SelectedIndex = 0;
    }
}