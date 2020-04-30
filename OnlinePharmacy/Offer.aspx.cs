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
    public partial class Offer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Offer(MedicineId, Offer, EndingDate) values(@mid,@offer,@endingdate)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@mid", TextBox1.Text);
                com.Parameters.AddWithValue("@offer", TextBox2.Text);
                com.Parameters.AddWithValue("@endingdate", TextBox3.Text);

                com.ExecuteNonQuery();
                Response.Redirect("Offer.aspx");
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPanel.aspx");
        }
    }
}