<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdatePrescription.aspx.cs" Inherits="Web_Final.WebForm5" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
    
    <%--<table>--%>
        <td class="auto-style5">
    
    
        <table class="auto-style6">
            <tr>
                <td class="auto-style11">Prescription ID</td>
                <td class="auto-style8">
    <asp:TextBox ID="txtPrescriptionID" runat="server"></asp:TextBox>
    
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Client ID</td>
                <td class="auto-style12">
    <asp:TextBox ID="txtClientID" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style9">Physician ID</td>
                <td class="auto-style12">
    <asp:TextBox ID="txtPhysicianID" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style10">Medication ID</td>
                <td class="auto-style7">
    <asp:TextBox ID="txtMedicationID0" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style9">Expiration Date</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtExpiryDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Number of Refills</td>
                <td class="auto-style12">
    <asp:TextBox ID="txtNumberofRefills" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
            <asp:Button ID="btnUpdate0" runat="server" Text="Update" /></td>
                <td class="auto-style12"><asp:Button ID="btnCancel0" runat="server" Text="Cancel" />

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
        }
        .auto-style8 {
            height: 36px;
            text-align: left;
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
        }
    </style>
</asp:Content>

