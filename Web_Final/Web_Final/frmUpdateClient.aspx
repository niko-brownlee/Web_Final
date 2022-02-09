<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdateClient.aspx.cs" Inherits="Web_Final.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">

   <p>Client ID</p>
        <asp:TextBox ID="txtClientID" runat="server"></asp:TextBox>
    <p>First Name *</p>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    <p>Mid Int</p>
        <asp:TextBox ID="txtMidInt" runat="server"></asp:TextBox>
    <p>Last Name *</p>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    <p>Address</p>
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
    <p>Address 2</p>
        <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox>
    <p>City</p>
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    <p>State</p>
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
    <p>Zip Code</p>
        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
    <p>Phone</p>
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
    <p>Email</p>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <p>Gender *</p>
        <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
    <p>DOB *</p>
        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
    <br />
    <br />
            <asp:Button ID="btnUpdate" runat="server" Text="Register" />&nbsp
      <asp:Button ID="btnCancel" runat="server" Text="Cancel" /> <br />


</asp:Content>
