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
    public partial class CustomerRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Customer where Username='"+ TextBoxUserName.Text + "'";
                SqlCommand com = new SqlCommand(checkuser , conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ",""));
                
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
                string insertQuery = "insert into Customer(Username,Email,Phone,Address,Password) values(@uname,@email,@phone,@address,@password)";
                SqlCommand com = new SqlCommand(insertQuery , conn);
                com.Parameters.AddWithValue("@uname", TextBoxUserName.Text);
                com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@phone", TextBoxPhone.Text);
                com.Parameters.AddWithValue("@address", TextBoxAddress.Text);
                com.Parameters.AddWithValue("@password", TextBoxPassword.Text);

                com.ExecuteNonQuery();
                Response.Redirect("SignIn.aspx");
                Response.Write("Registration is successful");
                conn.Close();

                //Response.Write("Your Registration is successful");
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }

        protected void TextBoxUserName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}