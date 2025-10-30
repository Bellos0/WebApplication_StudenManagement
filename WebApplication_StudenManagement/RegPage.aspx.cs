using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_StudenManagement
{
    public partial class RegPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            string username, password, email, phone;
            username = txtUsername.Text.Trim();
            password = txtPass.Text.Trim();
            email = txtMail.Text.Trim();
            phone = txtPhone.Text.Trim();

            if(Classes.RegPage.Service.Register(username, password, email,phone))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Registration successful!'); " +
                    $"window.location='{ResolveUrl("~/About.aspx")}';", 
                    true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Registration failed. Please try again.');", 
                    true);
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}