<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdateRefill.aspx.cs" Inherits="Web_Final.frmUpdateRefill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
        <td>
             <h1>Update Refill</h1>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6"><asp:Label ID="lblRefill" runat="server" Text="* Refill ID:" ></asp:Label></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtRefill" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">* Prescription ID:</td>
                    <td>
                        <asp:TextBox ID="txtPrescription" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">* Dosage:</td>
                    <td>
                        <asp:TextBox ID="txtDosage" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">* Frequency:</td>
                    <td>
                        <asp:TextBox ID="txtFrequency" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">* Supply (in days):</td>
                    <td>
                        <asp:TextBox ID="txtSupply" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">* Quantity Supplied:</td>
                    <td>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"><asp:Label ID="lblAmount" runat="server" Text="Amount due:" ></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"><asp:Label ID="lblDate" runat="server" Text="Date of Refill:" ></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                    </td>
                    
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style6"> <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"/>
                        </td>
                    <td>
                       <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</asp:Content>
