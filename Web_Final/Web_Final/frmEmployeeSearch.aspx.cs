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
                BindData();
            } else
            {
                grdEmployeeSearch.Visible = false;
                //error message
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

            int clientID = int.Parse(Convert.ToString(Session["vClientID"]));
            
            ds = dc.GetClientByID(clientID);
            grdEmployeeSearch.DataSource = ds.Tables[0];
            grdEmployeeSearch.DataBind();
            grdEmployeeSearch.Visible = true;
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
        }

        protected void grdEmployeeSearch_Sorting(object sender, GridViewSortEventArgs e)
        {
            //sorting in asc and desc order
        }
    }
}