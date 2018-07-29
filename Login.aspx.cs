using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentuser"] != null)
        {
            Response.Redirect("myaccount.aspx");
        }
    }
    protected void SubmitButtonClick(object sender, EventArgs e)
    {
        int userexist = 0;
        string validateemail = EmailAddress.Text;
        string validatepassword = Password.Text;
        if (Application["AllUsersList"] != null)
        {
            List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
            if (allUsersList != null)
            {
                for (int i = 0; i < allUsersList.Count; i++)
                {
                    String myemail = Convert.ToString(allUsersList[i].EmailAddress);
                    if (myemail == validateemail && allUsersList[i].PassWord == validatepassword)
                    {
                        userexist = 1;
                        Session["currentuser"] = allUsersList[i];
                        StudentInfor S1 = Session["currentuser"] as StudentInfor;
                        string message = "You have successfully logged in. Welcome!";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(S1.FullName);
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                        Response.Redirect("myaccount.aspx");
                    }
                }
            }
        }


        if (userexist != 1)
        {
            string message = "The user you have entered is not in our database, please try again or click on the Register Link to create an account";
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

    protected void Register(object sender, EventArgs e)
    {
        Server.Transfer("Register.aspx");
    }

    protected void Default(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }

    protected void Unnamed1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void HomeButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("Login.aspx");
    }

    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("Register.aspx");
    }
}