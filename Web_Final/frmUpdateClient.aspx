<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdateClient.aspx.cs" Inherits="Web_Final.frmUpdateClient_test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 54%;
            height: 497px;
        }
        .auto-style6 {
            width: 330px;
        }
        .auto-style10 {
            margin-left: 1px;
        }
        .auto-style14 {
            margin-left: 23px;
        }
        .auto-style18 {
            margin-left: 50px;
        }
        .auto-style19 {
            width: 330px;
            height: 29px;
            text-align: right;
        }
        .auto-style20 {
            height: 29px;
        }
        .auto-style23 {
            height: 29px;
            text-align: left;
        }
        .auto-style24 {
            text-align: left;
        }
        .auto-style25 {
            width: 330px;
            text-align: right;
        }
        .auto-style26 {
            width: 330px;
            text-align: right;
            height: 26px;
        }
        .auto-style27 {
            text-align: left;
            height: 26px;
        }
        .auto-style28 {
            height: 26px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
        <td>
            
            <table class="auto-style5">
                <h1>Update Client</h1>
                        <tr>
                    <td class="auto-style25">Client ID:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtClient" runat="server"></asp:TextBox>
                            </td>
                   
                </tr>
                <tr>
                    <td class="auto-style25">* First Name:&nbsp;&nbsp;</td>
                    <td class="auto-style24"><asp:TextBox ID="txtFName" runat="server" CssClass="auto-style10"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td class="auto-style25">Mid. Int.:&nbsp;&nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtMidint" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style25">* Last Name:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style25">Address: &nbsp;&nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style25">Address 2:&nbsp;&nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style25">City:&nbsp;&nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtCity" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style25">State:&nbsp;&nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtState" runat="server" Height="18px"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style25">Zip Code:&nbsp;&nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style26">Phone:&nbsp;&nbsp;</td>
                    <td class="auto-style27">
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style28"></td>
                </tr>
                <tr>
                    <td class="auto-style19">Email:&nbsp;</td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style25">* Gender:&nbsp;&nbsp;</td>
                    <td class="auto-style24"><asp:DropDownList ID="ddlGender" runat="server" CssClass="auto-style14" Height="16px" Width="121px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList></td>
                    <
                </tr>
                <tr>
                    <td class="auto-style25">* DOB:&nbsp;&nbsp;</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style25">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="auto-style18" OnClick="btnUpdate_Click"/></td>
                    <td>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                        </td>
                    
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;
                        </td>
                    
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    
                </tr>
        
            </table>
        </td>
    </tr>
</asp:Content>


