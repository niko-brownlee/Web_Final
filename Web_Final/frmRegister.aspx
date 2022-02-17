<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmRegister.aspx.cs" Inherits="Web_Final.frmRegister_test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
    <tr>
         
        <td>
            <h1>New Client Registration</h1>
            <table align="center" class="auto-style5">
                 <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">Client ID:&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3"><asp:TextBox ID="txtClientID" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                   <tr>
                    <td>&nbsp;</td>
                     <td class="auto-style3">Create Username:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3"><asp:TextBox ID="txtCreateUsername" runat="server" CssClass="auto-style6"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">Create Password:</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                    <asp:TextBox ID="txtCreatePassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                        &nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" /></td>
                    <td>&nbsp;</td>
                </tr>
                 <!--<tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3"><asp:Button ID="btnTestEmployeeCreation" runat="server" Text="Test Employee Creation" OnClick="btnTest_Click" /></td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblTEST" runat="server" Text="TESTING ONLY"></asp:Label></td>
                    <td>&nbsp;</td>
                </tr>-->
            </table>
        </td>
    </tr>
</asp:Content>
