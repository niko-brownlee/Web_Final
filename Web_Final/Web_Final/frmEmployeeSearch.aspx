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
                    <td class="auto-style3"><span class="auto-style6">Search For Client:&nbsp;&nbsp; </span>&nbsp;<asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style7" Width="346px"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="grdEmployeeSearch" runat="server" AutoGenerateColumns="false" CssClass="GridView" Width="100%" AllowPaging="true" AllowSorting="true"
                           OnSelectedIndexChanged="grdEmployeeSearch_SelectedIndexChanged">
                            <%-- <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="Go To First Page" LastPageText="Go To Last Page"Position="Top" />--%>
                            <Columns>

                                <asp:BoundField DataField="clientID" HeaderText="Client ID" SortExpression="clientID" />
                                <asp:BoundField DataField="fName" HeaderText="Client First Name" SortExpression="fName" />
                                <asp:BoundField DataField="mInitial" HeaderText="Mid.Int" SortExpression="mInitial" />
                                <asp:BoundField DataField="lName" HeaderText="Last Name" SortExpression="lName" />
                                <asp:BoundField DataField="dateOfBirth" HeaderText="Date of Birth" SortExpression="dateOfBirth" />
                                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                <asp:BoundField DataField="street1" HeaderText="Street 1" SortExpression="street1" />
                                <asp:BoundField DataField="street2" HeaderText="Street 2" SortExpression="street2" />
                                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                <asp:BoundField DataField="addr_state" HeaderText="State" SortExpression="addr_state" />
                                <asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip" />
                                
                                <asp:TemplateField HeaderText="View">
                                <HeaderTemplate>
                                   Refill
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="hplRefill" runat="server" Text="View" NavigateUrl='<%#(FormatURLRefill(Eval("clientID").ToString())) %>' Target="_blank">
                                    </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                                <asp:TemplateField HeaderText="View">
                                <HeaderTemplate>
                                   Prescriptions
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="hplPrescription" runat="server" Text="View" NavigateUrl='<%#(FormatURLPresc(Eval("clientID").ToString())) %>' Target="_blank">
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
