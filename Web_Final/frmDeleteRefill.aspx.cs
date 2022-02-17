using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class frmDeleteRefill : System.Web.UI.Page
    {
        private int fRefillID;
        private int clientID;

        protected void Page_Load(object sender, EventArgs e)
        {
            fRefillID = int.Parse(Request.QueryString["ID"]);
            clientID = int.Parse(Request.QueryString["cID"]);

            if (!IsPostBack)
            {
                //EncryptedQueryString eqs = new EncryptedQueryString(Request.QueryString["eqs"]);
                //refillID = int.Parse(String.Format("{0}", eqs["ID"]));

                if(String.IsNullOrEmpty(fRefillID.ToString()))
                {
                    Response.Redirect("frmLanding.aspx");
                } else
                {
                    txtRefillID.Enabled = false;
                    txtPrescriptionID.Enabled = false;
                    txtDosage.Enabled = false;
                    txtFrequency.Enabled = false;
                    txtSupplyDays.Enabled = false;
                    txtQuantitySupplied.Enabled = false;
                    txtAmountDue.Enabled = false;
                    txtDateOfRefill.Enabled = false;
                    GetData(fRefillID);
                }
            }
        }

        public void GetData(int id)
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();

            ds = dc.GetRefillByID(id);

            if(ds.Tables[0].Rows.Count > 0)
            {
                txtRefillID.Text = ds.Tables[0].Rows[0]["refillID"].ToString();
                txtPrescriptionID.Text = ds.Tables[0].Rows[0]["prescriptionID"].ToString();
                txtDosage.Text = ds.Tables[0].Rows[0]["dosage"].ToString();
                txtFrequency.Text = ds.Tables[0].Rows[0]["frequency"].ToString();
                txtSupplyDays.Text = ds.Tables[0].Rows[0]["supplyDays"].ToString();
                txtQuantitySupplied.Text = ds.Tables[0].Rows[0]["quantitySupplied"].ToString();
                txtAmountDue.Text = ds.Tables[0].Rows[0]["amountDue"].ToString();
                txtDateOfRefill.Text = ds.Tables[0].Rows[0]["dateOfRefill"].ToString();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            DatabaseConnections dc = new DatabaseConnections();

            try
            {
                dc.DeleteRefill(fRefillID);

            } catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }

            //EncryptedQueryString eqs = new EncryptedQueryString();
            //eqs["ID"] = clientID.ToString();
            //string url = String.Format("frmRefills.aspx?eqs={0}", eqs.ToString());

            string url = "frmRefills.aspx?ID=" + clientID.ToString();
            Response.Redirect(url, false);
            Context.ApplicationInstance.CompleteRequest();

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString();
            //eqs["ID"] = clientID.ToString();
            //string url = String.Format("frmRefills.aspx?eqs={0}", eqs.ToString());

            string url = "frmRefills.aspx?ID=" + clientID.ToString();
            Response.Redirect(url, false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}