<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Pages.css" media="screen" />
    <title>Login - Vergil's EduLoans
    </title>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form5" runat="server">
        <a name="top"></a>  
        <img alt="Header" src="content/Header.png" class="header" />
        <div id="homeline">
            <p class="alignleft">
                &nbsp;&nbsp;&nbsp;
            <asp:LinkButton runat="server" ID="HomeButton" href="Default.aspx">Home</asp:LinkButton>
                |
            Login
            </p>
        </div>
        <p style="text-align: center; font-size: 2em;">User Login</p>
        <span style="color: red;font-size:1.2em;">If you are not a registered user, please click here: </span>
        <asp:LinkButton runat="server" ID="RegisterButton" href="Register.aspx" Font-Size="X-Large">Register Now</asp:LinkButton>
        <br />
        <br />
        <span style="color: blue;font-size:1.2em;">If you are a registered user, please enter your login credentials below</span>
        <br />
        <br />
        <span style="color: blue;font-size:0.8em;">If you forgot your password, please click here <a href="PasswordRecovery.aspx">Recover My Password</a></span>
        <br />
        <br />
        <asp:ValidationSummary id="valSum" 
                             DisplayMode="BulletList"
                             EnableClientScript="true"
                             HeaderText="There are problems with your details:"
                             style="color:red;"
                             runat="server"/>
        <table id="aligntable">
            <tr>
                <td>User ID (Email Address): <span style="color: red;">*</span></td>
                <td><asp:TextBox runat="server" ID="EmailAddress"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="EmailAddress" ErrorMessage="Email Address cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ControlToValidate="EmailAddress" ErrorMessage="Invalid email address" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"><span style="color:red;">*</span></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password: <span style="color: red;">*</span></td>
                <td class="auto-style1"><asp:TextBox runat="server" ID="Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="Password" ErrorMessage="Password cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><span style="color:red;">* DENOTES REQUIRED ITEMS</span></td>
                <td><asp:Button runat="server" ID="LoginButton" Text="Log In" OnClick="SubmitButtonClick" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
