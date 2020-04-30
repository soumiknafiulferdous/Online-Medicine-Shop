using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlinePharmacy
{
    public partial class AdminPanel1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label1.Text += Session["New"].ToString();
            }
            else
                Response.Redirect("AdminLogin.aspx");

        }

        protected void ButtonAddMedicine_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddMedicineForm.aspx");
        }

        protected void ButtonCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerInfo.aspx");
        }

        protected void ButtonMedicine_Click(object sender, EventArgs e)
        {
            Response.Redirect("MedicineInfo.aspx");
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("AdminLogin.aspx");
        }

        protected void ButtonAddStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffInfo.aspx");
        }

        protected void ButtonDeliveryman_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deliveryman.aspx");
        }

        protected void ButtonVendor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vendor.aspx");
        }

        protected void ButtonReview_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deliveryman.aspx");
        }

        protected void ButtonOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderDetails.aspx");
        }

        protected void ButtonReview_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ShowReview.aspx");
        }

        protected void ButtonOffer_Click(object sender, EventArgs e)
        {
            Response.Redirect("Offer.aspx");
        }
    }
}