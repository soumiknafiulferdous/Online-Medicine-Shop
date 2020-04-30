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
    public partial class MedicineInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "DELETE FROM Medicine where Id = '"+ TextBoxDeleteID.Text +"'";
                SqlCommand com = new SqlCommand(insertQuery, conn);
               // com.Parameters.AddWithValue("@uname", TextBoxUserName.Text);
                //com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
               // com.Parameters.AddWithValue("@phone", TextBoxPhone.Text);
               // com.Parameters.AddWithValue("@address", TextBoxAddress.Text);
               // com.Parameters.AddWithValue("@password", TextBoxPassword.Text);

                com.ExecuteNonQuery();
                Response.Redirect("MedicineInfo.aspx");
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