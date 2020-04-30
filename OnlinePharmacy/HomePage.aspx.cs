using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePharmacy
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //LabelS.Text = Request.QueryString["LabelS"];
             if (Session["new"] != null)
               {
                LabelS.Text += " sign-in as ";
                   LabelS.Text += Session["new"].ToString();
                LabelS.Text += "     ";
               }
              // else
                 //  Response.Redirect("HomePage.aspx");
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Response.Redirect("ShowMedicine.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Review.aspx");
        }
    }
}