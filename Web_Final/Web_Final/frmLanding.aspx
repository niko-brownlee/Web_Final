<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmLanding.aspx.cs" Inherits="Web_Final.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <h2>Welcome</h2>
    <p>Change Username:</p>
    <table>
       <td><asp:TextBox ID="txtChangeUsername" runat="server"></asp:TextBox></td></table>
   
    <br />
    <p>Change Password:</p>
    <asp:TextBox ID="txtChangePassword" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" /> &nbsp&nbsp&nbsp&nbsp
 

</asp:Content>
