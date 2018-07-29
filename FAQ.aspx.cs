using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FAQ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentuser"] != null)
        {
            StudentInfor stu = Session["currentuser"] as StudentInfor;
            LoginButton.Text = "Logout";
        }
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
            Response.Redirect("Login.aspx");
        }
    }
}