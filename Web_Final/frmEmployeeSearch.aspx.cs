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
        protected void Page_Load(object sender, EventArgs e)
        {
            grdEmployeeSearch.RowDataBound += new GridViewRowEventHandler(grdEmployeeSearch_RowDataBound);
            grdEmployeeSearch.PageIndexChanging += new GridViewPageEventHandler(grdEmployeeSearch_PageIndexChanging);
            grdEmployeeSearch.Sorting += new GridViewSortEventHandler(grdEmployeeSearch_Sorting);

            if(!IsPostBack)
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
                    Session["vClientID"] = txtSearch.Text.Trim();
                    BindData();
                } catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }
            } else
            {
                grdEmployeeSearch.Visible = false;
            }
        }

        protected string FormatURLPresc(string id)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString();
            //eqs["ID"] = id;
            //string url = String.Format("frmPerscriptions.aspx?eqs={0}", eqs.ToString());

            string url = "frmPerscriptions.aspx?ID=" + id;
            return url;
        }

        protected string FormatURLRefill(string id)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString();
            //eqs["ID"] = id;
            //string url = String.Format("frmRefills.aspx?eqs={0}", eqs.ToString());

            string url = "frmRefills.aspx?ID=" + id;
            return url;
        }

        private void BindData()
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();

            //int clientID = int.Parse(Convert.ToString(Session["vClientID"]));

            //txtSearch.Text = clientID.ToString();

            int clientID = int.Parse(txtSearch.Text);

            ds = dc.GetClientByID(clientID);
            grdEmployeeSearch.DataSource = ds.Tables[0];
            //grdEmployeeSearch.DataBind();
            //grdEmployeeSearch.Visible = true;

            if(Cache["Data"] == null)
            {
                ds = dc.GetClientByID(clientID);
                grdEmployeeSearch.DataSource = ds.Tables[0];
                Cache.Add("Data", new DataView(ds.Tables[0]),  //save dataset as cache
                    null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.TimeSpan.FromMinutes(10), //cache for 10 minutes
                    System.Web.Caching.CacheItemPriority.Default, null);

                grdEmployeeSearch.DataBind();
                grdEmployeeSearch.Visible = true;
            } else
            {
                grdEmployeeSearch.DataSource = (DataView)Cache["Data"];
                grdEmployeeSearch.DataBind();
            }
        }

        protected void grdEmployeeSearch_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdEmployeeSearch_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.Header)
            //{
            //    ((CheckBox)e.Row.FindControl("cbSelectAll")).Attributes.Add("onclick", "javascript:SelectAll('"
            //        + ((CheckBox)e.Row.FindControl("cbSelectAll")).ClientID + "')");
            //}
        }

        protected void grdEmployeeSearch_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //for paging
            //Int32 pageNum = 0;
            //pageNum = e.NewPageIndex;
            //Paging(pageNum);
        }

        //private void Paging(Int32 page)
        //{
        //    grdEmployeeSearch.PageIndex = page;
        //    BindData();
        //}

        protected void grdEmployeeSearch_Sorting(object sender, GridViewSortEventArgs e)
        {
            //SortRecords(e.SortExpression);
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmLanding.aspx");
        }

        //private void SortRecords(string sortExp)
        //{
        //    string oldExp = grdEmployeeSearch.SortExpression;
        //    string newExp = sortExp;
        //    string lastVal, theSortField, sortExpression, theDirection, wildChar, oldSortExp, newSortExp;
        //    DataView source;

        //    theDirection = " ";
        //    wildChar = " %";

        //    lastVal = (string)ViewState["sortValue"];
        //    sortExpression = sortExp;
        //    oldSortExp = (string)ViewState["oldSortExpression"];

        //    if (oldSortExp == sortExpression)
        //    {
        //        if (this.sortDir == "desc")
        //        {
        //            this.sortDir = "asc";
        //        }
        //        else if (this.sortDir == null)
        //        {
        //            this.sortDir = "asc";
        //        }
        //        else if (this.sortDir == "asc")
        //        {
        //            this.sortDir = "desc";
        //        }
        //        else
        //        {
        //            this.sortDir = "asc";
        //        }
        //    }

        //    theSortField = (string)ViewState["sortField"];
        //    source = (DataView)Cache["StudentData"];
        //    source.Sort = (" " + sortExpression + " " + this.sortDir);
        //    ViewState["oldSortExpression"] = sortExp;

        //    grdEmployeeSearch.DataSource = source;
        //    grdEmployeeSearch.DataBind();
        //}

        //public string sortDir
        //{
        //    get => (string)ViewState["sortDir"];
        //    set => ViewState["sortDir"] = value;
        //}
    }
}