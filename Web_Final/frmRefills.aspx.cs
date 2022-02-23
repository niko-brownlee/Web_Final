using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
	//all refills for a client
	public partial class frmRefills : System.Web.UI.Page
	{
		private int clientID;

		protected void Page_Load(object sender, EventArgs e)
		{
            grdRefill.RowDataBound += new GridViewRowEventHandler(grdRefill_RowDataBound);
            grdRefill.PageIndexChanging += new GridViewPageEventHandler(grdRefill_PageIndexChanging);
            grdRefill.Sorting += new GridViewSortEventHandler(grdRefill_Sorting);

            //EncryptedQueryString eqs = new EncryptedQueryString(Request.QueryString["eqs"]);
            //clientID = int.Parse(String.Format("{0}", eqs["ID"]));

            clientID = int.Parse(Request.QueryString["ID"]);

            if (!IsPostBack)
            {
                if (String.IsNullOrEmpty(clientID.ToString()))
                {
                    Response.Redirect("frmLanding.aspx");
                }
                else
                {
                    BindData();
                }
            }
        }

        private void BindData()
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();

            ds = dc.GetAllClientRefills(clientID);
            grdRefill.DataSource = ds.Tables[0];
            grdRefill.DataBind();
            grdRefill.Visible = true;
        }

        protected string FormatURLEdit(string id)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString();
            //eqs["ID"] = id;
            //string url = String.Format("frmUpdatePrescription.aspx?eqs={0}", eqs.ToString());

            string url = "frmUpdateRefill.aspx?ID=" + id + "&TYPE=EDIT";
            return url;
        }

        protected string FormatURLDelete(string id)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString();
            //eqs["ID"] = id;
            //string url = String.Format("frmDeleteRefill.aspx?eqs={0}", eqs.ToString());

            string url = "frmDeleteRefill.aspx?ID=" + id + "&cID=" + clientID;
            return url;
        }

        protected void grdRefill_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdRefill_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.Header)
            //{
            //    ((CheckBox)e.Row.FindControl("cbSelectAll")).Attributes.Add("onclick", "javascript:SelectAll('"
            //        + ((CheckBox)e.Row.FindControl("cbSelectAll")).ClientID + "')");
            //}
        }

        protected void grdRefill_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //for paging
        }

        protected void grdRefill_Sorting(object sender, GridViewSortEventArgs e)
        {
            //sorting in asc and desc order
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString();
            //eqs["ID"] = 0;
            //eqs["TYPE"] = NEW;
            //string url = String.Format("frmUpdateRefill.aspx?eqs={0}", eqs.ToString());

            string url = "frmUpdateRefill.aspx?ID=" + clientID + "&TYPE=NEW";
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