<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmClient.aspx.cs" Inherits="Web_Final.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <table>
            <th style="width: 605px">
    <h2>Welcome</h2>
    <p>Change Username:</p>
    <asp:TextBox ID="txtChangeUsername" runat="server"></asp:TextBox>

    <p>Change Password:</p>
     <asp:TextBox ID="txtChangePassword" runat="server"></asp:TextBox>

    <br /><br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" />&nbsp
      <asp:Button ID="btnCancel" runat="server" Text="Cancel" /> <br /><br />
                </table>
</asp:Content>
