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
            grdPerscriptions.RowDataBound += new GridViewRowEventHandler(grdPerscriptions_RowDataBound);
            grdPerscriptions.PageIndexChanging += new GridViewPageEventHandler(grdPerscriptions_PageIndexChanging);
            grdPerscriptions.Sorting += new GridViewSortEventHandler(grdPerscriptions_Sorting);


            grdRefills.RowDataBound += new GridViewRowEventHandler(grdRefills_RowDataBound);
            grdRefills.PageIndexChanging += new GridViewPageEventHandler(grdRefills_PageIndexChanging);
            grdRefills.Sorting += new GridViewSortEventHandler(grdRefills_Sorting);

            if (!IsPostBack)
            {
                //EncryptedQueryString eqs = new EncryptedQueryString(Request.QueryString["eqs"]);
                //clientID = int.Parse(String.Format("{0}", eqs["ID"]));

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

            if (Cache["RefillData"] == null)
            {
                dsR = dc.GetAllClientRefills(clientID);
                grdRefills.DataSource = dsR.Tables[0];
                Cache.Add("RefillData", new DataView(dsR.Tables[0]),  //save dataset as cache
                    null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), //cache for 10 minutes
                    System.Web.Caching.CacheItemPriority.Default, null);

                grdRefills.DataBind();
                grdRefills.Visible = true;
            }
            else
            {
                grdRefills.DataSource = (DataView)Cache["RefillData"];
                grdRefills.DataBind();
            }

            if (Cache["PreData"] == null)
            {
                dsP = dc.GetAllClientPrescriptions(clientID);
                grdPerscriptions.DataSource = dsP.Tables[0];
                Cache.Add("PreData", new DataView(dsP.Tables[0]),  //save dataset as cache
                    null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), //cache for 10 minutes
                    System.Web.Caching.CacheItemPriority.Default, null);

                grdPerscriptions.DataBind();
                grdPerscriptions.Visible = true;
            }
            else
            {
                grdPerscriptions.DataSource = (DataView)Cache["PreData"];
                grdPerscriptions.DataBind();
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmLanding.aspx");
        }

        protected void grdPerscriptions_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void grdPerscriptions_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void grdPerscriptions_Sorting(object sender, GridViewSortEventArgs e)
        {
            
        }

        protected void grdRefills_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void grdRefills_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void grdRefills_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

        protected void grdPerscriptions_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}