<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdatePrescription.aspx.cs" Inherits="Web_Final.WebForm5" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
    <td>
    <table>
        <td style="width: 605px" class="auto-style5">
    <p>Prescription ID</p>
    <asp:TextBox ID="txtPrescriptionID" runat="server"></asp:TextBox>
    
    <p>Client ID</p>
    <asp:TextBox ID="txtClientID" runat="server"></asp:TextBox>

    <p>Physician ID</p>
    <asp:TextBox ID="txtPhysicianID" runat="server"></asp:TextBox>

    <p>Medication ID</p>
    <asp:TextBox ID="txtMedicationID" runat="server"></asp:TextBox>

    <p>Expiration Date</p>
            <div class="auto-style3">
    ???
            </div>
    <p>Number of Refills</p>
    <asp:TextBox ID="txtNumberofRefills" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" />&nbsp&nbsp<asp:Button ID="btnCancel" runat="server" Text="Cancel" />

            </td>
        </table>
    </td>
</tr>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="content1">
    <style type="text/css">
    .auto-style3 {
        text-align: center;
    }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>

