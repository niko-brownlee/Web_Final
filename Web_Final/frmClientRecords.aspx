<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmClientRecords.aspx.cs" Inherits="Web_Final.frmClientRecords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
        <td class="auto-style3">
           <td class="auto-style3"><span class="auto-style6"> Client ID:&nbsp;&nbsp;</span>
               <asp:TextBox ID="txtClientID" runat="server" CssClass="auto-style7" Width="154px" ></asp:TextBox>&nbsp;&nbsp;
               <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" CausesValidation="False" />
            <br />
            <br />

            <asp:GridView ID="grdPerscriptions" runat="server"  AutoGenerateColumns="false" CssClass="GridView" Width="100%" AllowPaging="true" AllowSorting="true"
                            PageSize="4">
                <Columns>

                    <asp:BoundField DataField="prescriptionID" HeaderText="Prescription ID" SortExpression="prescriptionID" />
                    <asp:BoundField DataField="clientID" HeaderText="Client ID" SortExpression="clientID" />
                    <asp:BoundField DataField="physicianID" HeaderText="PhysicianID" SortExpression="physicianID" />
                    <asp:BoundField DataField="medicineID" HeaderText="MedicineID" SortExpression="medicineID" />
                    <asp:BoundField DataField="expiryDate" HeaderText="Expiry Date" SortExpression="expiryDate" DataFormatString="{0:MM/dd/yyyy}" />
                    <asp:BoundField DataField="refillCounter" HeaderText="Refills Left" SortExpression="refillCounter" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />

                </Columns>
            </asp:GridView>


            <br />

            

            <asp:GridView ID="grdRefills" runat="server" AutoGenerateColumns="false" CssClass="GridView" Width="100%" AllowPaging="true" AllowSorting="true"
                          PageSize="4">
                <Columns>

                    <asp:BoundField DataField="refillID" HeaderText="Refill ID" SortExpression="refillID" />
                    <asp:BoundField DataField="prescriptionID" HeaderText="Prescription ID" SortExpression="prescriptionID" />
                    <asp:BoundField DataField="dosage" HeaderText="Dosage" SortExpression="dosage" />
                    <asp:BoundField DataField="frequency" HeaderText="Frequency" SortExpression="frequency" />
                    <asp:BoundField DataField="supplyDays" HeaderText="Supply Days" SortExpression="supplyDays" />
                    <asp:BoundField DataField="quantitySupplied" HeaderText="Quantity" SortExpression="quantitySupplied" />
                    <asp:BoundField DataField="amountDue" HeaderText="Amount Due" SortExpression="amountDue" />
                    <asp:BoundField DataField="dateOfRefill" HeaderText="Date" SortExpression="date" DataFormatString="{0:MM/dd/yyyy}" />

                </Columns>
                
            </asp:GridView>
        </td>
    </tr>
</asp:Content>
