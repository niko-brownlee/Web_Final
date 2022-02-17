﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class frmUpdateRefill : System.Web.UI.Page
    {
        private int refillID;
        private string pageType;

        protected void Page_Load(object sender, EventArgs e)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString(Request.QueryString["eqs"]);
            //string temp = String.Format("{0}", eqs["ID"]);

            refillID = int.Parse(Request.QueryString["ID"]);
            pageType = Request.QueryString["TYPE"].ToUpper();

            if (!IsPostBack)
            {
                if (String.IsNullOrEmpty(refillID.ToString()))
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
                        txtAmount.Visible = true;
                        lblAmount.Visible = true;
                        
                        txtPrescription.Enabled = true;
                        txtDosage.Enabled = true;
                        txtFrequency.Enabled = true;
                        txtSupply.Enabled = true;
                        txtQuantity.Enabled = true;
                        
                        txtDate.Enabled = true;
                        txtDate.Visible = true;
                        lblDate.Visible = true;

                        btnUpdate.Visible = true;
                        btnUpdate.Text = "Save";

                        if (pageType == "EDIT")
                        {
                            btnUpdate.Text = "Update";
                            GetData(refillID);

                        } else //new
                        {
                            txtRefill.Visible = false;
                            lblRefill.Visible = false;

                            txtAmount.Visible = false;
                            lblAmount.Visible = false;
                            
                            txtDate.Visible = false;
                            lblDate.Visible = false;
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
                        txtAmount.Visible = true;
                        lblAmount.Visible = true;
                        
                        txtDate.Enabled = false;
                        txtDate.Visible = true;
                        lblDate.Visible = true;
                        
                        btnUpdate.Visible = false;
                        GetData(refillID);
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
            else
            {
                //error
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
                    dc.UpdateRefill(refillID, prescriptionID, dosage, frequency, supply, quantity);

                    //string url = "<script type='text/javascript'>window.open('frmSuccess.aspx' , 'Success'," +
                    //    "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);

                    DataSet ds = new DataSet();
                    ds = dc.SelectClientByRefill(refillID);
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

                    //string url = "<script type='text/javascript'>window.open('frmSuccess.aspx' , 'Success'," +
                    //    "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);

                    DataSet ds = new DataSet();
                    ds = dc.SelectClientByRefill(newRefillID);
                    int returnClientID = int.Parse(ds.Tables[0].Rows[0]["clientID"].ToString());

                    //redirect to page instead of popup
                    string url = "frmRefills.aspx?ID=" + returnClientID;
                    Response.Redirect(url, false);
                    Context.ApplicationInstance.CompleteRequest();
                }
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //EncryptedQueryString eqs = new EncryptedQueryString();
            //eqs["ID"] = refillID.ToString();
            //string url = String.Format("frmRefills.aspx?eqs={0}", eqs.ToString());

            string url = "frmRefills.aspx?ID=" + refillID;
            Response.Redirect(url, false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}