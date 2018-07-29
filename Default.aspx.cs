using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int dupads = 0;
    List<int> asdflist = new List<int>();
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

    // Ensures that all 5 ads served are unique
    // Called everytime an AdRotator object is made, then checks its uniqueness. If not unique, replaces it with a unique ad
    protected void AdCreated_Event(object sender, AdCreatedEventArgs e)
    {
        int temp = 0;
        String t2 = Convert.ToString(e.ImageUrl);
        int t3 = Convert.ToInt32(t2[t2.Length - 5]) - 48;
        foreach (int j in asdflist) {
            if (t3 == j) {
                dupads++;
                temp = 1;
                while(temp == 1)
                {
                    Random r = new Random();
                    int newasdf = r.Next(0, 11);
                    while(asdflist.IndexOf(newasdf) != -1 || (newasdf < 0) || (newasdf > 9))
                    {
                        newasdf = r.Next(0, 10);
                    }
                    temp = 0;
                    System.Text.StringBuilder strBuilder = new System.Text.StringBuilder(t2);
                    strBuilder[t2.Length - 5] = Convert.ToChar(newasdf + 48);
                    e.ImageUrl = strBuilder.ToString();
                    switch(newasdf)
                    {
                        case 0:
                            e.NavigateUrl = "https://www.salliemae.com/";
                            e.AlternateText = "Sallie May Bank";
                            break;
                        case 1:
                            e.NavigateUrl = "http://theevansconsultinggroup.com/";
                            e.AlternateText = "Visit Evans Consulting";
                            break;
                        case 2:
                            e.NavigateUrl = "https://www.niccp.com/";
                            e.AlternateText = "Become a College Planning Specialist";
                            break;
                        case 3:
                            e.NavigateUrl = "https://www.credible.com/";
                            e.AlternateText = "Visit Credible Refinancing and Help";
                            break;
                        case 4:
                            e.NavigateUrl = "http://moneysavingexpert.com/";
                            e.AlternateText = "Save more!";
                            break;
                        case 5:
                            e.NavigateUrl = "http://dcm.uhcl.edu/c432016fa02modic/";
                            e.AlternateText = "Visit Vergil's EduLoans";
                            break;
                        case 6:
                            e.NavigateUrl = "http://www.aslc.us/";
                            e.AlternateText = "Visit Us!";
                            break;
                        case 7:
                            e.NavigateUrl = "http://usstudentloancenter.org/";
                            e.AlternateText = "Visit Us!";
                            break;
                        case 8:
                            e.NavigateUrl = "http://myffam.com/";
                            e.AlternateText = "We can help!";
                            break;
                        case 9:
                            e.NavigateUrl = "http://premierstudentloancenter.com/";
                            e.AlternateText = "Find out how we can help you more!";
                            break;
                        default:
                            // Do Nothing
                            break;
                    }
                    t2 = Convert.ToString(e.ImageUrl);
                    t3 = Convert.ToInt32(t2[t2.Length - 5]) - 48;
                }
            }
        }
        if (temp == 0)
        {
            asdflist.Add(t3);
        }
    }
}