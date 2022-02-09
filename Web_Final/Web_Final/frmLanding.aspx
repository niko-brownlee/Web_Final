<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmLanding.aspx.cs" Inherits="Web_Final.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
   <table>
       <tr style="width: 605px">
           <td>
               <h1>Welcome</h1>
           </td>
       </tr>
       <tr>
           <td>
               Username:
           </td>
           <td>
               <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
           </td>
       </tr> 
       
   
    <br />
    <p>Password:</p>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <br /><br />
    <asp:HyperLink ID="hplNewClientReg" runat="server">New Client Registration</asp:HyperLink>
    <br /><br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /> <br /><br />

    <asp:Label ID="lblTESTING" runat="server" Text="TESTING ONLY"></asp:Label>
               
 </table>
</asp:Content>
