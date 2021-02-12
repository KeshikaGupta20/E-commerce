using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class addpro : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //string str = "";
        //for (int j = 0; j < CheckBoxList1.Items.Count; j++)
        //{
        //    if (CheckBoxList1.Items[j].Selected)
        //    {
        //        str = str + CheckBoxList1.Items[j].Text + "  ";
        //    }
        //}

        con.Open();
        String img = FileUpload1.FileName;
        String path = "minor project/" + img;
        // FileUpload1.SaveAs(Server.MapPath(path));


        SqlCommand cmd = new SqlCommand("INSERT INTO product(proid,proname,category,quantity,dis,price,size,image)values(@proid,@proname,@category,@quantity,@dis,@price,@size,@image)", con);
        cmd.Parameters.Add("@proid", TextBox5.Text);
        cmd.Parameters.Add("@proname", TextBox1.Text);
        cmd.Parameters.Add("@category", DropDownList1.SelectedValue);
        cmd.Parameters.Add("@quantity", TextBox2.Text);
        cmd.Parameters.Add("@dis", TextBox6.Text);
        cmd.Parameters.Add("@price", TextBox3.Text);
        cmd.Parameters.Add("@size", TextBox4.Text);
        cmd.Parameters.Add("@image", path);
      
        int i = cmd.ExecuteNonQuery();

        if (i > 0)
        {
            Response.Write("<script>alert ('Product Successfully Added')</script>");
            //TextBox1.Text = "";
            //DropDownList1.SelectedIndex = 0;
            //TextBox2.Text = "";
            //TextBox3.Text = "";
            //TextBox4.Text = "";
            //TextBox5.Text = "";
            //CheckBoxList1.SelectedIndex = -1;


        }
        else
            Response.Write("<script>alert ('error oocured in adding')</script>");

        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        DropDownList1.SelectedIndex = 0;
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
      
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string str = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                str = str + CheckBoxList1.Items[i].Text + "  ";
            }
        }
        TextBox4.Text = str;

    }
}