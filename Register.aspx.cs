using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    /*
    protected void SubmitButtonClick(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Thank you for submitting your registration. You can now login by clicking the \"Login\" link at the top right hand side of this page.')</script>");
    }
    */
    protected void SSN_Changed(object sender, EventArgs e)
    {
        List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
        string validatessn = ssn.Text;
        if (Application["AllUsersList"] != null)
        {

            if (allUsersList != null)
            {
                for (int i = 0; i < allUsersList.Count; i++)
                {
                    if (allUsersList[i].SocialSecurityNumber == validatessn)
                    {
                        string message = "User already exists. Please go to login page.";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                    }
                }
            }
        }
            }

    protected void SubmitButtonClick(object sender, EventArgs e)
    {
        string dob = DropDownList1.SelectedValue + DropDownList2.SelectedValue + DropDownList3.SelectedValue;
        Random random = new Random();
        List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
        float aNum = 0f;
        int randomaccountnumber = Convert.ToInt32((random.Next(100000, 1000000).ToString("D6")));
        string validatessn = ssn.Text;
        int flag = 0;
        if (Application["AllUsersList"] != null)
        {

            if (allUsersList != null)
            {
                for (int i = 0; i < allUsersList.Count; i++)
                {
                    if (allUsersList[i].SocialSecurityNumber == validatessn)
                    {
                        string message = "User already exists. Please go to login page.";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                        flag = 1;
                    }
                }


                if (CheckBoxRegistration.Checked == true && flag != 1)
                {

                    StudentInfor aStudentInfor = new StudentInfor(password.Text, CheckBoxRegistration.Checked, ssn.Text, fullName.Text, dob, address.Text, email.Text, DropDownList4.SelectedValue, securityAnswer.Text, randomaccountnumber, "", aNum, aNum, aNum, aNum, aNum, "", userName.Text);
                    aStudentInfor.AccountNumber = randomaccountnumber;
                    aStudentInfor.Address = address.Text;
                    aStudentInfor.AmountSatisfiedByExtraPayment = 0f;
                    aStudentInfor.CertifiedChecked = CheckBoxRegistration.Checked;
                    aStudentInfor.CurrentAmountDue = 0f;
                    aStudentInfor.CurrentBalance = 0f;
                    aStudentInfor.CurrentStatementDueDate = "NA";
                    aStudentInfor.DateOfBirth = dob;
                    aStudentInfor.EmailAddress = email.Text;
                    aStudentInfor.FullName = fullName.Text;
                    aStudentInfor.LastUpdatedDate = "NA";
                    aStudentInfor.PassWord = password.Text;
                    aStudentInfor.PastDueAmount = 0f;
                    aStudentInfor.RegularMonthlyPaymentAmount = 0f;
                    aStudentInfor.SecurityQuestion = DropDownList4.SelectedValue;
                    aStudentInfor.SecurityQuestionAnswer = securityAnswer.Text;
                    aStudentInfor.SocialSecurityNumber = ssn.Text;
                    aStudentInfor.UserName = userName.Text;
                    allUsersList.Add(aStudentInfor);
                    Application["AllUsersList"] = allUsersList;




                    // Add user to database
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ToString());
                    float bNum = 0f; // Needed becauase of the non null attribute on account details


                    conn.Open();
                    String stmt = "INSERT INTO modic_WADfl16_UserTable VALUES(@username, @password, @certchecked, @ssn, @fullname, @dob, @address, @email, @secq, @secans, @randaccno, @lastupdatedate, @curbal, @regmonamo, @amtextrapay, @pastdueamt, @curdueamt, @curstmtduedt);";
                    SqlCommand cmd = new SqlCommand(stmt, conn);

                    cmd.Parameters.Add("@username", SqlDbType.NVarChar, 20);
                    cmd.Parameters.Add("@password", SqlDbType.NVarChar, 15);
                    cmd.Parameters.Add("@certchecked", SqlDbType.NVarChar, 10);
                    cmd.Parameters.Add("@ssn", SqlDbType.NVarChar, 15);
                    cmd.Parameters.Add("@fullname", SqlDbType.NVarChar, -1);
                    cmd.Parameters.Add("@dob", SqlDbType.NVarChar, 30);
                    cmd.Parameters.Add("@address", SqlDbType.NVarChar, -1);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar, 100);
                    cmd.Parameters.Add("@secq", SqlDbType.NVarChar, -1);
                    cmd.Parameters.Add("@secans", SqlDbType.NVarChar, -1);
                    cmd.Parameters.Add("@randaccno", SqlDbType.Int);
                    cmd.Parameters.Add("@lastupdatedate", SqlDbType.NVarChar, 50);
                    cmd.Parameters.Add("@curbal", SqlDbType.Float);
                    cmd.Parameters.Add("@regmonamo", SqlDbType.Float);
                    cmd.Parameters.Add("@amtextrapay", SqlDbType.Float);
                    cmd.Parameters.Add("@pastdueamt", SqlDbType.Float);
                    cmd.Parameters.Add("@curdueamt", SqlDbType.Float);
                    cmd.Parameters.Add("@curstmtduedt", SqlDbType.NVarChar, 50);

                    cmd.Parameters["@username"].Value = userName.Text;
                    cmd.Parameters["@password"].Value = password.Text;
                    cmd.Parameters["@certchecked"].Value = "yes";
                    cmd.Parameters["@ssn"].Value = ssn.Text;
                    cmd.Parameters["@fullname"].Value = fullName.Text;
                    cmd.Parameters["@dob"].Value = dob;
                    cmd.Parameters["@address"].Value = address.Text;
                    cmd.Parameters["@email"].Value = email.Text;
                    cmd.Parameters["@secq"].Value = DropDownList4.SelectedValue;
                    cmd.Parameters["@secans"].Value = securityAnswer.Text;
                    cmd.Parameters["@randaccno"].Value = randomaccountnumber;
                    cmd.Parameters["@lastupdatedate"].Value = "01/01/1990";
                    cmd.Parameters["@curbal"].Value = bNum;
                    cmd.Parameters["@regmonamo"].Value = bNum;
                    cmd.Parameters["@amtextrapay"].Value = bNum;
                    cmd.Parameters["@pastdueamt"].Value = bNum;
                    cmd.Parameters["@curdueamt"].Value = bNum;
                    cmd.Parameters["@curstmtduedt"].Value = "01/01/1990";

                    cmd.ExecuteNonQuery();

                    conn.Close();








                    // Email Text
                    String msgTo = Convert.ToString(email.Text);
                    String msgSubject = "New Registration Notification";
                    String msgBody = "Dear " + fullName.Text + ",<br />Thank you for registering with us.<br /><br />" +
                        "You can now access your loan account at <a href=\"http://dcm.uhcl.edu/c432016fa02modic/login.aspx\">Login</a><br /><br />" + 
                        "In the meantime, please share the word about Vergil's EduLoans with your friends and neighbors! Vergil's EduLoans is open to all " + 
                        "eligible college applicants throughout the United States.<br /><br />" +
                        "Thank you again for your registration. If you have any questions, please contact us at " +
                        "<a href=\"http://dcm.uhcl.edu/c432016fa02modic/ContactUs.aspx\">Contact</a><br /><br />" +
                        " With Best Wishes,<br /><br />Vergil's EduLoans Service Team.";

                    // Mail Object Creation
                    MailMessage mailObj = new MailMessage();
                    mailObj.Body = msgBody;
                    mailObj.From = new MailAddress("vergilseduloans@gmail.com");
                    mailObj.To.Add(new MailAddress(msgTo));
                    mailObj.Subject = msgSubject;
                    mailObj.IsBodyHtml = true;

                    // SMTP Handling and sending
                    SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
                    SMTPClient.Host = "smtp.gmail.com";
                    SMTPClient.Port = 587;
                    System.Net.NetworkCredential cred = new System.Net.NetworkCredential();
                    cred.UserName = "vergilseduloans";
                    cred.Password = "abcdefgh1234";
                    SMTPClient.Credentials = cred;
                    SMTPClient.EnableSsl = true;

                    SMTPClient.Send(mailObj);

                    Response.Write("<script>alert('Thank you for submitting for registration. You can now login by clicking the \"Login\" link at the top right hand side of this page. An email notification has also been sent to the email address you provided during registration. ')</script>");
                }

                else if (CheckBoxRegistration.Checked == false)
                {
                    Response.Write("<script>alert('Please Accept the Ceritification Statement by Checking the box at the Top Left Hand Side')</script>");
                }

            }
        }
    }
    protected void log(object sender, EventArgs e)
    {
        if (LoginButton.Text.Equals("Logout"))
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void HomeButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx"); ;
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx"); ;
    }
}