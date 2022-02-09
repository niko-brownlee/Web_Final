using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Final
{
    public partial class WebForm2 : System.Web.UI.Page
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
                    //MessageBox.Show("Successfully created new user. Welcome.", "Welcome", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    ////close form
                    //this.Close();

                    //*** FOR TESTING ONLY ***
                    lblTESTING.Text = "new user success";
                }
                else //myResult == 1
                {
                    //MessageBox.Show("Error: Please try again.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

                    //*** FOR TESTING ONLY ***
                    lblTESTING.Text = "new user error";
                }
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK);

                //*** FOR TESTING ONLY ***
                lblTESTING.Text = "parse error";
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

                myResult = dc.NewEmployeeRegistration(clientUsername, hash, hash, Utilities.SaltKey);

                Utilities.mySalt = new byte[0];

                if (myResult == -1)
                {
                    //MessageBox.Show("Successfully created new user. Welcome.", "Welcome", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    ////close form
                    //this.Close();

                    //*** FOR TESTING ONLY ***
                    lblTESTING.Text = "new user success";
                }
                else //myResult == 1
                {
                    //MessageBox.Show("Error: Please try again.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

                    //*** FOR TESTING ONLY ***
                    lblTESTING.Text = "new user error";
                }
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK);

                //*** FOR TESTING ONLY ***
                lblTESTING.Text = "parse error";
            }
        }
    }
}