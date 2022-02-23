using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class frmUpdateRefill : System.Web.UI.Page
    {
        private int incomingID;
        private string pageType;

        protected void Page_Load(object sender, EventArgs e)
        {
            incomingID = int.Parse(Request.QueryString["ID"]);
            pageType = Request.QueryString["TYPE"].ToUpper();

            if (!IsPostBack)
            {
                if (String.IsNullOrEmpty(incomingID.ToString()))
                {
                    Response.Redirect("frmLanding.aspx");
                }
                else
                {
                    if (pageType == "NEW" || pageType == "EDIT")
                    {
                        //prescription is auto incrementing
                        txtRefill.Enabled = false;
                        txtAmount.Enabled = false;
                        txtPrescription.Enabled = true;
                        txtDosage.Enabled = true;
                        txtFrequency.Enabled = true;
                        txtSupply.Enabled = true;
                        txtQuantity.Enabled = true;
                        txtDate.Enabled = true;

                        txtRefill.Visible = false;
                        lblRefill.Visible = false;

                        txtAmount.Visible = false;
                        lblAmount.Visible = false;

                        txtDate.Visible = false;
                        lblDate.Visible = false;

                        btnUpdate.Visible = true;
                        btnUpdate.Text = "Save";
                        lblHeader.Text = "New Refill";

                        if (pageType == "EDIT")
                        {
                            btnUpdate.Text = "Update";
                            lblHeader.Text = "Update Refill";
                            GetData(incomingID);

                            txtRefill.Visible = true;
                            lblRefill.Visible = true;

                            txtAmount.Visible = true;
                            lblAmount.Visible = true;

                            txtDate.Visible = true;
                            lblDate.Visible = true;
                        }
                    }
                    else if (pageType == "VIEW")
                    {
                        txtRefill.Enabled = false;
                        txtPrescription.Enabled = false;
                        txtDosage.Enabled = false;
                        txtFrequency.Enabled = false;
                        txtSupply.Enabled = false;
                        txtQuantity.Enabled = false;
                        txtAmount.Enabled = false;
                        txtDate.Enabled = false;

                        txtRefill.Visible = true;
                        lblRefill.Visible = true;

                        txtAmount.Visible = true;
                        lblAmount.Visible = true;

                        txtDate.Visible = true;
                        lblDate.Visible = true;

                        btnUpdate.Visible = false;
                        lblHeader.Text = "View Refill";
                        GetData(incomingID);
                    }
                }
            }
        }

        public void GetData(int id)
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();

            ds = dc.GetRefillByID(id);

            if (ds.Tables[0].Rows.Count > 0)
            {
                txtRefill.Text = ds.Tables[0].Rows[0]["refillID"].ToString();
                txtPrescription.Text = ds.Tables[0].Rows[0]["prescriptionID"].ToString();
                txtDosage.Text = ds.Tables[0].Rows[0]["dosage"].ToString();
                txtFrequency.Text = ds.Tables[0].Rows[0]["frequency"].ToString();
                txtSupply.Text = ds.Tables[0].Rows[0]["supplyDays"].ToString();
                txtQuantity.Text = ds.Tables[0].Rows[0]["quantitySupplied"].ToString();
                txtAmount.Text = ds.Tables[0].Rows[0]["amountDue"].ToString();

                DateTime dt = DateTime.Parse(ds.Tables[0].Rows[0]["dateOfRefill"].ToString());
                txtDate.Text = dt.ToString("MM/dd/yyyy");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            DatabaseConnections dc = new DatabaseConnections();
            int prescriptionID, supply, quantity;
            string dosage, frequency;

            try
            {
                prescriptionID = int.Parse(txtPrescription.Text.Trim());
                dosage = txtDosage.Text.Trim();
                frequency = txtFrequency.Text.Trim();
                supply = int.Parse(txtSupply.Text.Trim());
                quantity = int.Parse(txtQuantity.Text.Trim());

                if (pageType == "EDIT")
                {
                    dc.UpdateRefill(incomingID, prescriptionID, dosage, frequency, supply, quantity);

                    DataSet ds = new DataSet();
                    ds = dc.SelectClientByRefill(incomingID);
                    int returnClientID = int.Parse(ds.Tables[0].Rows[0]["clientID"].ToString());

                    //redirect to page instead of popup
                    string url = "frmRefills.aspx?ID=" + returnClientID;
                    Response.Redirect(url, false);
                    Context.ApplicationInstance.CompleteRequest();

                }
                else if (pageType == "NEW")
                {
                    //returns an int, which is the new refill id
                    int newRefillID = dc.NewRefill(prescriptionID, dosage, frequency, supply, quantity);

                    if(newRefillID == 0)
                    {
                        string errorUrl = "<script type='text/javascript'>window.open('frmUnScessful.aspx?TYPE=REFILL' , 'Unsuccessful'," +
                        "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", errorUrl);
                    } else
                    {
                        DataSet ds = new DataSet();
                        ds = dc.SelectClientByRefill(newRefillID);
                        int returnClientID = int.Parse(ds.Tables[0].Rows[0]["clientID"].ToString());

                        //redirect to page instead of popup
                        string url = "frmRefills.aspx?ID=" + returnClientID;
                        Response.Redirect(url, false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                }
            }
            catch (Exception ex)
            {
               throw new ArgumentException(ex.Message);
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            string url = "";

            if(pageType == "NEW")
            {
                url = "frmRefills.aspx?ID=" + incomingID;
                Response.Redirect(url, false);
                Context.ApplicationInstance.CompleteRequest();
            } else
            {
                DatabaseConnections dc = new DatabaseConnections();
                DataSet ds = new DataSet();
                ds = dc.SelectClientByRefill(incomingID);
                int clientID = int.Parse(ds.Tables[0].Rows[0]["clientID"].ToString());

                url = "frmRefills.aspx?ID=" + clientID;
                Response.Redirect(url, false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }
    }
}