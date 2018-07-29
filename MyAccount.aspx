<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Pages.css" media="screen" />
    <title>MyAccount - Vergil's EduLoans
    </title>
</head>
<body>
    <form id="form7" runat="server">
        <img alt="Header" src="content/Header.png" class="header" />
        <div id="homeline">
            <p class="alignleft">
                &nbsp;&nbsp;&nbsp;
            <asp:LinkButton runat="server" ID="HomeButton" href="Default.aspx">Home</asp:LinkButton>
                |
            My Account
            </p>
            <p class="alignright">
                <asp:LinkButton runat="server" ID="LoginButton" OnClick="log">Logout</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
            </p>
        </div>
        <h1>
            <div style="text-align: center;">
                Your Loan Account Details
            </div>
        </h1>
        <hr />
        <h2>
            <div id="Details" style="color: blue; width: 600px;">
                <span style="float: left;">Account Number:
                </span>
                <asp:Label ID="acnum" runat="server" Text="999999999999" style="float:right;"></asp:Label>
                <br />
                <span style="float: left;">Full Name:
                </span>
                <asp:Label ID="acname" runat="server" Text="John Nathaniel Doe" style="float:right;"></asp:Label>
                <br />
                <span style="float: left;">Last Updated Date:
                </span>
                <asp:Label ID="updatedate" runat="server" Text="MM/DD/YYYY" style="float: right;"></asp:Label>
            </div>
        </h2>
        <br />
        <hr />
        <div id="Balances">
            <table class="table4" width="100%">
                <tr>
                    <td class="left">Current Balance
                    </td>
                        <asp:TableCell runat="server" ID="cell1" HorizontalAlign="Right" ForeColor="Red">99999.99</asp:TableCell>
                </tr>
                <tr>
                    <td class="left">Last Updated Date
                    </td>
                        <asp:TableCell runat="server" ID="cell2" HorizontalAlign="Right" ForeColor="Red">02/02/1992</asp:TableCell>
                </tr>
                <tr>
                    <td class="left">Regular Monthly Payment Amount
                    </td>
                        <asp:TableCell runat="server" ID="cell3" HorizontalAlign="Right" ForeColor="Red">999.99</asp:TableCell>
                </tr>
                <tr>
                    <td class="left">Amount Satisfied by Extra Payment
                    </td>
                        <asp:TableCell runat="server" ID="cell4" HorizontalAlign="Right" ForeColor="Red">999.99</asp:TableCell>
                </tr>
                <tr>
                    <td class="left">Past Due Amount (if applicable)
                    </td>
                        <asp:TableCell runat="server"  ID="cell5" HorizontalAlign="Right" ForeColor="Red">999.99</asp:TableCell>
                </tr>
                <tr>
                    <td class="left">Current Amount Due
                    </td>
                        <asp:TableCell runat="server" ID="cell6" HorizontalAlign="Right" ForeColor="Red">999.99</asp:TableCell>
                </tr>
            </table>
        </div>
        <br />
        <h1 style="color: blue;">Current Statement Due Date:&nbsp;
            <asp:Label ID="dueDate" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" Text="MM/DD/YYYY"></asp:Label>
        </h1>
    </form>
</body>
</html>
