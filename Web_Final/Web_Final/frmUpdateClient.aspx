<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmUpdateClient.aspx.cs" Inherits="Web_Final.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server"> 
    <style type="text/css">
        .auto-style3 {
            width: 417px;
            height: 481px;
        }
        .auto-style4 {
            width: 145px;
        }
        .auto-style5 {
        width: 68%;
    }
        .auto-style7 {
            width: 143px;
            text-align: left;
        }
        .auto-style9 {
            width: 810px;
            text-align: left;
        }
        .auto-style10 {
            width: 134px;
        }
        .auto-style11 {
            width: 140px;
            height: 30px;
        }
        .auto-style13 {
            width: 140px;
            text-align: right;
            height: 39px;
        }
        .auto-style14 {
            width: 140px;
            height: 23px;
        }
        .auto-style15 {
            width: 143px;
            text-align: left;
            height: 23px;
        }
        .auto-style16 {
            width: 134px;
            height: 23px;
        }
        .auto-style18 {
            width: 810px;
            text-align: left;
            height: 23px;
        }
        .auto-style19 {
            text-align: left;
            height: 39px;
        }
        .auto-style20 {
            width: 140px;
            text-align: right;
            height: 44px;
        }
        .auto-style21 {
            width: 143px;
            text-align: left;
            height: 44px;
        }
        .auto-style22 {
            width: 134px;
            height: 44px;
        }
        .auto-style24 {
            width: 810px;
            text-align: left;
            height: 44px;
        }
        .auto-style26 {
            width: 810px;
            text-align: left;
            height: 39px;
        }
        .auto-style27 {
            width: 140px;
            text-align: right;
        }
        .auto-style28 {
            width: 140px;
            text-align: right;
            height: 29px;
        }
        .auto-style29 {
            width: 143px;
            text-align: left;
            height: 29px;
        }
        .auto-style30 {
            width: 134px;
            height: 29px;
        }
        .auto-style32 {
            width: 810px;
            text-align: left;
            height: 29px;
        }
        .auto-style33 {
            width: 140px;
            height: 23px;
            text-align: right;
        }
        .auto-style34 {
            width: 591px;
            text-align: right;
            height: 44px;
        }
        .auto-style35 {
            width: 591px;
            text-align: right;
            height: 39px;
        }
        .auto-style36 {
            width: 591px;
            text-align: right;
            height: 29px;
        }
        .auto-style37 {
            width: 591px;
            text-align: right;
        }
        .auto-style38 {
            width: 591px;
            height: 23px;
            text-align: right;
        }
        .auto-style39 {
            width: 810px;
            text-align: left;
            height: 23px;
            color: #FF0000;
        }
        .auto-style40 {
            color: #FF0000;
        }
        .auto-style41 {
            width: 143px;
            text-align: left;
            height: 30px;
        }
        .auto-style42 {
            width: 134px;
            height: 30px;
        }
        .auto-style43 {
            width: 591px;
            text-align: right;
            height: 30px;
        }
        .auto-style44 {
            width: 810px;
            text-align: left;
            height: 30px;
        }
    </style>
</asp:Content>

       <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
        
                
           
           

           <tr>
    <td>
        <table class="auto-style5">
            <tr>
                <td class="auto-style20"><span class="auto-style40">*</span>First Name:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style22">Mid Int.
                    <asp:TextBox ID="TextBox3" runat="server" Width="25px"></asp:TextBox>
                </td>
                <td class="auto-style34"><span class="auto-style40">*</span>Last Name:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox2" runat="server" Width="121px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Address:</td>
                <td class="auto-style19" colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server" Width="321px"></asp:TextBox>
                </td>
                <td class="auto-style35">Address 2:</td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox5" runat="server" Width="381px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">City:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="TextBox6" runat="server" Width="196px"></asp:TextBox>
                </td>
                <td class="auto-style30">&nbsp;&nbsp; State:
                    <asp:TextBox ID="TextBox7" runat="server" Width="36px"></asp:TextBox>
                </td>
                <td class="auto-style36">Zip Code:</td>
                <td class="auto-style32">
                    <asp:TextBox ID="TextBox8" runat="server" Width="89px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Phone:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style37">Email:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox10" runat="server" Width="384px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style33"><span class="auto-style40">*</span>Gender:</td>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style38"><span class="auto-style40">*</span>Date of Birth:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
                <td class="auto-style38"></td>
                <td class="auto-style39">MM/DD/YYYY</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style41"></td>
                <td class="auto-style42">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td class="auto-style43">
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
                <td class="auto-style44">
                    <asp:Button ID="Button3" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
    </td>
</tr>
  
        
                
           
           

</asp:Content>
