using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        private static int prescriptionID;
        private static string pageType;

        protected void Page_Load(object sender, EventArgs e)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString(Request.QueryString["eqs"]);
            //string temp = String.Format("{0}", eqs["ID"]);

            prescriptionID = int.Parse(Request.QueryString["ID"]);
            pageType = Request.QueryString["TYPE"].ToUpper();

            if (!IsPostBack)
            {
                if(String.IsNullOrEmpty(prescriptionID.ToString()))
                {
                    Response.Redirect("frmLanding.aspx");
                } else
                {
                    if(pageType == "NEW" || pageType == "EDIT")
                    {
                        //prescription is auto incrementing
                        txtPrescriptionID.Enabled = false;
                        txtPrescriptionID.Visible = true;
                        lblPrescID.Visible = true;
                        txtClientID.Enabled = true;
                        txtPhysicianID.Enabled = true;
                        txtMedicationID.Enabled = true;
                        txtExpiryDate.Enabled = true;
                        txtNumberofRefills.Enabled = true;
                        btnUpdate.Visible = true;
                        btnUpdate.Text = "Save";

                        if(pageType == "EDIT")
                        {
                            btnUpdate.Text = "Update";
                            GetData(prescriptionID);

                        } else //new
                        {
                            txtPrescriptionID.Visible = false;
                            lblPrescID.Visible = false;
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
                        GetData(prescriptionID);
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

            } else
            {
                //error
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
                    dc.UpdatePrescription(prescriptionID, clientID, physicianID, medicineID, expiryDate, refillCounter);

                    //string url = "<script type='text/javascript'>window.open('frmSuccess.aspx' , 'Success'," +
                    //    "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);

                    //redirect to page instead of popup
                    string url = "frmPerscriptions.aspx?ID=" + clientID;
                    Response.Redirect(url, false);
                    Context.ApplicationInstance.CompleteRequest();

                } else if(pageType == "NEW")
                {
                    //returns an int, which is the new prescription ID
                    //not currently saving the int
                    dc.NewPrescription(clientID, physicianID, medicineID, expiryDate, refillCounter);

                    //string url = "<script type='text/javascript'>window.open('frmSuccess.aspx' , 'Success'," +
                    //    "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);

                    //redirect to page instead of popup
                    string url = "frmPerscriptions.aspx?ID=" + clientID;
                    Response.Redirect(url, false);
                    Context.ApplicationInstance.CompleteRequest();
                }
            } catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString();
            //eqs["ID"] = prescriptionID.ToString();
            //string url = String.Format("frmPerscriptions.aspx?eqs={0}", eqs.ToString());

            string url = "frmPerscriptions.aspx?ID=" + prescriptionID.ToString();
            Response.Redirect(url, false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}