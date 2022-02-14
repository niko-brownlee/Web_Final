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
        string previousPage;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                previousPage = Request.QueryString["type"];
            } else
            {
                Response.Redirect("frmLanding.aspx");
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "closeform", "window.close()", true);
        }
    }
}