<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdatePrescription.aspx.cs" Inherits="Web_Final.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <table>
        <th style="width: 605px">
    <p>Prescription ID</p>
    <asp:TextBox ID="txtPrescriptionID" runat="server"></asp:TextBox>
    
    <p>Client ID</p>
    <asp:TextBox ID="txtClientID" runat="server"></asp:TextBox>

    <p>Physician ID</p>
    <asp:TextBox ID="txtPhysicianID" runat="server"></asp:TextBox>

    <p>Medication ID</p>
    <asp:TextBox ID="txtMedicationID" runat="server"></asp:TextBox>

    <p>Expiration Date</p>
    ???
    <p>Number of Refills</p>
    <asp:TextBox ID="txtNumberofRefills" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" />&nbsp&nbsp<asp:Button ID="btnCancel" runat="server" Text="Cancel" />


        </table>
</asp:Content>
