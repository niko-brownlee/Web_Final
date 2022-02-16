using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class frmRegister_test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            byte[] salt = Utilities.Get_SALT();
            int clientid;
            int myResult;
            string clientUsername = "";
            string clientPassword = "";

            try
            {
                clientid = int.Parse(txtClientID.Text.Trim());
                clientUsername = txtCreateUsername.Text.Trim();
                clientPassword = txtCreatePassword.Text.Trim();

                //create hash
                string myval = Utilities.SaltKey;
                var hash = Utilities.Get_HASH_SHA512(clientPassword, salt);

                DatabaseConnections dc = new DatabaseConnections();

                myResult = dc.NewClientRegistration(clientid, clientUsername, hash, hash, Utilities.SaltKey);

                Utilities.mySalt = new byte[0];

                if (myResult == -1)
                {
                    string url = "<script type='text/javascript'>window.open('frmSuccess.aspx', 'Successful'," +
                        "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);
                }
                else //myResult == 1
                {
                    string url = "<script type='text/javascript'>window.open('frmUnscessful.aspx', 'Unsuccessful'," +
                        "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);
                }
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
        }
    

        protected void btnTest_Click(object sender, EventArgs e)
        {
            byte[] salt = Utilities.Get_SALT();
            int myResult;
            string empUsername = "";
            string empPassword = "";

            try
            {
                empUsername = txtCreateUsername.Text.Trim();
                empPassword = txtCreatePassword.Text.Trim();

                //create hash
                string myval = Utilities.SaltKey;
                var hash = Utilities.Get_HASH_SHA512(empPassword, salt);

                DatabaseConnections dc = new DatabaseConnections();
                empUsername = txtCreateUsername.Text.Trim();
                empPassword = txtCreatePassword.Text.Trim();

                myResult = dc.NewEmployeeRegistration(empPassword, hash, hash, Utilities.SaltKey);

                Utilities.mySalt = new byte[0];

                if (myResult == -1)
                {
                    //string url = "<script type='text/javascript'>window.open('frmSuccess.aspx, 'Successful'," +
                    //    "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);
                    lblTEST.Text = "Success";
                }
                else //myResult == 1
                {
                    //string url = "<script type='text/javascript'>window.open('frmUnscessful.aspx, 'Unsuccessful'," +
                    //    "'width=525, height=525, menubar=no, resizable=yes, left=50, right=50, scrollbars=yes');</script>";

                    //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "PopupScript", url);
                    lblTEST.Text = "Fail";
                }
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
        }
    }
}