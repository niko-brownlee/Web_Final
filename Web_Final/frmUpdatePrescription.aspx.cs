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
    public partial class WebForm5 : System.Web.UI.Page
    {
        private static int incomingID;
        private static string pageType;

        protected void Page_Load(object sender, EventArgs e)
        {
            incomingID = int.Parse(Request.QueryString["ID"]);
            pageType = Request.QueryString["TYPE"].ToUpper();

            if (!IsPostBack)
            {
                if(String.IsNullOrEmpty(incomingID.ToString()))
                {
                    Response.Redirect("frmLanding.aspx");
                } else
                {
                    if(pageType == "NEW" || pageType == "EDIT")
                    {
                        //prescription is auto incrementing
                        txtPrescriptionID.Enabled = false;
                        txtPrescriptionID.Visible = false;
                        lblPrescID.Visible = false;
                        txtClientID.Enabled = true;
                        txtPhysicianID.Enabled = true;
                        txtMedicationID.Enabled = true;
                        txtExpiryDate.Enabled = true;
                        txtNumberofRefills.Enabled = true;
                        btnUpdate.Visible = true;
                        btnUpdate.Text = "Save";
                        lblHeader.Text = "New Prescription";

                        if(pageType == "EDIT")
                        {
                            btnUpdate.Text = "Update";
                            lblHeader.Text = "Update Prescription";
                            txtPrescriptionID.Visible = true;
                            lblPrescID.Visible = true;
                            GetData(incomingID);
                        } else
                        {
                            txtClientID.Text = incomingID.ToString();
                        }

                    } else if(pageType == "VIEW")
                    {
                        txtPrescriptionID.Enabled = false;
                        txtPrescriptionID.Visible = true;
                        lblPrescID.Visible = true;
                        txtClientID.Enabled = false;
                        txtPhysicianID.Enabled = false;
                        txtMedicationID.Enabled = false;
                        txtExpiryDate.Enabled = false;
                        txtNumberofRefills.Enabled = false;
                        btnUpdate.Visible = false;
                        lblHeader.Text = "View Prescription";
                        GetData(incomingID);
                    }
                }
            }
        }

        public void GetData(int id)
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();

            ds = dc.GetPrescriptionByID(id);

            if(ds.Tables[0].Rows.Count > 0)
            {
                txtPrescriptionID.Text = ds.Tables[0].Rows[0]["prescriptionID"].ToString();

                txtClientID.Text = ds.Tables[0].Rows[0]["clientID"].ToString();
                txtPhysicianID.Text = ds.Tables[0].Rows[0]["physicianID"].ToString();
                txtMedicationID.Text = ds.Tables[0].Rows[0]["medicineID"].ToString();

                DateTime dt = DateTime.Parse(ds.Tables[0].Rows[0]["expiryDate"].ToString());
                txtExpiryDate.Text = dt.ToString("MM/dd/yyyy");

                txtNumberofRefills.Text = ds.Tables[0].Rows[0]["refillCounter"].ToString();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            DatabaseConnections dc = new DatabaseConnections();
            int clientID, physicianID, medicineID, refillCounter;
            string ed;
            DateTime expiryDate;

            try
            {
                clientID = int.Parse(txtClientID.Text.Trim());
                physicianID = int.Parse(txtPhysicianID.Text.Trim());
                medicineID = int.Parse(txtMedicationID.Text.Trim());
                refillCounter = int.Parse(txtNumberofRefills.Text.Trim());
                ed = txtExpiryDate.Text.Trim();

                expiryDate = DateTime.Parse(ed);

                if(pageType == "EDIT")
                {
                    dc.UpdatePrescription(incomingID, clientID, physicianID, medicineID, expiryDate, refillCounter);

                    string url = "frmPerscriptions.aspx?ID=" + clientID;
                    Response.Redirect(url, false);
                    Context.ApplicationInstance.CompleteRequest();

                } else if(pageType == "NEW")
                {
                    int newID = dc.NewPrescription(clientID, physicianID, medicineID, expiryDate, refillCounter);

                    if(newID == 0)
                    {
                        //failed insert
                        string errorUrl = "<script type='text/javascript'>window.open('frmUnScessful.aspx?TYPE=PRESC' , 'Unsuccessful'," +
                        "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", errorUrl);
                    } else
                    {
                        string url = "frmPerscriptions.aspx?ID=" + clientID;
                        Response.Redirect(url, false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                }
            } catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            string clientID = txtClientID.Text;
            string url = "frmPerscriptions.aspx?ID=" + clientID;
            Response.Redirect(url, false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}