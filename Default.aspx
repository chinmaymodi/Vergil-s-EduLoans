<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Home.css?v=<?=time();?>" media="screen" />
    <title>Vergil's EduLoans
    </title>
</head>
<body>
    <form id="form" runat="server">
        <img alt="Header" src="content/Header.png" class="header" />
        <div class="bodymain">
            <div class="body1">
                <asp:LinkButton runat="server" ID="LoginButton" OnClick="log">Login</asp:LinkButton>
                <br />
                <br />
                <a href="Default.aspx">Information Center &#9658;</a>
                <div class="hover">
                    <ul>
                        <li><a href="Glossary.aspx">Glossary</a></li>
                        <li><a href="FAQ.aspx">FAQ</a></li>
                    </ul>
                </div>
                <br />
                <br />
                <a href="MyAccount.aspx">My Account</a>
                <br />
                <br />
                <a href="Forms.aspx">Forms</a>
                <br />
                <br />
                <a href="ContactUs.aspx">Contact Us</a>
            </div>
            <div class="body2">
                <p>
                    Who We Are
                </p>
                <p>
                    Vergil's EduLoans provides loan services for the one who look for financial help to
                get his/her education goals completed.
                <br />
                    <br />
                    We provide services for Campus Based Loans, Private Education Loans and Federal Family Education Loans.
                We work hard with you to get the loan you deserve, Maintain Loan Activities, Send Payment Reminders
                and Process Payments.
                </p>
            </div>
        </div>
        <div class="images">
            <a href="https://ssl.comodo.com">
                <img alt="Comodo Secure SSL" src="content/comodo-secure-icon.png" class="icon1" />
            </a>
            <img alt="Student Problems" src="content/img1.jpg" class="icon2" />
            <img alt="Student Problems" src="content/img2.jpg" class="icon3" />
        </div>
        <div class="images">
            <asp:AdRotator ID="A1" runat="server" DataSourceID="asdf" Width="20%" OnAdCreated="AdCreated_Event" />
            <asp:AdRotator ID="A2" runat="server" DataSourceID="asdf" Width="20%" OnAdCreated="AdCreated_Event" />
            <asp:AdRotator ID="A3" runat="server" DataSourceID="asdf" Width="20%" OnAdCreated="AdCreated_Event" />
            <asp:AdRotator ID="A4" runat="server" DataSourceID="asdf" Width="20%" OnAdCreated="AdCreated_Event" />
            <asp:AdRotator ID="A5" runat="server" DataSourceID="asdf" Width="20%" OnAdCreated="AdCreated_Event" />
            <asp:XmlDataSource ID="asdf" runat="server" DataFile="asdf.xml"></asp:XmlDataSource>
        </div>
        <div class="footer">
            <br />
            <hr />
            &copy; Chinmay Modi for Vergil EduLoans. All Rights Reserved. 2016-
        </div>
    </form>
</body>
<!-- Checked on Internet Explorer 11, Microsoft Edge 38, Chrome 52 and Firefox 47.
    May show unpredictable behaviour on other browsers, or older versions of these.
    If seeing weird graphics behavior, try reloading the page once.
    -->
</html>
