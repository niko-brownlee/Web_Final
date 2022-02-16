using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
	public partial class frmUpdateRefill : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnClose_Click(object sender, EventArgs e)
        {
			Response.Redirect("~/frmEmployeeSearch.aspx");
		}

        protected void btnSave_Click(object sender, EventArgs e)
        {

			/// need to add verification if successful
			Response.Redirect("~/frmEmployeeSearch.aspx");
		}
    }
}