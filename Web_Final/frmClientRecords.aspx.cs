using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Web_Final
{
    public partial class frmClientRecords : System.Web.UI.Page
    {
        private int clientID;

        protected void Page_Load(object sender, EventArgs e)
        {
            clientID = int.Parse(Request.QueryString["ID"]);

            if (!IsPostBack)
            {
                clientID = int.Parse(Request.QueryString["ID"]);
                txtClientID.Text = clientID.ToString();
                txtClientID.Enabled = false;

                if (String.IsNullOrEmpty(clientID.ToString()))
                {
                    Response.Redirect("frmLanding.aspx");
                }
                else
                {
                    BindData();
                }
            }
            else
            {
                grdPerscriptions.Visible = false;
                grdRefills.Visible = false;
            }

        }

        private void BindData()
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet dsP = new DataSet();
            DataSet dsR = new DataSet();

            dsR = dc.GetAllClientRefills(clientID);
            grdRefills.DataSource = dsR.Tables[0];
            grdRefills.DataBind();
            grdRefills.Visible = true;

            dsP = dc.GetAllClientPrescriptions(clientID);
            grdPerscriptions.DataSource = dsP.Tables[0];
            grdPerscriptions.DataBind();
            grdPerscriptions.Visible = true;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmClient.aspx?ID=" + clientID);
        }
    }
}