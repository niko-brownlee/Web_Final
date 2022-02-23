using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class frmAddPhysician : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DatabaseConnections dc = new DatabaseConnections();
            string fName, mInit, lName, phone, email;

            try
            {
                fName = txtFName.Text.Trim();
                mInit = txtMidInt.Text.Trim();
                lName = txtLName.Text.Trim();
                phone = txtPhone.Text.Trim();
                email = txtEmail.Text.Trim();

                dc.NewPhysician(fName, mInit, lName, phone, email);

            } catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }

            string url = "<script type='text/javascript'>window.open('frmSuccess.aspx?TYPE=PHYS' , 'Success'," +
                        "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);

            txtFName.Text = string.Empty;
            txtMidInt.Text = string.Empty;
            txtLName.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmEmployeeSearch.aspx");
        }
    }
}
    
