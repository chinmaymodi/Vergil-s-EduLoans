<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Pages.css" media="screen" />
    <script type="text/javascript" src="contactus.js"></script>
    <title>Contact Us - Vergil's EduLoans
    </title>
</head>
<body onload="loadXMLDoc()">
    <form id="form4" runat="server">
        <img alt="Header" src="content/Header.png" class="header" />
        <div id="homeline">
            <p class="alignleft">
                &nbsp;&nbsp;&nbsp;
            <asp:LinkButton runat="server" ID="HomeButton" OnClick="goHome">Home</asp:LinkButton>
                |
            Contact Us
            </p>
            <p class="alignright">
                <asp:LinkButton runat="server" ID="LoginButton" OnClick="log">Login</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
            </p>
        </div>
        <table id="table2" style="width:100%;"></table>
        <br />
        <p style="text-align: center;">
            <asp:Label ID="logInMessage1" runat="server" ForeColor="red" Text="You must be logged in to send us a message."></asp:Label>
            <br />
            <asp:Label ID="logInMessage2" runat="server" ForeColor="blue" Text=""></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Columns="100" Rows="10" Enabled="false"></asp:TextBox>
            <br />
            <asp:Button runat="server" ID="ContactUsSubmit" Text="Submit" OnClick="SubmitButtonClick" Enabled="False"/>

        </p>
    </form>
</body>
</html>
