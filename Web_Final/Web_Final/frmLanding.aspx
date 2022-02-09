<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmLanding.aspx.cs" Inherits="Web_Final.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
   <table>
           <th style="width: 605px"><h1>Welcome</h1>
    <p>Change Username:</p>
 
       <asp:TextBox ID="txtChangeUsername" runat="server"></asp:TextBox>
   
    <br />
    <p>Change Password:</p>
    <asp:TextBox ID="txtChangePassword" runat="server"></asp:TextBox>
    <br /><br />
    <asp:HyperLink ID="hprNewClientReg" runat="server">New Client Registration</asp:HyperLink>
    <br /><br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" /> <br /><br />
 </table>
</asp:Content>
