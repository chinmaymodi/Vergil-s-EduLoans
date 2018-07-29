using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentuser"] != null)
        {
            StudentInfor stu = Session["currentuser"] as StudentInfor;
            LoginButton.Text = "Logout";
            TextBox1.Enabled = true;
            ContactUsSubmit.Enabled = true;
            logInMessage1.Text = "";
            logInMessage2.Text = "Please type your message below and click the Send Message button.";
        }
    }
    protected void SubmitButtonClick(object sender, EventArgs e)
    {

        StudentInfor S1 = Session["currentuser"] as StudentInfor;
        // Message Formation
        String msgTo = Convert.ToString(S1.EmailAddress);
        String msgSubject = "We have received your message!";
        String msgBody = "Dear Valued Student,<br />You are receiving this email because you contacted us with a question and/or a concern.<br /><br />" + 
            "Our support staff will respond within the next 48 hours.<br /><br />Thank you.<br />Vergil's EduLoans Service Team.";

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


    string alertMessage = "<script language=\"javascript\" type=\"text/javascript\">";
        alertMessage += "alert('" + "Thank you. An email notification has also been sent to the address we have in our file." + "');";
        alertMessage += "</script>";
        ClientScript.RegisterClientScriptBlock(GetType(), "alertMessage ", alertMessage);
    }

    protected void log(object sender, EventArgs e)
    {
        if (LoginButton.Text.Equals("Logout"))
        {
            Session.Abandon();
            string alertMessage = "<script language=\"javascript\" type=\"text/javascript\">";
            alertMessage += "alert('" + "You are now logged out.." + "');";
            alertMessage += "window.location.href=\"";
            alertMessage += "Login.aspx";
            alertMessage += "\";";
            alertMessage += "</script>";
            ClientScript.RegisterClientScriptBlock(GetType(), "alertMessage ", alertMessage);
        }
        else
        {
            Response.Redirect("login.aspx");

        }
    }
    protected void goHome(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}