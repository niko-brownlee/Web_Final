<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdateClient.aspx.cs" Inherits="Web_Final.frmUpdateClient_test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 330px;
        }
        .auto-style7 {
            margin-left: 27px;
        }
        .auto-style8 {
            margin-left: 28px;
        }
        .auto-style9 {
            margin-left: 2px;
        }
        .auto-style10 {
            margin-left: 1px;
        }
        .auto-style11 {
            margin-left: 20px;
        }
        .auto-style12 {
            margin-left: 62px;
        }
        .auto-style13 {
            margin-left: 54px;
        }
        .auto-style14 {
            margin-left: 23px;
        }
        .auto-style15 {
            margin-left: 41px;
        }
        .auto-style16 {
            margin-left: 45px;
        }
        .auto-style17 {
            margin-left: 95px;
        }
        .auto-style18 {
            margin-left: 50px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
        <td>
            <table class="auto-style5">
                        <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>Client ID:&nbsp;<asp:TextBox ID="txtClient" runat="server" CssClass="auto-style7"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>* First Name:&nbsp;<asp:TextBox ID="txtFName" runat="server" CssClass="auto-style10"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>Mid. Int.:&nbsp;<asp:TextBox ID="txtMidint" runat="server" CssClass="auto-style8"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>* Last Name:&nbsp;<asp:TextBox ID="txtLName" runat="server" CssClass="auto-style9"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>Address: &nbsp;<asp:TextBox Id="txtAddress" runat="server" CssClass="auto-style7"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>Address 2:&nbsp;<asp:TextBox Id="txtAddress2" runat="server" CssClass="auto-style11"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>City:&nbsp;<asp:TextBox ID="txtCity" runat="server" CssClass="auto-style12"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>State:&nbsp;<asp:TextBox ID="txtState" runat="server" CssClass="auto-style13"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>Zip Code:&nbsp;<asp:TextBox ID="txtZip" runat="server" CssClass="auto-style14"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>Phone:&nbsp;<asp:TextBox Id="txtPhone" runat="server" CssClass="auto-style15"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>Email:&nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style16"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>* Gender:&nbsp;<asp:DropDownList ID="ddlGender" runat="server" CssClass="auto-style14" Height="16px" Width="121px"></asp:DropDownList></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>* DOB:&nbsp;<asp:TextBox Id="txtDOB" runat="server" CssClass="auto-style15"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="auto-style18"/>&nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="auto-style17" />
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
        
            </table>
        </td>
    </tr>
</asp:Content>


