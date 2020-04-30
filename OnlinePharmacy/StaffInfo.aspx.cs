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
    public partial class StaffInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Staff where Username='" + TextBoxUser.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));

                if (temp == 1)
                {
                    Response.Write("User already exists");
                }
                conn.Close();
            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Staff(Name,Username, Phone, Password) values(@name,@uname,@phone,@password)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@name", TextBoxName.Text);
                com.Parameters.AddWithValue("@uname", TextBoxUser.Text);
                com.Parameters.AddWithValue("@phone", TextBoxPhone.Text);
                com.Parameters.AddWithValue("@password", TextBoxPass.Text);

                com.ExecuteNonQuery();
                Response.Redirect("StaffInfo.aspx");
                //Response.Write("Registration is successful");
                conn.Close();

                //Response.Write("Your Registration is successful");
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                conn.Open();
                string deleteQuery = "DELETE FROM Staff where Id = '" + TextBoxDelete.Text + "'";
                SqlCommand com = new SqlCommand(deleteQuery, conn);

                com.ExecuteNonQuery();
                Response.Redirect("StaffInfo.aspx");
                conn.Close();

                //Response.Write("Your Registration is successful");
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPanel.aspx");
        }
    }
}