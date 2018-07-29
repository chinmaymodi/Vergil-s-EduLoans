<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Pages.css" media="screen" />
    <title>Register - Vergil's EduLoans
    </title>
</head>
<body>
    <form id="form6" runat="server">
        <img alt="Header" src="content/Header.png" class="header" />
        <div id="homeline">
            <p class="alignleft">
                &nbsp;&nbsp;&nbsp;
            <asp:LinkButton runat="server" ID="HomeButton" href="Default.aspx">Home</asp:LinkButton>
                |
            Registration
            </p>
            <p class="alignright">
                <asp:LinkButton runat="server" ID="LoginButton" href="Login.aspx">Login</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
            </p>
        </div>
        <span>
            <asp:CheckBox ID="CheckBoxRegistration" runat="server" Style="vertical-align: middle; display: table-cell;" />
            <label style="vertical-align: middle; display: table-cell;">
                By providing this information, I certify that I am the person identified by these items, and that I agree to the site Terms of Use.
            </label>
        </span>
        <br />
        <table class="table3" border="0">
            <tr>
                <td>Full Name<span style="color: red;">*</span></td>
                <td>
                    <asp:TextBox runat="server" Columns="60" ID="fullName"></asp:TextBox>
                    <span class="tooltip" style="color: red; background-color: yellow;">?&nbsp;
                        <span class="tooltiptext" style="width: 200px; margin-left: -100px;">Enter your official full name here.
                        </span>
                    </span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="fullName" ErrorMessage="Name cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Social Security Number<span style="color: red;">*</span></td>
                <td>
                    <asp:TextBox runat="server" Columns="20" ID="ssn" AutoPostBack="True" OnTextChanged="SSN_Changed" CausesValidation="true"></asp:TextBox>
                    <span class="tooltip" style="color: red; background-color: yellow;">?&nbsp;
                        <span class="tooltiptext">Once you set up a User Name to access your account, you will no longer need to provide your complete social security number/
                            account number, birthdate or zip code to login. For security, you will need to provide your full social security number or 
                            account number if you forget your User Name or Password.
                        </span>
                    </span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="ssn" ErrorMessage="SSN cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ControlToValidate="ssn" ErrorMessage="Invalid SSN, enter like 999-99-9999" ValidationExpression="^\d{3}-?\d{2}-?\d{4}$"><span style="color:red;">*</span></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Social Security Number<span style="color: red;">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="ssnConfirm"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ControlToValidate="ssnConfirm" ErrorMessage="SSN confirmation cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" ControlToValidate="ssnConfirm" ErrorMessage="Invalid SSN in confirmation, enter like 999-99-9999" ValidationExpression="^\d{3}-?\d{2}-?\d{4}$"><span style="color:red;">*</span></asp:RegularExpressionValidator>
                    <asp:CompareValidator runat="server" id="CompareValidator1" controltovalidate="ssn" controltocompare="ssnConfirm" type="String" ErrorMessage="SSN fields do not match"><span style="color:red;">*</span></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Date of Birth<span style="color: red;">*</span></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                  <asp:ListItem Selected="True">January</asp:ListItem>
                  <asp:ListItem>February</asp:ListItem>
                  <asp:ListItem>March</asp:ListItem>
                  <asp:ListItem>April</asp:ListItem>
                  <asp:ListItem>May</asp:ListItem>
                  <asp:ListItem>June</asp:ListItem>
                  <asp:ListItem>July</asp:ListItem>
                  <asp:ListItem>August</asp:ListItem>
                  <asp:ListItem>September</asp:ListItem>
                  <asp:ListItem>October</asp:ListItem>
                  <asp:ListItem>November</asp:ListItem>
                  <asp:ListItem>December</asp:ListItem>
              </asp:DropDownList>

                    <asp:DropDownList ID="DropDownList2" runat="server">
                  <asp:ListItem Selected="True">1</asp:ListItem>
                  <asp:ListItem>2</asp:ListItem>
                  <asp:ListItem>3</asp:ListItem>
                  <asp:ListItem>4</asp:ListItem>
                  <asp:ListItem>5</asp:ListItem>
                  <asp:ListItem>6</asp:ListItem>
                  <asp:ListItem>7</asp:ListItem>
                  <asp:ListItem>8</asp:ListItem>
                  <asp:ListItem>9</asp:ListItem>
                  <asp:ListItem>10</asp:ListItem>
                  <asp:ListItem>11</asp:ListItem>
                  <asp:ListItem>12</asp:ListItem>
                  <asp:ListItem>13</asp:ListItem>
                  <asp:ListItem>14</asp:ListItem>
                  <asp:ListItem>15</asp:ListItem>
                  <asp:ListItem>16</asp:ListItem>
                  <asp:ListItem>17</asp:ListItem>
                  <asp:ListItem>18</asp:ListItem>
                  <asp:ListItem>19</asp:ListItem>
                  <asp:ListItem>20</asp:ListItem>
                  <asp:ListItem>21</asp:ListItem>
                  <asp:ListItem>22</asp:ListItem>
                  <asp:ListItem>23</asp:ListItem>
                  <asp:ListItem>24</asp:ListItem>
                  <asp:ListItem>25</asp:ListItem>
                  <asp:ListItem>26</asp:ListItem>
                  <asp:ListItem>27</asp:ListItem>
                  <asp:ListItem>28</asp:ListItem>
                  <asp:ListItem>29</asp:ListItem>
                  <asp:ListItem>30</asp:ListItem>
                  <asp:ListItem>31</asp:ListItem>
              </asp:DropDownList>

                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                  <asp:ListItem>2001</asp:ListItem>
                  <asp:ListItem>2000</asp:ListItem>
                  <asp:ListItem>1999</asp:ListItem>
                  <asp:ListItem>1998</asp:ListItem>
                  <asp:ListItem>1997</asp:ListItem>
                  <asp:ListItem>1996</asp:ListItem>
                  <asp:ListItem>1995</asp:ListItem>
                  <asp:ListItem>1994</asp:ListItem>
                  <asp:ListItem>1993</asp:ListItem>
                  <asp:ListItem>1992</asp:ListItem>
                  <asp:ListItem>1991</asp:ListItem>
                  <asp:ListItem>1990</asp:ListItem>
                  <asp:ListItem>1989</asp:ListItem>
                  <asp:ListItem>1988</asp:ListItem>
                  <asp:ListItem>1987</asp:ListItem>
                  <asp:ListItem>1986</asp:ListItem>
                  <asp:ListItem>1985</asp:ListItem>
                  <asp:ListItem>1984</asp:ListItem>
                  <asp:ListItem>1983</asp:ListItem>
                  <asp:ListItem>1982</asp:ListItem>
                  <asp:ListItem>1981</asp:ListItem>
                  <asp:ListItem>1980</asp:ListItem>
                  <asp:ListItem>1979</asp:ListItem>
                  <asp:ListItem>1978</asp:ListItem>
                  <asp:ListItem>1977</asp:ListItem>
                  <asp:ListItem>1976</asp:ListItem>
                  <asp:ListItem>1975</asp:ListItem>
                  <asp:ListItem>1974</asp:ListItem>
                  <asp:ListItem>1973</asp:ListItem>
                  <asp:ListItem>1972</asp:ListItem>
                  <asp:ListItem>1971</asp:ListItem>
                  <asp:ListItem>1970</asp:ListItem>
                  <asp:ListItem>1969</asp:ListItem>
                  <asp:ListItem>1968</asp:ListItem>
                  <asp:ListItem>1967</asp:ListItem>
                  <asp:ListItem>1966</asp:ListItem>
                  <asp:ListItem>1965</asp:ListItem>
                  <asp:ListItem>1964</asp:ListItem>
                  <asp:ListItem>1963</asp:ListItem>
                  <asp:ListItem>1962</asp:ListItem>
                  <asp:ListItem>1961</asp:ListItem>
                  <asp:ListItem>1960</asp:ListItem>
                  <asp:ListItem>1959</asp:ListItem>
                  <asp:ListItem>1958</asp:ListItem>
                  <asp:ListItem>1957</asp:ListItem>
                  <asp:ListItem>1956</asp:ListItem>
                  <asp:ListItem>1955</asp:ListItem>
                  <asp:ListItem>1954</asp:ListItem>
                  <asp:ListItem>1954</asp:ListItem>
                  <asp:ListItem>1952</asp:ListItem>
                  <asp:ListItem>1951</asp:ListItem>
                  <asp:ListItem>1950</asp:ListItem>
              </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Address<span style="color: red;">*</span></td>
                <td>
                    <asp:TextBox runat="server" Columns="80" ID="address"></asp:TextBox>
                    <span class="tooltip" style="color: red; background-color: yellow;">?&nbsp;
                        <span class="tooltiptext">Many foreign countries do not have a zip code. If you are foreign, you can skip the zip code in the address.
                        </span>
                    </span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ControlToValidate="address" ErrorMessage="Address cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>User Name<span style="color: red;">*</span></td>
                <td>
                    <asp:TextBox runat="server" ID="userName"></asp:TextBox>
                    <span class="tooltip" style="color: red; background-color: yellow;">6 to 64 characters&nbsp;
                    </span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ControlToValidate="userName" ErrorMessage="Username cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic" ControlToValidate="userName" ErrorMessage="Invalid username, must be between 5 to 11 characters long and contain only numbers and letters, must begin with a letter" ValidationExpression="^[a-zA-Z][a-zA-Z0-9]{5,11}$"><span style="color:red;">*</span></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Password<span style="color: red;">*</span></td>
                <td>
                    <asp:TextBox runat="server" TextMode="Password" ID="password"></asp:TextBox>
                    <span class="tooltip" style="color: red; background-color: yellow;">Password Rules&nbsp;
                        <span class="tooltiptext" style="width: 400px; margin-left: -400px;">Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain 
                            special characters.
                        </span>
                    </span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ControlToValidate="password" ErrorMessage="Password cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" Display="Dynamic" ControlToValidate="password" ErrorMessage="Invalid password, must be between 8 and 10 characters, contain at least one digit and one 
                                alphabetic character, and must not contain special characters" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$"><span style="color:red;">*</span></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password<span style="color: red;">*</span></td>
                <td>
                    <asp:TextBox runat="server" TextMode="Password" ID="passwordConfirm"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ControlToValidate="passwordConfirm" ErrorMessage="Password confirmation cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" Display="Dynamic" ControlToValidate="passwordConfirm" ErrorMessage="Invalid password confirmation, must be between 8 and 10 characters, contain at least one digit and one 
                                alphabetic character, and must not contain special characters" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$"><span style="color:red;">*</span></asp:RegularExpressionValidator>
                    <asp:CompareValidator runat="server" id="CompareValidator2" controltovalidate="password" controltocompare="passwordConfirm" type="String" ErrorMessage="Password fields do not match"><span style="color:red;">*</span></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Email Address<span style="color: red;">*</span></td>
                <td>
                    <asp:TextBox runat="server" Columns="30" ID="email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ControlToValidate="email" ErrorMessage="Email cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" Display="Dynamic" ControlToValidate="email" ErrorMessage="Invalid email address" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"><span style="color:red;">*</span></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Email Address<span style="color: red;">*</span></td>
                <td>
                    <asp:TextBox runat="server" Columns="30" ID="emailConfirm"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ControlToValidate="emailConfirm" ErrorMessage="Email confirmation cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" Display="Dynamic" ControlToValidate="emailConfirm" ErrorMessage="Invalid email address in confirmation" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"><span style="color:red;">*</span></asp:RegularExpressionValidator>
                    <asp:CompareValidator runat="server" id="CompareValidator3" controltovalidate="email" controltocompare="emailConfirm" type="String" ErrorMessage="Emails do not match"><span style="color:red;">*</span></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Security Question<span style="color: red;">*</span></td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="528px">
                  <asp:ListItem Selected="True">What is your mother&#39;s maiden name?</asp:ListItem>
                  <asp:ListItem>What was your childhood nickname?</asp:ListItem>
                  <asp:ListItem>What is the name of your favorite childhood friend?</asp:ListItem>
                  <asp:ListItem>What is your favorite sport team?</asp:ListItem>
                  <asp:ListItem>What was the make and model of your first car?</asp:ListItem>
                  <asp:ListItem>What school did you attend for sixth grade?</asp:ListItem>
                  <asp:ListItem>What was the last name of your third grade teacher?</asp:ListItem>
                  <asp:ListItem>In what town was your first job?</asp:ListItem>
                  <asp:ListItem>What is your favorite movie?</asp:ListItem>
                  <asp:ListItem>Who is your childhood sports hero?</asp:ListItem>
              </asp:DropDownList>
                    <span class="tooltip" style="color: red; background-color: yellow;">?&nbsp;
                        <span class="tooltiptext" style="width: 400px; margin-left: -400px;">Single word answers are best. John, red, green, drum for example.
                        </span>
                    </span>
                </td>
            </tr>
            <tr>
                <td>Answer<span style="color: red;">*</span></td>
                <td>
                    <asp:TextBox runat="server" Columns="30" ID="securityAnswer"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic" ControlToValidate="securityAnswer" ErrorMessage="Security Answer cannot be empty"><span style="color:red;">*</span></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <span style="color: red">* DENOTES REQUIRED ITEMS
        </span>
        <br />
        <asp:ValidationSummary id="valSum" 
                             DisplayMode="BulletList"
                             EnableClientScript="true"
                             HeaderText="There are problems with your details:"
                             style="color:red;"
                             runat="server"/>
        <div style="text-align: center;">
            <asp:Button runat="server" ID="RegisterSubmit" Text="Submit" OnClick="SubmitButtonClick" />
        </div>
    </form>
</body>
</html>
