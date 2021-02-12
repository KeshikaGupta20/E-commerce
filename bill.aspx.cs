using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;


public partial class bill : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string s = "";
    string str = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["order"] == null)
        {

            Response.Redirect("sign in.aspx");

        }
        else
        {
            Label2.Text=Session["order"].ToString();
            orderdate();
            custmerdetail();
            gridtab();
            total();
        }
    }
    
    //private void exportpdf()
    //{
    //    Response.ContentType = "application/pdf";
    //    Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");

    //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
    //    StringWriter sw = new StringWriter();
    //    HtmlTextWriter hw = new HtmlTextWriter(sw);
    //    Panel1.RenderControl(hw);
    //    StringReader sr = new StringReader(sw.ToString());
    //    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
    //    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
    //    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
    //    pdfDoc.Open();
    //    htmlparser.Parse(sr);
    //    pdfDoc.Close();
    //    Response.Write(pdfDoc);
    //    Response.End();
    //}

    private void gridtab()
    {
        if (Session["order"] == null)
        {
            Response.Redirect("sign in.aspx");
        }
        else
        {
            str = Session["order"].ToString();
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(" select * from orderdetails where orderid='" + str + "' ", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }

    private void orderdate()
    {
        if (Session["order"] == null)
        {
            Response.Redirect("sign in.aspx");
        }
        else
        {
            str = Session["order"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("select date from orderaddress where orderid=@orderid", con);
            cmd.Parameters.AddWithValue("@orderid", str);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();

            }
            con.Close();
        }
    }

    private void total()
    {
        str = Session["order"].ToString();
        if (Session["order"] != null)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select sum(pricee) from orderdetails where orderid='" + str + "' ", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            Label6.Text = " "+ i.ToString();


        }

    }

    private void custmerdetail()
    {
        if (Session["order"] == null)
        {
            Response.Redirect("sign in.aspx");
        }
        else
        {
            str = Session["order"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("select custname , address  from orderaddress where orderid=@orderid", con);
            cmd.Parameters.AddWithValue("@orderid", str);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label7.Text = dr[0].ToString();
                Label4.Text = dr[1].ToString();

            }
            con.Close();
        }

    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("userorder.aspx");
    }
}