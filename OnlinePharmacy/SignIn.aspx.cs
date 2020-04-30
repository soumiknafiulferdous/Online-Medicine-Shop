using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace OnlinePharmacy
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from Customer where Username='" + TextBoxUser.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select Password from Customer where Username = '" + TextBoxUser.Text + "'";
                SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
                string password = passCom.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBoxPass.Text)
                {
                    Session["New"] = TextBoxUser.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("HomePage.aspx?LabelS= sign-in as " +TextBoxUser.Text);
                }
                else
                {
                    Response.Write("Password is not correct");
                }
            }
            else
            {
                Response.Write("Username is not correct");
            }
        }
    }
}