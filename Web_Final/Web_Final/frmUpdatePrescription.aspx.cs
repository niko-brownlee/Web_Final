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

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                EncryptedQueryString eqs = new EncryptedQueryString(Request.QueryString["eqs"]);
                string temp = String.Format("{0}", eqs["ID"]);

                if(String.IsNullOrEmpty(temp))
                {
                    Response.Redirect("frmLanding.aspx");
                } else
                {
                    prescriptionID = int.Parse(temp);
                    GetData(prescriptionID);
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
                txtPrescriptionID.Enabled = false;

                txtClientID.Text = ds.Tables[0].Rows[0]["clientID"].ToString();
                txtPhysicianID.Text = ds.Tables[0].Rows[0]["physicianID"].ToString();
                txtMedicationID.Text = ds.Tables[0].Rows[0]["medicationID"].ToString();

                DateTime dt = DateTime.Parse(ds.Tables[0].Rows[0]["expiryDate"].ToString());
                txtExpiryDate.Text = dt.ToString("MM/dd/YYYY");

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

                dc.UpdatePrescription(prescriptionID, clientID, physicianID, 
                    medicineID, expiryDate, refillCounter);



            } catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            EncryptedQueryString eqs = new EncryptedQueryString();
            eqs["ID"] = prescriptionID.ToString();
            string url = String.Format("frmPerscriptions.aspx?eqs={0}", eqs.ToString());
            Response.Redirect(url);
        }
    }
}