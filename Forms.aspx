<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forms.aspx.cs" Inherits="Forms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Pages.css" media="screen" />
    <title>Forms - Vergil's EduLoans
    </title>
</head>
<body>
    <form id="form3" runat="server">
        <img alt="Header" src="content/Header.png" class="header">
        <div id="homeline">
            <p class="alignleft">
                &nbsp;&nbsp;&nbsp;
            <asp:LinkButton runat="server" ID="HomeButton" href="Default.aspx">Home</asp:LinkButton>
                |
            Forms
            </p>
            <p class="alignright">
                <asp:LinkButton runat="server" ID="LoginButton" OnClick="log">Login</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
            </p>
        </div>
        <table class="table1" width="100%">
            <tr>
                <td>Vergil Account Creation Authorization</td>
                <td align="center"><a href="content/vergilaccount.pdf">
                    <img src="content/pdficon.png" width="75" /></a></td>
            </tr>
            <tr>
                <td>Federal Direct Consolidation Loan Application and Promissory Note</td>
                <td align="center"><a href="https://static.studentloans.gov/images/ApplicationAndPromissoryNote.pdf">
                    <img src="content/pdficon.png" width="75" /></a></td>
            </tr>
            <tr>
                <td>Direct Consolidation Loan Applications</td>
                <td align="center"><a href="https://studentloans.gov/myDirectLoan/consolidationPaper.action">
                    <img src="content/pdficon.png" width="75" /></a></td>
            </tr>
            <tr>
                <td>Public Service Loan Forgiveness(PSLF)</td>
                <td align="center"><a href="https://studentaid.ed.gov/sa/sites/default/files/public-service-employment-certification-
form.pdf">
                    <img src="content/pdficon.png" width="75" /></a></td>
            </tr>
        </table>
    </form>
</body>
</html>
