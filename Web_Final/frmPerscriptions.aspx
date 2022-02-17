﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmPerscriptions.aspx.cs" Inherits="Web_Final.frmPerscriptions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <tr>
        <td>
            <br />
            <div class="auto-style3">
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
                &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnNew" runat="server" Text="New Prescription" OnClick="btnNew_Click" />
            <asp:GridView ID="grdPrescriptions" runat="server" AutoGenerateColumns="false" CssClass="GridView" Width="100%" AllowPaging="true" AllowSorting="true"
                           OnSelectedIndexChanged="grdPrescriptions_SelectedIndexChanged">

                <Columns>
                        
                        <asp:BoundField DataField="prescriptionID" HeaderText="Prescription ID" SortExpression="prescriptionID" />
                        <asp:BoundField DataField="clientID" HeaderText="Client ID" SortExpression="clientID" />
                        <asp:BoundField DataField="physicianID" HeaderText="Physician ID" SortExpression="physicianID" />
                        <asp:BoundField DataField="medicineID" HeaderText="Medicine ID" SortExpression="medicineID" />
                        <asp:BoundField DataField="startDate" HeaderText="Start Date" SortExpression="startDate" DataFormatString="{0:MM/dd/yyyy}"/>
                        <asp:BoundField DataField="expiryDate" HeaderText="Expiry Date" SortExpression="expiryDate" DataFormatString="{0:MM/dd/yyyy}"/>
                        <asp:BoundField DataField="refillCounter" HeaderText="Refill Remaining" SortExpression="refillCounter" />
                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                         

                   <asp:TemplateField HeaderText="Update">
                                <HeaderTemplate>
                                   Update
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="hplUpdate" runat="server" Text="Update" NavigateUrl='<%#FormatURLEdit(Eval("prescriptionID").ToString()) %>' Target="_self">
                                    </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
       

                        </Columns>


            </asp:GridView>
            </div>
        </td>
    </tr>

</asp:Content>
