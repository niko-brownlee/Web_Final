<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmRegister.aspx.cs" Inherits="Web_Final.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <table>
      <th style="width: 605px">

    <h2>New Client Registration:</h2>
    <p>Client ID:</p>
    
    <asp:TextBox ID="txtClientID" runat="server"></asp:TextBox>
    <p>Create Username:</p>
  
    <asp:TextBox ID="txtCreateUsername" runat="server"></asp:TextBox>
    <p>Create Password</p>
    <asp:TextBox ID="txtCreatePassword" runat="server"></asp:TextBox>
    <br /><br />
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />&nbsp
      <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
          <br />
      <asp:Button ID="btnTest" runat="server" Text="Test Employee Creation" OnClick="btnTest_Click" />
          <br />
          <br />
          </th>
        <tr>
            <td>
                <asp:Label ID="lblTESTING" runat="server" Text="TESTING ONLY"></asp:Label>
            </td>
        </tr>
    </table>


  


</asp:Content>
