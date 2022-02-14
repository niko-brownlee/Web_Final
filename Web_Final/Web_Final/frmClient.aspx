<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmClient.aspx.cs" Inherits="Web_Final.WebForm3" %>

       <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
           
 
    
           <td>
               <h1 align="left">Welcome</h1>
        <table class="auto-style5" align="center" >
          
            <tr>
                <td class="auto-style9">Change Username:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtChngUsername" runat="server" Width="264px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Change Password:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtChngPassword" runat="server" Width="262px"></asp:TextBox>
                </td>
            </tr>
            <tr>
               
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="auto-style13" OnClick="btnUpdate_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClose_Click" />
                </td>
            </tr>
           
        </table>
      
   </td>  


         </asp:Content>





<asp:Content ID="Content3" runat="server" contentplaceholderid="content1">
    <style type="text/css">
        .auto-style5 {
            width: 486px;
            height: 144px;
        }
    </style>
</asp:Content>






