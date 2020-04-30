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
    public partial class AdminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Admin where Username='" + TextBoxUserName1.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    Response.Write("User already exists");
                }
                conn.Close();
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Admin(Username,Email,Password) values(@uname1,@email1,@password1)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@uname1", TextBoxUserName1.Text);
                com.Parameters.AddWithValue("@email1", TextBoxEmail1.Text);
                com.Parameters.AddWithValue("@password1", TextBoxPassword1.Text);

                com.ExecuteNonQuery();
                Response.Redirect("AdminInfo.aspx");
                Response.Write("Registration is successful");
                conn.Close();

                //Response.Write("Your Registration is successful");
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}