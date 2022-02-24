<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdatePrescription.aspx.cs" Inherits="Web_Final.WebForm5" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
    
    <%--<table>--%>
        <td class="auto-style5">
            <h1><asp:Label ID="lblHeader" runat="server" Text="Update Prescription"></asp:Label></h1>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
    
    
        <table class="auto-style6">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lblPrescID" runat="server" Text="* Prescription ID:"></asp:Label>
                </td>
                <td class="auto-style8">
                <asp:TextBox ID="txtPrescriptionID" runat="server"></asp:TextBox></td>
                <td class="auto-style13">
                   <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtPrescriptionID" Type="Integer"
                         Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="Do not leave empty" ControlToValidate="txtPrescriptionID"></asp:RequiredFieldValidator>
    
                </td>
            </tr>
            <tr>
                <td class="auto-style9">* Client ID:</td>
                <td class="auto-style12">
                <asp:TextBox ID="txtClientID" runat="server"></asp:TextBox></td>
                <td class="auto-style13">
                    <asp:CompareValidator ID="cv" runat="server" ControlToValidate="txtClientID" Type="Integer"
                         Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Do not leave empty" ControlToValidate="txtClientID"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style9">* Physician ID:</td>
                <td class="auto-style12">
    <asp:TextBox ID="txtPhysicianID" runat="server"></asp:TextBox></td>
                <td class="auto-style13">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPhysicianID" Type="Integer"
                         Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Do not leave empty" ControlToValidate="txtPhysicianID"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style10">* Medication ID:</td>
                <td class="auto-style7">
    <asp:TextBox ID="txtMedicationID" runat="server"></asp:TextBox></td>
                <td class="auto-style13">
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtMedicationID" Type="Integer"
                         Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Do not leave empty" ControlToValidate="txtMedicationID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">* Expiration Date:</td>
                <td class="auto-style12">
                    
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"  TargetControlID="txtExpiryDate" Format="MMMM dd, yyyy" PopupPosition="BottomLeft"/>
                        
                    <asp:TextBox ID="txtExpiryDate" runat="server" Wrap="False"></asp:TextBox></td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Do not leave empty" ControlToValidate="txtExpiryDate"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">* Number of Refills:</td>
                <td class="auto-style12">
    <asp:TextBox ID="txtNumberofRefills" runat="server" Width="55px"></asp:TextBox></td>
                <td class="auto-style13">
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtNumberofRefills" Type="Integer"
                         Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="Do not leave empty" ControlToValidate="txtNumberofRefills"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
                <td class="auto-style12"><asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" />

                </td>
            </tr>
        </table>
          

    
            &nbsp&nbsp</td>
        <%-- </table>--%>
    
</tr>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="content1">
    <style type="text/css">
    .auto-style3 {
        text-align: center;
    }
        .auto-style5 {
            text-align: center;
            width: 605px;
        }
        .auto-style6 {
            width: 113%;
            height: 397px;
        }
        .auto-style7 {
            height: 23px;
            text-align: left;
            width: 68px;
        }
        .auto-style8 {
            height: 36px;
            text-align: left;
            width: 68px;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            height: 23px;
            text-align: right;
        }
        .auto-style11 {
            height: 36px;
            text-align: right;
        }
        .auto-style12 {
            text-align: left;
            width: 68px;
        }
        .auto-style13 {
            text-align: left;
        }
    </style>
</asp:Content>

