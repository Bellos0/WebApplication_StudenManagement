using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication_StudenManagement.Classes;

namespace WebApplication_StudenManagement
{
    public partial class AddSubject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDatalistSubject();
            }
        }

        public void loadDatalistSubject()
        {
            DataTable dataTable = new DataTable();
            dataTable = common.Instance.GetTable("SP_LoadAllSubject", null, true);
            dtlSub.DataSource = dataTable;
            dtlSub.DataKeyField = "subID";
            dtlSub.DataMember = "subName";
            dtlSub.DataBind();
        }

        protected void btnAddSubject_Click(object sender, EventArgs e)
        {
            string subID, subName;
            subID = txtSubID.Text.ToUpper().Trim();
            subName = txtsubName.Text;

            if (Classes.Write.Instance.AddSubject(subID, subName))
            {
                lbError.Text = "Add subject successfully";
                txtsubName.Text = string.Empty;
                txtSubID.Text = string.Empty;
            }
            else
            {
                lbError.Text = "Add subject failed, try again";
            }
        }

        protected void btnValidated_Click(object sender, EventArgs e)
        {
            string subID, subName;
            subID = txtSubID.Text.ToUpper().Trim();
            subName = txtsubName.Text;
            if (Classes.Read.Instance.checkSubject(subID, subName))
            {
                lbError.Text = "Subject ID and subject name valid";
            }
            else
            {
                lbError.Text = "Subject ID or subject name already exist, try again";
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}