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
            width: 165px;
        }
        .auto-style8 {
            width: 165px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
        <td>
            <h1><asp:Label ID="lblHeader" runat="server" Text="Update Refill"></asp:Label></h1>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6"><asp:Label ID="lblRefill" runat="server" Text="* Refill ID:" ></asp:Label></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtRefill" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Do not leave empty"
                            ControlToValidate="txtRefill"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">* Prescription ID:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPrescription" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:CompareValidator ID="cv" runat="server" ControlToValidate="txtPrescription" Type="Integer"
                         Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" ></asp:CompareValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Do not leave empty"
                            ControlToValidate="txtPrescription"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">* Dosage:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDosage" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Do not leave empty"
                            ControlToValidate="txtDosage"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">* Frequency:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtFrequency" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Do not leave empty"
                            ControlToValidate="txtDosage"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">* Supply (in days):</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtSupply" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSupply" Type="Integer"
                         Operator="DataTypeCheck" ErrorMessage="Value must be an integer!"></asp:CompareValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="Do not leave empty"
                            ControlToValidate="txtSupply"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">* Quantity Supplied:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtQuantity" Type="Integer"
                         Operator="DataTypeCheck" ErrorMessage="Value must be an integer!"></asp:CompareValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="Do not leave empty"
                            ControlToValidate="txtQuantity"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"><asp:Label ID="lblAmount" runat="server" Text="Amount due:" ></asp:Label></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"><asp:Label ID="lblDate" runat="server" Text="* Date of Refill:" ></asp:Label></td>
                    <td class="auto-style8">
                        
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDate" Format="MMMM dd, yyyy" PopupPosition="BottomLeft"/>
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Text="Do not leave empty"
                            ControlToValidate="txtDate"></asp:RequiredFieldValidator>
                    </td>
                    
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style6"> <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"/>
                        </td>
                    <td class="auto-style8">
                       <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</asp:Content>
