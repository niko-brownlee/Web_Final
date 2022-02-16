<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmDeleteRefill.aspx.cs" Inherits="Web_Final.frmDeleteRefill" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <tr>
    
    <%--<table>--%>
        <td class="auto-style5">
    
    
        <table class="auto-style6">
            <tr>
                <td class="auto-style11">Refill ID:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtRefillID" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Prescription ID:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPrescriptionID" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Dosage:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtDosage" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Frequency:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtFrequency" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Supply Days:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtSupplyDays" runat="server" Wrap="False" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Quantity Supplied:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtQuantitySupplied" runat="server" Width="123px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Amount Due: </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtAmountDue" runat="server" Width="121px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Date of Refill:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtDateOfRefill" runat="server" Width="120px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CausesValidation="False" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" />
                </td>
            </tr>
        </table>
          

    
            &nbsp&nbsp</td>
        <%-- </table>--%>
    
</tr>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="content1">
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
