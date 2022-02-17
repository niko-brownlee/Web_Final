﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdatePrescription.aspx.cs" Inherits="Web_Final.WebForm5" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
    
    <%--<table>--%>
        <td class="auto-style5">
    
    
        <table class="auto-style6">
            <tr>
                <td class="auto-style11"><span class="auto-style13">*</span>Prescription ID:</td>
                <td class="auto-style8">
                <asp:TextBox ID="txtPrescriptionID" runat="server"></asp:TextBox>
    
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><span class="auto-style13">*</span>Client ID:</td>
                <td class="auto-style12">
                <asp:TextBox ID="txtClientID" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style9"><span class="auto-style13">*</span>Physician ID:</td>
                <td class="auto-style12">
    <asp:TextBox ID="txtPhysicianID" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style10"><span class="auto-style13">*</span>Medication ID:</td>
                <td class="auto-style7">
    <asp:TextBox ID="txtMedicationID" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style9">Expiration Date:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtExpiryDate" runat="server" Wrap="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Number of Refills:</td>
                <td class="auto-style12">
    <asp:TextBox ID="txtNumberofRefills" runat="server" Width="55px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /></td>
                <td class="auto-style12"><asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

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
        .auto-style13 {
            color: #FF0000;
        }
    </style>
</asp:Content>
