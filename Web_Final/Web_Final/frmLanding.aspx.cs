using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Web_Final
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //*** FOR TESTING ONLY ***
            lblTESTING.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = "";
            string password = "";

            try
            {
                username = txtUsername.Text.Trim();
                password = txtPassword.Text.Trim();

                DatabaseConnections dc = new DatabaseConnections();
                DataSet ds = new DataSet();
                ds = dc.GetLoginInfo(username);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    var val = ds.Tables[0].Rows[0]["salt"].ToString();
                    var myval = Utilities.returnSaltBytes(val);
                    var hash = Utilities.Return_HASH_SHA512(password, myval);

                    bool isVerified = ds.Tables[0].Rows[0]["userPassword"].ToString().Equals(hash);

                    if (isVerified)
                    {
                        //successful login
                        //find if employee or client
                        int user = dc.FindUsername(username);

                        if (user == 1) //client
                        {
                            //frmClient frmClient = new frmClient();
                            //frmClient.loggedInUser = username;

                            //ClearTextBoxes();
                            //frmClient.ShowDialog();

                            //*** FOR TESTING ONLY ***
                            lblTESTING.Text = "Client login";
                        }
                        else if (user == 2) //2, employee
                        {
                            //ClearTextBoxes();
                            //frmEmployee frmEmp = new frmEmployee();
                            //frmEmp.ShowDialog();

                            //*** FOR TESTING ONLY ***
                            lblTESTING.Text = "employee login";
                        }
                        else
                        {
                            //MessageBox.Show("Unknown Username", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

                            //*** FOR TESTING ONLY ***
                            lblTESTING.Text = "Error, not client or employee";
                        }

                    }
                    else //not verified
                    {
                        //MessageBox.Show("Invalid login", "Failure", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                        //*** FOR TESTING ONLY ***
                        lblTESTING.Text = "not verified";
                    }
                }
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK);

                //*** FOR TESTING ONLY ***
                lblTESTING.Text = "error during login";
            }
        }
    }
}