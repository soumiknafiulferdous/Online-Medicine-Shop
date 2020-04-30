using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace OnlinePharmacy
{
    public partial class AddMedicineForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();
                string str = FileUpload1.FileName;
                //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
                // FileUpload1.SaveAs(Server.MapPath("Upload//" + FileUpload1.FileName));
                string fileName = Path.Combine(Server.MapPath("~/Upload"), FileUpload1.FileName);
                FileUpload1.SaveAs(fileName);
                
                string im = "~/Upload/" + str.ToString();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
                // SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Customer.mdf;Integrated Security=True; User Instance=True");
                conn.Open();
                string insertQuery = "insert into Medicine(Name, Type, CompanyName, ManufactureDate, ExpiryDate, Amount, Price, Image, KeywordSearch) values(@name,@type,@cname,@mdate,@edate, @amount, @price, @image, @keywordsearch)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@name", TextBoxMedName.Text);
                com.Parameters.AddWithValue("@type", TextBoxMedType.Text);
                com.Parameters.AddWithValue("@cname", TextBoxComName.Text);
                com.Parameters.AddWithValue("@mdate", TextBoxManDate.Text);
                com.Parameters.AddWithValue("@edate", TextBoxExDate.Text);
                com.Parameters.AddWithValue("@amount", TextBoxAmount.Text);
                com.Parameters.AddWithValue("@price", TextBoxPrice.Text);
                com.Parameters.AddWithValue("@image",im);
                com.Parameters.AddWithValue("@keywordsearch", TextBoxKeyword.Text);
                
                com.ExecuteNonQuery();
                Response.Redirect("AdminPanel.aspx");
                Response.Write("Medicine is added");
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
            Response.Redirect("AdminPanel.aspx");
        }

    }
}