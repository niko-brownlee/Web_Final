<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmAddPhysician.aspx.cs" Inherits="Web_Final.frmAddPhysician" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 32%;
            height: 295px;
        }
        .auto-style6 {
            color: #FF0000;
        }
        .auto-style7 {
            height: 51px;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            height: 51px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
    <tr>
        <td>
            <table class="auto-style5" align="center">
                <h1> Add New Physician</h1>
                <tr>
                    <td class="auto-style9"><span class="auto-style6">*</span>First Name:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Do not leave empty" ControlToValidate="txtFName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Mid. Int.</td>
                    <td>
                        <asp:TextBox ID="txtMidInt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><span class="auto-style6">*</span>Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Do not leave empty" ControlToValidate="txtLName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Phone:</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</asp:Content>
