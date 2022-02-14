﻿using System;
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
                            //*** FOR TESTING ONLY ***
                            //lblTESTING.Text = "Client login";

<<<<<<< Updated upstream
                            //pass client ID
                            EncryptedQueryString eqs = new EncryptedQueryString();

                            eqs["ID"] = getClientIDByUsername(username).ToString();
                            string url = String.Format("frmClient.aspx?eqs{0}", eqs.ToString());

                            Response.Redirect(url);
=======
                            Response.Redirect("frmClient.aspx");
>>>>>>> Stashed changes
                        }
                        else if (user == 2) //2, employee
                        {
                            //*** FOR TESTING ONLY ***
                            //lblTESTING.Text = "employee login";

                            Response.Redirect("frmEmployeeSearch.aspx");
                        }
                        else
                        {
                            //*** FOR TESTING ONLY ***
                            lblTESTING.Text = "Error, not client or employee";

                            //validation??
                        }

                    }
                    else //not verified
                    {
                        //*** FOR TESTING ONLY ***
                        lblTESTING.Text = "not verified";

                        //validation, same as not client or employee 
                    }
                }
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
        }

        private int getClientIDByUsername(string username)
        {
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();

            ds = dc.ReturnClientIDByUsername(username);

            return int.Parse(ds.Tables[0].Rows[0]["clientID"].ToString());
        }
    }
}