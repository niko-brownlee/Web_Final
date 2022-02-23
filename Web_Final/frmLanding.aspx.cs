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
            lblError.Visible = false;
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

                if(ds.Tables.Count > 0) //if username exists
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        var val = ds.Tables[0].Rows[0]["salt"].ToString();
                        var myval = Utilities.returnSaltBytes(val);
                        var hash = Utilities.Return_HASH_SHA512(password, myval);

                        bool isVerified = ds.Tables[0].Rows[0]["userPassword"].ToString().Equals(hash);

                        if (isVerified)
                        {
                            //find if employee or client
                            int user = dc.FindUsername(username);

                            if (user == 1) //client
                            {
                                string url = "frmClient.aspx?ID=" + getClientIDByUsername(username).ToString();

                                Response.Redirect(url, false);
                                Context.ApplicationInstance.CompleteRequest();
                            }
                            else if (user == 2) //2, employee
                            {
                                Response.Redirect("frmEmployeeSearch.aspx", false);
                                Context.ApplicationInstance.CompleteRequest();
                            }

                        }
                        else //not verified
                        {
                            lblError.Visible = true;
                            txtPassword.Text = string.Empty;
                        }
                    }
                } else //username does not exist
                {
                    lblError.Visible = true;
                    txtPassword.Text = string.Empty;
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