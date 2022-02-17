using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class frmUpdateClient_test : System.Web.UI.Page
    {
        private static int clientID;
        private static string pageType;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //EncryptedQueryString eqs = new EncryptedQueryString(Request.QueryString["eqs"]);
                //string temp = String.Format("{0}", eqs["ID"]);

                clientID = int.Parse(Request.QueryString["ID"]);
                pageType = Request.QueryString["TYPE"].ToUpper();

                if (String.IsNullOrEmpty(clientID.ToString()))
                {
                    Response.Redirect("frmLanding.aspx");
                }
                else
                {
                    if (pageType == "NEW" || pageType == "EDIT")
                    {
                        //clientID is auto incrementing
                        txtClient.Enabled = false;
                        txtFName.Enabled = true;
                        txtMidint.Enabled = true;
                        txtLName.Enabled = true;
                        txtAddress.Enabled = true;
                        txtAddress2.Enabled = true;
                        txtCity.Enabled = true;
                        txtState.Enabled = true;
                        txtZip.Enabled = true;
                        txtPhone.Enabled = true;
                        txtEmail.Enabled = true;
                        ddlGender.Enabled = true;
                        txtDOB.Enabled = true;
                        btnUpdate.Visible = true;
                        btnUpdate.Text = "Save";

                        if (pageType == "EDIT")
                        {
                            //function to fill text fields
                            btnUpdate.Text = "Update";
                            GetData(clientID);
                        }
                    }
                    else if (pageType == "VIEW")
                    {
                        txtClient.Enabled = false;
                        txtFName.Enabled = false;
                        txtMidint.Enabled = false;
                        txtLName.Enabled = false;
                        txtAddress.Enabled = false;
                        txtAddress2.Enabled = false;
                        txtCity.Enabled = false;
                        txtState.Enabled = false;
                        txtZip.Enabled = false;
                        txtPhone.Enabled = false;
                        txtEmail.Enabled = false;
                        ddlGender.Enabled = false;
                        txtDOB.Enabled = false;
                        btnUpdate.Visible = false;
                        GetData(clientID);
                    }
                }
            }
        }

        public void GetData(int id)
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();

            ds = dc.GetClientByID(id);

            if (ds.Tables[0].Rows.Count > 0)
            {
                txtClient.Text = ds.Tables[0].Rows[0]["clientID"].ToString();
                txtFName.Text = ds.Tables[0].Rows[0]["fName"].ToString();
                txtMidint.Text = ds.Tables[0].Rows[0]["mInitial"].ToString();
                txtLName.Text = ds.Tables[0].Rows[0]["lName"].ToString();
                txtAddress.Text = ds.Tables[0].Rows[0]["street1"].ToString();
                txtAddress2.Text = ds.Tables[0].Rows[0]["street2"].ToString();
                txtCity.Text = ds.Tables[0].Rows[0]["city"].ToString();
                txtState.Text = ds.Tables[0].Rows[0]["addr_state"].ToString();
                txtZip.Text = ds.Tables[0].Rows[0]["zip"].ToString();
                txtPhone.Text = ds.Tables[0].Rows[0]["phone"].ToString();
                txtEmail.Text = ds.Tables[0].Rows[0]["email"].ToString();
                txtDOB.Text = ds.Tables[0].Rows[0]["dateOfBirth"].ToString();

                if(ds.Tables[0].Rows[0]["gender"].ToString() == "M")
                {
                    ddlGender.SelectedValue = "Male";
                } else if(ds.Tables[0].Rows[0]["gender"].ToString() == "F")
                {
                    ddlGender.SelectedValue = "Female";
                } else
                {
                    ddlGender.SelectedValue = "Other";
                }
            }
            else
            {
                //error
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            DatabaseConnections dc = new DatabaseConnections();
            string fName, mInit, lName, addr1, addr2, city, addrState, zip, phone, email, gender, dob;

            try
            {
                fName = txtFName.Text.Trim();
                mInit = txtMidint.Text.Trim();
                lName = txtLName.Text.Trim();
                addr1 = txtAddress.Text.Trim();
                addr2 = txtAddress2.Text.Trim();
                city = txtCity.Text.Trim();
                addrState = txtState.Text.Trim();
                zip = txtZip.Text.Trim();
                phone = txtPhone.Text.Trim();
                email = txtEmail.Text.Trim();
                gender = ddlGender.SelectedValue;
                dob = txtDOB.Text.Trim();

                //formatting for DB
                if(gender == "Male")
                {
                    gender = "M";
                } else if(gender == "Female")
                {
                    gender = "F";
                } else
                {
                    gender = "O";
                }

                if(pageType == "EDIT")
                {
                    dc.UpdateClient(clientID, fName, mInit, lName, addr1, addr2, city, addrState, zip, phone, email, gender, dob);

                    //string url = "<script type='text/javascript'>window.open('frmSuccess.aspx' , 'Success'," +
                    //    "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);

                    //redirect to page instead of popup
                    string url = "frmEmployeeSearch.aspx?ID=" + clientID;
                    Response.Redirect(url, false);
                    Context.ApplicationInstance.CompleteRequest();

                } else if(pageType == "NEW")
                {
                    int newID = dc.NewClient(fName, mInit, lName, addr1, addr2, city, addrState, zip, phone, email, gender, dob);

                    //string url = "<script type='text/javascript'>window.open('frmSuccess.aspx' , 'Success'," +
                    //    "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);

                    //redirect to page instead of popup
                    string url = "frmEmployeeSearch.aspx?ID=" + newID;
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
            //eqs["ID"] = clientID.ToString();
            //string url = String.Format("frmPerscriptions.aspx?eqs={0}", eqs.ToString());

            string url = "frmEmployeeSearch.aspx?ID=" + clientID.ToString();
            Response.Redirect(url, false);
            Context.ApplicationInstance.CompleteRequest();
        }

    }
}