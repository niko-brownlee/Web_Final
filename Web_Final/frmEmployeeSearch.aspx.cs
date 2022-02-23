using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class frmEmployeeSearch : System.Web.UI.Page
    {
        private int newClientID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.QueryString["ID"] == null)
                {
                    BindData();
                } else
                {
                    //just added a new client
                    newClientID = int.Parse(Request.QueryString["ID"]);
                    BindData();
                }

            } else
            {
                grdEmployeeSearch.Visible = false;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(txtSearch.Text.Trim().Length > 0)
            {
                try
                {
                    BindData();

                } catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
            } else
            {
                grdEmployeeSearch.Visible = false;
                txtSearch.Text = string.Empty;
            }
        }

        protected void btnAddClient_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmUpdateClient.aspx?ID=0&TYPE=NEW");
        }

        protected void btnAddPhys_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAddPhysician.aspx");
        }

        protected string FormatURLClient(string id)
        {
            string url = "frmUpdateClient.aspx?ID=" + id + "&TYPE=EDIT";
            return url;
        }

        protected string FormatURLPresc(string id)
        {
            string url = "frmPerscriptions.aspx?ID=" + id;
            return url;
        }

        protected string FormatURLRefill(string id)
        {
            string url = "frmRefills.aspx?ID=" + id;
            return url;
        }

        private void BindData()
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();
            int clientID;

            if(txtSearch.Text.Trim().Length > 0)
            {
                clientID = int.Parse(txtSearch.Text);

            } else
            {
                clientID = newClientID;
            }

            ds = dc.GetClientByID(clientID);
            grdEmployeeSearch.DataSource = ds.Tables[0];
            grdEmployeeSearch.DataBind();
            grdEmployeeSearch.Visible = true;
        }
    }
}