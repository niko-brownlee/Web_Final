<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmUnscessful.aspx.cs" Inherits="Web_Final.frmUnscessful" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="MainStyleSheet.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Im sorry, this task has been deemed <span class="auto-style2">unscuccessful!</span><br />
            Please try again!<br />
            <br />
            <br />
            <asp:Button ID="btnClose" runat="server" BackColor="#669999" BorderColor="#3333CC" Text="Close" />
        </div>
    </form>
</body>
</html>
