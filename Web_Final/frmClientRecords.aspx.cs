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
                //Cache.Remove("Data");
                //if(Convert.ToString(Session["GRIDREFRESH"]) != " ")
                //{
                //    Cache.Remove("Data");
                //    BindData();
                //} else
                //{
                //    if(Cache["Data"] == null)
                //    {
                //        BindData();
                //    }
                //}

            }
            else
            {
                grdPerscriptions.Visible = false;
                grdRefills.Visible = false;
            }

        }

        protected void txtClientID_TextChanged(object sender, EventArgs e)
        {
            txtClientID.Enabled = false;
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

        private void BindData()
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();

            int clientID = int.Parse(txtClientID.Text);

            ds = dc.GetClientByID(clientID);
            grdRefills.DataSource = ds.Tables[0];
            grdPerscriptions.DataSource = ds.Tables[0];

            if (Cache["Data"] == null)
            {
                ds = dc.GetAllClientRefills(clientID);
                grdRefills.DataSource = ds.Tables[0];
                Cache.Add("Data", new DataView(ds.Tables[0]),  //save dataset as cache
                    null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), //cache for 10 minutes
                    System.Web.Caching.CacheItemPriority.Default, null);
                ds = dc.GetAllClientPrescriptions(clientID);
                grdPerscriptions.DataSource = ds.Tables[0];
                Cache.Add("Data", new DataView(ds.Tables[0]),  //save dataset as cache
                    null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), //cache for 10 minutes
                    System.Web.Caching.CacheItemPriority.Default, null);

                grdRefills.DataBind();
                grdPerscriptions.Visible = true;
                grdRefills.DataBind();
                grdPerscriptions.Visible = true;
            }
            else
            {
                grdPerscriptions.DataSource = (DataView)Cache["Data"];
                grdPerscriptions.DataBind();
                grdRefills.DataSource = (DataView)Cache["Data"];
                grdRefills.DataBind();
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmLanding.aspx");
        }
    }
}