using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    //all prescriptions for a client
    public partial class frmPerscriptions : System.Web.UI.Page
    {
        private int clientID;

        protected void Page_Load(object sender, EventArgs e)
        {
            clientID = int.Parse(Request.QueryString["ID"]);

            if (!IsPostBack)
            {
                if (String.IsNullOrEmpty(clientID.ToString()))
                {
                    Response.Redirect("frmLanding.aspx");
                } else
                {
                    BindData();
                }
            }
        }

        private void BindData()
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();

            ds = dc.GetAllClientPrescriptions(clientID);
            grdPrescriptions.DataSource = ds.Tables[0];
            grdPrescriptions.DataBind();
            grdPrescriptions.Visible = true;
        }

        protected string FormatURLEdit(string id)
        {
            string url = "frmUpdatePrescription.aspx?ID=" + id + "&TYPE=EDIT";
            return url;
        }

        protected string FormatURLNew(string id)
        {
            string url = "frmUpdatePrescription.aspx?ID=" + id + "&TYPE=NEW";
            return url;
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            string url = "frmUpdatePrescription.aspx?ID=" + clientID + "&TYPE=NEW";
            Response.Redirect(url, false);
            Context.ApplicationInstance.CompleteRequest();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            string url = "frmEmployeeSearch.aspx?ID=" + clientID;
            Response.Redirect(url, false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}