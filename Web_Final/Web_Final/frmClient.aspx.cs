﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        private static int clientID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //get client id
                EncryptedQueryString eqs = new EncryptedQueryString(Request.QueryString["eqs"]);
                clientID = int.Parse(String.Format("{0}", eqs["ID"]));
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string newUsername, newPassword, myval;
            DatabaseConnections dc = new DatabaseConnections();
            DataSet ds = new DataSet();
            byte[] salt = Utilities.Get_SALT();

            try
            {
                newUsername = txtChngUsername.Text.Trim();
                newPassword = txtChngPassword.Text.Trim();

                myval = Utilities.SaltKey;
                var hash = Utilities.Get_HASH_SHA512(newPassword, salt);

                dc.UpdateClientLogin(clientID, newUsername, hash, hash, Utilities.SaltKey);

                string url = "<script type='text/javascript'>window.open('frmSuccess.aspx' , 'Success'," +
                    "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);

            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            txtChngPassword.Text = string.Empty;
            txtChngUsername.Text = string.Empty;
        }
    }
}