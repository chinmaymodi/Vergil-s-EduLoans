<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Pages.css" media="screen" />
    <title>Recover Password - Vergil's EduLoans
    </title>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form9" runat="server">
        <a name="top"></a>  
        <img alt="Header" src="content/Header.png" class="header">
        <div id="homeline">
            <p class="alignleft">
                &nbsp;&nbsp;&nbsp;
            <asp:LinkButton runat="server" ID="HomeButton" href="Default.aspx">Home</asp:LinkButton>
                |
            Login
            </p>
        </div>
        <p style="text-align: left; font-size: 2em; color: blue;">Password Recovery</p>
        <asp:ValidationSummary id="valSum" 
                             DisplayMode="BulletList"
                             EnableClientScript="true"
                             HeaderText="There are problems with your details:"
                             style="color:red;"
                             runat="server"/>
        <table id="recovery" style="font-size:1.2em;">
            <tr>
                <td>
                    <span style=""color:blue;">Email Address</span>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="EmailAddress" Columns="60"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="EmailAddress" ErrorMessage="Email Address cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ControlToValidate="EmailAddress" ErrorMessage="Invalid email address" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"><span style="color:red;">*</span></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:Button runat="server" ID="RecoverButton" Text="Recover Passsword" OnClick="SubmitButtonClick" />
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <span style="text-align:center; font-size:0.8em;">
                        <a href="Default.aspx">Go Back To Main Page</a>
                    </span>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
