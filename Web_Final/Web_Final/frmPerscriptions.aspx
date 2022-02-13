<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmPerscriptions.aspx.cs" Inherits="Web_Final.frmPerscriptions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <tr>
        <td>
            <br />
            <div class="auto-style3">
            <asp:GridView ID="grdPerscriptions" runat="server" AutoGenerateColumns="false" CssClass="GridView" Width="100%" AllowPaging="true" AllowSorting="true"
                           OnSelectedIndexChanged="grdEmployeeSearch_SelectedIndexChanged">

                <Columns>
                        
                        <asp:BoundField DataField="perscriptionID" HeaderText="Perscription ID" SortExpression="perscriptionID" />
                        <asp:BoundField DataField="clientID" HeaderText="Clinet ID" SortExpression="clientID" />
                        <asp:BoundField DataField="physicianID" HeaderText="Physician ID" SortExpression="physicianID" />
                        <asp:BoundField DataField="medicineID" HeaderText="Medicine ID" SortExpression="medicineID" />
                        <asp:BoundField DataField="startDate" HeaderText="Start Date" SortExpression="startDate" />
                        <asp:BoundField DataField="expiryDate" HeaderText="Expiry Date" SortExpression="expiryDate" />
                        <asp:BoundField DataField="refillCounter" HeaderText="Refill Remaining" SortExpression="refillCounter" />
                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                         

                   <asp:TemplateField HeaderText="Update">
                                <HeaderTemplate>
                                   Update
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="hplUpdate" runat="server" Text="View" NavigateUrl='<%#Eval("refillID").ToString() %>' Target="_blank">
                                    </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
       

                        </Columns>


            </asp:GridView>
            </div>
        </td>
    </tr>

</asp:Content>
