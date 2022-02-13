<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmRefills.aspx.cs" Inherits="Web_Final.frmRefills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <tr>
        <td>
            
                <asp:GridView ID="grdRefill" runat="server" AutoGenerateColumns="false" CssClass="GridView" Width="100%" AllowPaging="true" AllowSorting="true"
                           OnSelectedIndexChanged="grdEmployeeSearch_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="refillID" HeaderText="Refill ID" SortExpression="refillID" />
                        <asp:BoundField DataField="perscriptionID" HeaderText="Perscription ID" SortExpression="perscriptionID" />
                        <asp:BoundField DataField="dosage" HeaderText="Dosage" SortExpression="dosage" />
                        <asp:BoundField DataField="frequency" HeaderText="Frequency" SortExpression="frequency" />
                        <asp:BoundField DataField="supplyDays" HeaderText="Supply Days" SortExpression="supplyDays" />
                        <asp:BoundField DataField="quantitySupplied" HeaderText="Quantity Supplied" SortExpression="quantitySupplied" />
                        <asp:BoundField DataField="amountDue" HeaderText="Amount Due" SortExpression="amountDue" />
                        <asp:BoundField DataField="dateOfRefill" HeaderText="Date of Refill" SortExpression="dateOfRefill" />
                         
                        

                      <asp:TemplateField HeaderText="Update">
                                <HeaderTemplate>
                                   Update
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="hplUpdate" runat="server" Text="View" NavigateUrl='<%#(Eval("refillID").ToString()) %>' Target="_blank">
                                    </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                <HeaderTemplate>
                                   Delete
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="hplDelete" runat="server" Text="View" NavigateUrl='<%#(Eval("refillID").ToString()) %>' Target="_blank">
                                    </asp:HyperLink>
                                </ItemTemplate>

                            </asp:TemplateField>

                        </Columns>

            </asp:GridView>
        </td>
    </tr>
</asp:Content>
