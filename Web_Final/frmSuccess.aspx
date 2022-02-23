﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSuccess.aspx.cs" Inherits="Web_Final.frmSuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="MainStyleSheet.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Success!<br />
            <br />
            <br />
            <asp:Label ID="lblSuccess" runat="server" Text="Thank you!"></asp:Label>
            <br />
            <asp:Button ID="btnClose" runat="server" BackColor="#669999" BorderColor="#3333CC" Text="Close" OnClick="btnClose_Click" CausesValidation="False" />
        </div>
    </form>
</body>
</html>
