using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitButtonClick(object sender, EventArgs e)
    {

        
        // Message Formation
        String msgTo = EmailAddress.Text;
        StudentInfor S1 = null;


        if (Application["AllUsersList"] != null)
        {
            List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
            if (allUsersList != null)
            {

                for (int i = 0; i < allUsersList.Count; i++)
                {
                    if (allUsersList[i].EmailAddress == msgTo)
                    {
                        // Session["currentuser"] = allUsersList[i];
                        // S1 = Session["currentuser"] as StudentInfor;
                        S1 = allUsersList[i] as StudentInfor;
                    }
                }
            }
        }
        if (S1 != null)
        {
            String msgSubject = "We have recovered your password!";
        String msgBody = "Dear Valued Student,<br />You are receiving this email because you requested to recover your password.<br /><br />" +
            "Your current password is: " + S1.PassWord + "<br /><br />Thank you.<br />Vergil's EduLoans Service Team.";

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
            alertMessage += "alert('" + "Thank you. An email has been sent to the address you provided." + "');";
            alertMessage += "</script>";
            ClientScript.RegisterClientScriptBlock(GetType(), "alertMessage ", alertMessage);
        }
        else
        {
            string alertMessage = "<script language=\"javascript\" type=\"text/javascript\">";
            alertMessage += "alert('" + "Sorry, that email does not exist in our database. Please recheck the email address you entered." + "');";
            alertMessage += "</script>";
            ClientScript.RegisterClientScriptBlock(GetType(), "alertMessage ", alertMessage); 
        }
    }

    protected void Register(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void Default(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void Unnamed1_TextChanged(object sender, EventArgs e)
    {

    }
}