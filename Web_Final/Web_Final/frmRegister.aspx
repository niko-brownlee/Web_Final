<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmRegister.aspx.cs" Inherits="Web_Final.WebForm2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <tr>
    
           
      <td style="width: 605px" class="auto-style3">

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
          
                <asp:Label ID="lblTESTING" runat="server" Text="TESTING ONLY"></asp:Label>
        
             </td>
    </tr>
           

  


</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="content1">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>

