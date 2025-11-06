using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_StudenManagement
{
    public partial class StudentDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            _stuID();
            if (!IsPostBack)
            {
                loadStudentbyStuID(_stuID());
            }
        }

        public string _stuID()
        {
            string stuID = Request.QueryString["stuID"];
            return stuID;
        }

        public void loadStudentbyStuID(string stuID)
        {
            DataTable dataTable = new DataTable();
            dataTable = Classes.Read.Instance.getStuByStuID(stuID);
            if (dataTable.Rows.Count > 0)
            {
                txtStID.Text = dataTable.Rows[0]["StuID"].ToString();
                txtFname.Text = dataTable.Rows[0]["FullName"].ToString();
                txtDoB.Text = dataTable.Rows[0]["DoB"].ToString();
                txtSex.Text = dataTable.Rows[0]["sex"].ToString();
                txtClass.Text = dataTable.Rows[0]["class"].ToString();
                txtPPhone.Text = dataTable.Rows[0]["ParentPhone"].ToString();
                txtAddress.Text = dataTable.Rows[0]["address"].ToString();
            }
        }
    }
}