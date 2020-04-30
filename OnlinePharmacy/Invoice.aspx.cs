using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Configuration;

namespace OnlinePharmacy
{
    public partial class Invoice : System.Web.UI.Page
    {
        private void findorderdate(String Orderid)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            // String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=ShoppingData; Integrated Security=True";
            String myquery = "Select * from OrderDetails where OrderId='" + Orderid + "'";
            //SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label4.Text = ds.Tables[0].Rows[0]["OrderDate"].ToString();

            }

            con.Close();
        }
        private void findaddress(String Orderid)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            // String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=ShoppingData; Integrated Security=True";
            String myquery = "SELECT * FROM Customer JOIN Orderdetails ON Customer.ID = Orderdetails.CustomerId where OrderDetails.OrderId='" + Orderid + "'";
            // SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label5.Text = ds.Tables[0].Rows[0]["Address"].ToString();

            }

            con.Close();
        }
        private void findname(String Orderid)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            String myquery = "SELECT * FROM Customer JOIN Orderdetails ON Customer.ID = Orderdetails.CustomerId where OrderDetails.OrderId='" + Orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label8.Text = ds.Tables[0].Rows[0]["Username"].ToString();
                Label9.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
            }

            con.Close();
        }
        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("sno");
            dt.Columns.Add("medicineid");
            dt.Columns.Add("medicinename");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            // String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=ShoppingData;Integrated Security=True";
            // SqlConnection scon = new SqlConnection(mycon);
            SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            String myquery = "select * from OrderDetails where OrderId='" + orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
                dr["medicineid"] = ds.Tables[0].Rows[i]["medicineid"].ToString();
                dr["medicinename"] = ds.Tables[0].Rows[i]["medicinename"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                int price = Convert.ToInt16(ds.Tables[0].Rows[i]["price"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                int totalprice = price * quantity;
                dr["totalprice"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

            Label7.Text = grandtotal.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Request.QueryString["OrderId"];
            //Panel1.Visible = true;
            Label3.Text = Label2.Text;
            findorderdate(Label2.Text);
            findaddress(Label2.Text);
            findname(Label2.Text);
            showgrid(Label2.Text);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            exportpdf();
        }
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

    }
}