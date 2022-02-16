<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmLanding.aspx.cs" Inherits="Web_Final.WebForm1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <tr>
<td class="auto-style3">

   <table>
       <tr style="width: 605px">
           <td class="auto-style4">
               <h1>Welcome</h1>
           <p class="auto-style3">
               Username:
           </p>
  
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <br />
    <p>Password:</p>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
    <br /><br />
    <asp:HyperLink ID="hplNewClientReg" runat="server" NavigateUrl="~/frmRegister.aspx">New Client Registration</asp:HyperLink>
    <br /><br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /> <br /><br />

    <asp:Label ID="lblTESTING" runat="server" Text="TESTING ONLY"></asp:Label>
               
 </table>
        </td>
    </tr>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="content1">
    <style type="text/css">
        .auto-style3 {
            width: 456px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>


