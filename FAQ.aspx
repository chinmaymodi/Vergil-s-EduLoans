<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Pages.css" media="screen" />
    <title>FAQ - Vergil's EduLoans
    </title>
</head>
<body>
    <form id="form2" runat="server">
        <a name="top"></a>
        <img alt="Header" src="content/Header.png" class="header" />
        <div id="homeline">
            <p class="alignleft">
                &nbsp;&nbsp;&nbsp;
            <asp:LinkButton runat="server" ID="HomeButton" href="Default.aspx">Home</asp:LinkButton>
                |
            FAQ
            </p>
            <p class="alignright">
                <asp:LinkButton runat="server" ID="LoginButton" OnClick="log">Login</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
            </p>
        </div>
        <div id="pagetitle">
            <p class="alignmid">
                General Glossary
            </p>
            <p class="alignleft">
                Frequently Asked Questions
            </p>
        </div>
        <br />
        <br />
        <hr style="clear: both; width: 100%" />
        <b>Q: Why do I need to register for a user name and password?</b> A: By registering for a user name and password you 
    will be able to view your account information, change your address, use the Deferment Assistant (FFEL only), 
    and make payments at our site. Using the log in process will allow us to customize information according to the 
    types of loan(s) that ACS services for you. By not logging in, you will only have access to general information. 
    <a href="#top">[Back to top]</a>
        <br />
        <br />
        <b>Q: How do I register?</b> A: Click on the Register button on the right side of the Borrower Services home page. Enter 
    your social security number, your date of birth, and zip code. Once you have entered the required fields, create 
    a user name and password (both need to be at least 6 characters). You will also be asked to create a "hint question" 
    that will be asked if you forget your password. <a href="#top">[Back to top]</a>
        <br />
        <br />
        <b>Q: What if I forget my user name and/or password?</b> A: Just click on the Forgot Password button on the Borrower 
    Services home page. This page will allow you to retrieve both your user name and password. To obtain your user 
    name, enter your social security number and password, and click on Get User Name. If you forget your password, 
    enter your social security number and click on Get Hint. You will be asked the hint question you entered during 
    the registration process. Once you have answered this question correctly, you will be allowed to set up a new 
    password. <a href="#top">[Back to top]</a>
        <br />
        <br />
        <b>Q: What if I no longer wish my account information to be displayed?</b> A: Enter your user name and password and click 
    on the Disable Account button at the Borrower Services home page. You will be given instructions on disabling your 
    account access. <a href="#top">[Back to top]</a>
        <br />
        <br />
        <b>Q: What if I have disabled my account access and now wish to restore this access?</b> A: You will need to contact the 
    Borrower Services Department of the ACS division that services your student loan account. The easiest way to do 
    this is to enter the Guest Services link, select the ACS division that services your loan, and click the Contact 
    Us link. <a href="#top">[Back to top]</a>
        <br />
        <br />
        <b>Q: What is the difference between FFEL and CPS?</b> A: They are two completely different loan programs, both serviced 
    by ACS. FFEL loans consist of Stafford loans, Consolidated loans, and PLUS loans. CPS loans include Federal Perkins 
    loans, Health (HPSL) loans, and Nursing (NSL) loans. Your account information is not co-mingled. Therefore, if you 
    have FFEL and CPS loans, and you need to change your address, you will need to change it in both 
    programs. <a href="#top">[Back to top]</a>
        <br />
        <br />
        <b>Q: Do I need to register to view my account online?</b> A: Yes, you need to register the first time you want to view 
    your account status. After you register, you will only need to enter your user name and password in order to view 
    your account in the future. <a href="#top">[Back to top]</a>
        <br />
        <br />
        <b>Q: May I get additional student loans from ACS?</b> A: ACS is not a lending institution. You should contact the financial 
    aid office of your school for information about obtaining additional student loans. <a href="#top">[Back to top]</a>
    </form>
</body>
</html>
