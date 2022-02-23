<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmRefills.aspx.cs" Inherits="Web_Final.frmRefills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
        <td class="auto-style3">
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnNew" runat="server" Text="New Refill" OnClick="btnNew_Click" />
                <asp:GridView ID="grdRefill" runat="server" AutoGenerateColumns="false" CssClass="GridView" Width="100%" AllowPaging="true" AllowSorting="true">
                    <Columns>
                        <asp:BoundField DataField="refillID" HeaderText="Refill ID" />
                        <asp:BoundField DataField="prescriptionID" HeaderText="Prescription ID" />
                        <asp:BoundField DataField="dosage" HeaderText="Dosage"  />
                        <asp:BoundField DataField="frequency" HeaderText="Frequency"  />
                        <asp:BoundField DataField="supplyDays" HeaderText="Supply Days"  />
                        <asp:BoundField DataField="quantitySupplied" HeaderText="Quantity Supplied" />
                        <asp:BoundField DataField="amountDue" HeaderText="Amount Due"  />
                        <asp:BoundField DataField="dateOfRefill" HeaderText="Date of Refill" DataFormatString="{0:MM/dd/yyyy}" />
                         
                      <asp:TemplateField HeaderText="Update">
                                <HeaderTemplate>
                                   Update
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="hplUpdate" runat="server" Text="Update" NavigateUrl='<%#FormatURLEdit(Eval("refillID").ToString()) %>' Target="_self">
                                    </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                <HeaderTemplate>
                                   Delete
                                </HeaderTemplate>
                                <ItemTemplate>
                                    
                                    <asp:HyperLink ID="lbtnDelete" runat="server" Text="Delete" NavigateUrl='<%#FormatURLDelete(Eval("refillID").ToString()) %>' Target="_self"></asp:HyperLink>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
            </asp:GridView>
        </td>
    </tr>
</asp:Content>
