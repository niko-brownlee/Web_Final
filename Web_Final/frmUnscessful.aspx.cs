using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class frmUnscessful : System.Web.UI.Page
    {
        private static string pageType;

        protected void Page_Load(object sender, EventArgs e)
        {
            pageType = Request.QueryString["TYPE"].ToUpper();

            if(pageType == "REFILL")
            {
                lblFail.Text = "Cannot make a new refill. Prescription has run out of refills.";
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "closeform", "window.close()", true);
        }
    }
}