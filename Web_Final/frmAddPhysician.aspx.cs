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

            ///add verification
            Response.Redirect("~/frmLanding.aspx");

        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmLanding.aspx");
        }
    }
}
    
