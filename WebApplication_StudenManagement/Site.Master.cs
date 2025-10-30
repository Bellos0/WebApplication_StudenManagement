using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_StudenManagement
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // cmt lai de test trang add student


            //if (Session["email"] != null)
            //{
            //    lbt_user.Text = "Welcome: " + Session["email"];
            //    lbt_login.Visible = false;
            //    lbt_logout.Visible = true;
            //}
            //else
            //{
            //    Session.Clear();
            //    lbt_user.Text = "Welcome: Guest";
            //    lbt_login.Visible = true;
            //    lbt_logout.Visible = false;
            //}
        }

        protected void lbt_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LogPage.aspx");
        }

        protected void lbt_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");
        }
    }
}