using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace OnlinePharmacy
{
    public partial class EditOrder : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
            }
            else
            {
                if (Request.QueryString["sno"] != null)
                {
                    dt = (DataTable)Session["buyitems"];


                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        int sr;
                        int sr1;
                        sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                        Label3.Text = Request.QueryString["sno"];
                        Label4.Text = sr.ToString();
                        sr1 = Convert.ToInt32(Label3.Text);
                        //sr1 = sr1 + 1;


                        if (sr == sr1)
                        {
                            Label1.Text = dt.Rows[i]["sno"].ToString();
                            Label2.Text = dt.Rows[i]["medicineid"].ToString();
                            Label3.Text = dt.Rows[i]["medicinename"].ToString();
                            DropDownList1.Text = dt.Rows[i]["quantity"].ToString();
                            Label4.Text = dt.Rows[i]["price"].ToString();
                            Label5.Text = dt.Rows[i]["totalprice"].ToString();

                            break;

                        }
                    }
                }
                else
                {
                }

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int q;
            q = Convert.ToInt32(DropDownList1.Text);
            int cost;
            cost = Convert.ToInt32(Label4.Text);
            int totalcost;
            totalcost = cost * q;
            Label5.Text = totalcost.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());

                sr1 = Convert.ToInt32(Label1.Text);



                if (sr == sr1)
                {
                    dt.Rows[i]["sno"] = Label1.Text;
                    dt.Rows[i]["medicineid"] = Label2.Text;
                    dt.Rows[i]["medicinename"] = Label3.Text;
                    dt.Rows[i]["quantity"] = DropDownList1.Text;
                    dt.Rows[i]["price"] = Label4.Text;
                    dt.Rows[i]["totalprice"] = Label5.Text;
                    dt.AcceptChanges();

                    break;

                }
            }
            Response.Redirect("AddToCart.aspx");
        }

    }
}
