using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class frmPerscriptions : System.Web.UI.Page
    {
        int clientID;

        protected void Page_Load(object sender, EventArgs e)
        {
            grdPrescriptions.RowDataBound += new GridViewRowEventHandler(grdPrescriptions_RowDataBound);
            grdPrescriptions.PageIndexChanging += new GridViewPageEventHandler(grdPrescriptions_PageIndexChanging);
            grdPrescriptions.Sorting += new GridViewSortEventHandler(grdPrescriptions_Sorting);

            if (!IsPostBack)
            {
                //EncryptedQueryString eqs = new EncryptedQueryString(Request.QueryString["eqs"]);
                //clientID = int.Parse(String.Format("{0}", eqs["ID"]));

                clientID = int.Parse(Request.QueryString["ID"]);

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

            int clientID = int.Parse(Convert.ToString(Session["vClientID"]));

            ds = dc.GetClientByID(clientID);
            grdPrescriptions.DataSource = ds.Tables[0];
            grdPrescriptions.DataBind();
            grdPrescriptions.Visible = true;
        }

        protected string FormatURL(string id)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString();
            //eqs["ID"] = id;
            //string url = String.Format("frmUpdatePrescription.aspx?eqs={0}", eqs.ToString());

            string url = "frmUpdatePrescription.aspx?ID=" + id;
            return url;
        }

        protected void grdPrescriptions_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdPrescriptions_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.Header)
            //{
            //    ((CheckBox)e.Row.FindControl("cbSelectAll")).Attributes.Add("onclick", "javascript:SelectAll('"
            //        + ((CheckBox)e.Row.FindControl("cbSelectAll")).ClientID + "')");
            //}
        }

        protected void grdPrescriptions_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //for paging
        }

        protected void grdPrescriptions_Sorting(object sender, GridViewSortEventArgs e)
        {
            //sorting in asc and desc order
        }
    }
}