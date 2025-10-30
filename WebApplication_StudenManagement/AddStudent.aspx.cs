using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_StudenManagement
{
    public partial class AddStudent : System.Web.UI.Page
    {
        private string stuID;

        public string StuID { get => stuID; set => stuID = value; }

        protected void Page_Load(object sender, EventArgs e)
        {
            FillDropdownList();
            if (IsPostBack)
            {
                //FillDropdownList();
                txtStID.ReadOnly = true;
            }
        }

        public void FillDropdownList()
        {
            ddlSex.Items.Clear();
            ddlSex.Items.Add("--Select--");
            ddlSex.Items.Add("Male");
            ddlSex.Items.Add("Female");
        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            string  fullname, sex, class_, address, parentphone, dob;

            

            dob = txtDoB.Text;
            //txtStID.Text = stuID;

            fullname = txtFname.Text.ToLower();
            sex = ddlSex.SelectedItem.Text.ToLower();
            class_ = txtClass.Text.Trim().ToLower();
            address = txtAddress.Text;
            parentphone = txtPPhone.Text.Trim();

            if (Classes.Write.Instance.AddStudent(stuID, fullname, dob, sex, class_, address, parentphone))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Add student successfully')", true);
                lblMessage.Text = "recording successful";
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Add student failed. Please try again!')", true);
                lblMessage.Text = "recording false";
            }

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {

        }

        protected void btnGenID_Click(object sender, EventArgs e)
        {
            int _id, pre_ID;
            string _stuID;
            pre_ID = DateTime.UtcNow.Year;
            Random rnd = new Random();

            //_id = rnd.Next(0, 9999);
            //stuID = pre_ID.ToString() + "-"+_id.ToString();
            do
            {
                _id = rnd.Next(0, 9999);
                
              
                _stuID = pre_ID.ToString() + "-" + _id.ToString();

            } while (Classes.Read.Instance.checkStuID(_stuID));
            stuID = _stuID;
            txtStID.Text = _stuID;
            txtStID.ReadOnly= true;
        }
    }
}