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
                    //*** FOR TESTING ONLY ***
                    //lblTESTING.Text = "new user success";

                    Response.Redirect("frmSuccess.aspx");
                }
                else //myResult == 1
                {
                    ////*** FOR TESTING ONLY ***
                    //lblTESTING.Text = "new user error";
                    //throw new ArgumentException("new user error");

                    Response.Redirect("frmUnscessful.aspx");
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
                clientid = int.Parse(txtClientID.Text.Trim());
                clientUsername = txtCreateUsername.Text.Trim();
                clientPassword = txtCreatePassword.Text.Trim();

                //create hash
                string myval = Utilities.SaltKey;
                var hash = Utilities.Get_HASH_SHA512(clientPassword, salt);

                DatabaseConnections dc = new DatabaseConnections();

                myResult = dc.NewEmployeeRegistration(clientUsername, hash, hash, Utilities.SaltKey);

                Utilities.mySalt = new byte[0];

                if (myResult == -1)
                {
                    Response.Redirect("frmSuccess.aspx");
                }
                else //myResult == 1
                {
                    Response.Redirect("frmUnscessful.aspx");
                }
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
        }
    }
}