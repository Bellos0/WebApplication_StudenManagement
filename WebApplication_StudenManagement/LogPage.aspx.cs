using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication_StudenManagement
{
    public partial class LogPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string messLogFail = "Login failed. Please check your email or password.";
            string messLogSuccess = "Login successful. Welcome!";
            string email = logPanel.UserName;
            string password = logPanel.Password;
            DataTable dt = new DataTable();
            dt = Classes.LogPage.Instance.GetUser(email, password);

            if(dt.Rows.Count < 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{messLogFail}');", true);
            }
            else
            {
                string passDB = dt.Rows[0]["pass"].ToString();
                if(passDB.Equals(password))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{messLogSuccess}');", true);
                    Session["email"] = email;
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{messLogFail}');", true);
                }
            }
        }
    }
}