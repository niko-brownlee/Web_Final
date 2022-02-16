<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdateRefill.aspx.cs" Inherits="Web_Final.frmUpdateRefill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 49%;
            height: 402px;
        }
        .auto-style6 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <tr>
        <td>
            <table class="auto-style5">
                <h1>
        Refill
    </h1>
                <tr>
                    <td class="auto-style6">Perscription ID:</td>
                    <td>
                        <asp:TextBox ID="txtPerscriptionID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Dosage:</td>
                    <td>
                        <asp:TextBox ID="txtDosage" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Frequency:</td>
                    <td>
                        <asp:TextBox ID="txtFrequnecy" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Supply in Days:</td>
                    <td>
                        <asp:TextBox ID="txtSupplyinDays" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Quantity Supplied:</td>
                    <td>
                        <asp:TextBox ID="txtQuantitySupplied" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Price:</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Payment Type:</td>
                    <td>
                        <asp:DropDownList ID="ddlPaymentType" runat="server" Height="19px" Width="117px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>Check</asp:ListItem>
                            <asp:ListItem>Credit</asp:ListItem>
                            <asp:ListItem>Debit</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
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
