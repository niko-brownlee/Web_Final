<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmEmployeeSearch.aspx.cs" Inherits="Web_Final.frmEmployeeSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
  
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style7 {
            margin-left: 0px;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <tr>
        <td>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style3"><span class="auto-style6">Search For Client:&nbsp;&nbsp; </span>&nbsp;<asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style7" Width="346px" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                         <asp:CompareValidator ID="cv" runat="server" ControlToValidate="txtSearch" Type="Integer"
                         Operator="DataTypeCheck" ErrorMessage="Value must be a whole number!"></asp:CompareValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAddClient" runat="server" OnClick="btnAddClient_Click" Text="Add New Client" />
                        &nbsp;
                        <asp:Button ID="btnAddPhys" runat="server" OnClick="btnAddPhys_Click" Text="Add New Physician" />
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="grdEmployeeSearch" runat="server" AutoGenerateColumns="false" CssClass="GridView" Width="100%" AllowPaging="true" AllowSorting="true">
                            <%-- <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="Go To First Page" LastPageText="Go To Last Page"Position="Top" />--%>
                            <Columns>

                                <asp:BoundField DataField="clientID" HeaderText="Client ID"  />
                                <asp:BoundField DataField="fName" HeaderText="Client First Name" />
                                <asp:BoundField DataField="mInitial" HeaderText="Mid.Int" />
                                <asp:BoundField DataField="lName" HeaderText="Last Name"  />
                                <asp:BoundField DataField="dateOfBirth" HeaderText="Date of Birth" DataFormatString="{0:MM/dd/yyyy}" />
                                <asp:BoundField DataField="gender" HeaderText="Gender"  />
                                <asp:BoundField DataField="phone" HeaderText="Phone Number" />
                                <asp:BoundField DataField="email" HeaderText="Email"  />
                                <asp:BoundField DataField="street1" HeaderText="Street 1"  />
                                <asp:BoundField DataField="street2" HeaderText="Street 2" />
                                <asp:BoundField DataField="city" HeaderText="City"  />
                                <asp:BoundField DataField="addr_state" HeaderText="State"  />
                                <asp:BoundField DataField="zip" HeaderText="Zip"  />
                                
                                <asp:TemplateField HeaderText="Update">
                                    <HeaderTemplate>
                                        Update Client
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="hlpClient" runat="server" Text="Update" NavigateUrl='<%#(FormatURLClient(Eval("clientID").ToString())) %>' Target="_self">
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="View">
                                    <HeaderTemplate>
                                        Prescriptions
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="hplPrescription" runat="server" Text="View" NavigateUrl='<%#(FormatURLPresc(Eval("clientID").ToString())) %>' Target="_self">
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="View">
                                    <HeaderTemplate>
                                        Refill
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="hplRefill" runat="server" Text="View" NavigateUrl='<%#(FormatURLRefill(Eval("clientID").ToString())) %>' Target="_self">
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</asp:Content>
