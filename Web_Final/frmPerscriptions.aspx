<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmPerscriptions.aspx.cs" Inherits="Web_Final.frmPerscriptions" %>
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
            <asp:GridView ID="grdPrescriptions" runat="server" AutoGenerateColumns="false" CssClass="GridView" Width="100%" AllowPaging="true" AllowSorting="true">

                <Columns>
                        
                        <asp:BoundField DataField="prescriptionID" HeaderText="Prescription ID" />
                        <asp:BoundField DataField="clientID" HeaderText="Client ID"  />
                        <asp:BoundField DataField="physicianID" HeaderText="Physician ID" />
                        <asp:BoundField DataField="medicineID" HeaderText="Medicine ID"  />
                        <asp:BoundField DataField="startDate" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}"/>
                        <asp:BoundField DataField="expiryDate" HeaderText="Expiry Date"  DataFormatString="{0:MM/dd/yyyy}"/>
                        <asp:BoundField DataField="refillCounter" HeaderText="Refill Remaining" />
                        <asp:BoundField DataField="price" HeaderText="Price"  />
                         

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
