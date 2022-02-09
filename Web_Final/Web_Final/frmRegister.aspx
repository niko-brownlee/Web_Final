<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmRegister.aspx.cs" Inherits="Web_Final.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <h2>New Client Registration:</h2>
    <p>Client ID:</p>
    <br />
    <asp:TextBox ID="txtClientID" runat="server"></asp:TextBox>
    <p>Create Username:</p>
    <br />
    <asp:TextBox ID="txtCreateUsername" runat="server"></asp:TextBox>
    <p>Create Password</p><br />
    <asp:TextBox ID="txtCreatePassword" runat="server"></asp:TextBox>
    <br /><br />
        <asp:Button ID="btnRegister" runat="server" Text="Register" />&nbsp
      <asp:Button ID="btnCancel" runat="server" Text="Cancel" /> <br />
      <asp:Button ID="btnTest" runat="server" Text="Test Employee Creation" />



</asp:Content>
