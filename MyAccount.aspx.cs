using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (Session["currentuser"] != null)
            {
                StudentInfor S1 = Session["currentuser"] as StudentInfor;
                acnum.Text = "" + Convert.ToString(S1.AccountNumber);
                updatedate.Text = "" + Convert.ToString(S1.LastUpdatedDate);
                acname.Text = "" + Convert.ToString(S1.FullName);
                cell1.Text = "" + Convert.ToString(S1.CurrentBalance);
                cell2.Text = S1.LastUpdatedDate;
                cell3.Text = "" + Convert.ToString(S1.RegularMonthlyPaymentAmount);
                cell4.Text = "" + Convert.ToString(S1.AmountSatisfiedByExtraPayment);
                cell5.Text = "" + Convert.ToString(S1.PastDueAmount);
                cell6.Text = "" + Convert.ToString(S1.CurrentAmountDue);
                dueDate.Text = "" + Convert.ToString(S1.CurrentStatementDueDate);
            }
            else
            {
                //Table1.Visible = false;
                updatedate.Visible = false;
                acname.Visible = false;
                acnum.Visible = false;
                dueDate.Visible = false;
                string message = "'Please login to see the Account details.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                Response.Redirect("Login.aspx");
            }
        }
    }
    protected void log(object sender, EventArgs e)
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
}