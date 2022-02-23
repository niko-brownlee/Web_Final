using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class frmSuccess : System.Web.UI.Page
    {
        private static string pageType;

        protected void Page_Load(object sender, EventArgs e)
        {
            pageType = Request.QueryString["TYPE"].ToUpper();

            if (pageType == "PHYS")
            {
                lblSuccess.Text = "New Physician successfully added!";

            } else if(pageType == "CLIENT")
            {
                lblSuccess.Text = "Username/Password successfully changed!";
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "closeform", "window.close()", true);
        }
    }
}