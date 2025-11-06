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
    public partial class ShowStudentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStudentList();
            }
        }

        public void LoadStudentList()
        {
            DataTable dt = new DataTable();
            dt = Read.Instance.GetStudentList();
            dtlShowStud.DataSource = dt;
            dtlShowStud.DataBind();
        }

        protected void dtlShowStud_ItemDataBound(object sender, DataListItemEventArgs e)
        {

        }

        protected void dtlShowStud_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "DetailStudent")
            {
                string stuID = e.CommandArgument.ToString();
                Response.Redirect($"StudentDetail.aspx?stuID={stuID}");
            }
        }
    }
}