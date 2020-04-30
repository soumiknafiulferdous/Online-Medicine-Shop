using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlinePharmacy
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }
        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];

            }
            String orderid;
            orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

            Label1.Text = orderid;


        }

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label3.Text += Session["New"].ToString();
            }
            else
                Response.Redirect("CustomerLogin.aspx");
            SqlConnection sscon = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            String myquery1 = "select Id from Customer where Username= '" + Label3.Text+"'";
              SqlCommand cmd1 = new SqlCommand(myquery1);
            sscon.Open();
             cmd1.Connection = sscon;
            SqlDataReader myReader = cmd1.ExecuteReader();
            //SqlCommand myCommand = new SqlCommand("select * from table",sscon);
           
            while (myReader.Read())
            {
                Label4.Text = myReader["Id"].ToString();

            }
            sscon.Close();
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("medicineid");
                dt.Columns.Add("medicinename");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("image");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        // String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=haritiShopping;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                       // SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Medicine where Id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["medicineid"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["medicinename"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        //String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=haritiShopping;Integrated Security=True";
                        //SqlConnection scon = new SqlConnection(mycon);
                        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                        String myquery = "select * from Medicine where Id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["medicineid"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["medicinename"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }


                }
                // Label2.Text = GridView1.Rows.Count.ToString();

            }
            Label2.Text = DateTime.Now.ToShortDateString();
            findorderid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];



            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into OrderDetails(Orderid,Sno,CustomerId,MedicineId,MedicineName,Price,Quantity,OrderDate) values('" + Label1.Text + "'," + dt.Rows[i]["sno"] + ",'" + Label4.Text + "'," + dt.Rows[i]["medicineid"] + ",'" + dt.Rows[i]["medicinename"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["quantity"] + ",'" + Label2.Text + "')";
                //String mycon1 = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=ShoppingData;Integrated Security=True";
                //SqlConnection s = new SqlConnection(mycon1);
                SqlConnection s = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();

            }
            
            Response.Redirect("Invoice.aspx?OrderId=" +Label1.Text);
            //Response.Redirect("placedsuccessfully2.aspx?orderid=" + Label3.Text);
        }
    }

}