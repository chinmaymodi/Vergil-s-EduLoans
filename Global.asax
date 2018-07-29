<%@ Application Language="C#" %>
<%@ Import Namespace="System"%>
<%@ Import Namespace="System.Data"%>
<%@ Import Namespace="System.Data.SqlClient"%>


<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["AllUsersList"] = new List<StudentInfor>();
        List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ToString());

        float aNum = 0f;

        conn.Open();
        
        SqlCommand cmd = new SqlCommand("SELECT * FROM modic_WADfl16_Usertable", conn);
        SqlDataReader sdr = cmd.ExecuteReader();

        while(sdr.Read())
        {
            String pass = sdr["password"].ToString();
            String ssn = sdr["socialSecurityNumber"].ToString();
            String name = sdr["fullName"].ToString();
            String dob = sdr["dateOfBirth"].ToString();
            String address = sdr["address"].ToString();
            String email = sdr["emailAddress"].ToString();
            String securityQuestion = sdr["securityQuestion"].ToString();
            String securityAnswer = sdr["securityQuestionAnswer"].ToString();
            int acnum = Convert.ToInt32(sdr["accountNumber"].ToString());
            String userName = sdr["userName"].ToString();



            StudentInfor aStudentInfor = new StudentInfor(pass, true, ssn, name, dob, address, email, securityQuestion, securityAnswer, acnum, "", aNum, aNum, aNum, aNum, aNum, "", userName);
            aStudentInfor.AmountSatisfiedByExtraPayment = (float)Convert.ToDouble(sdr["amountSatisfiedByExtraPayment"]);
            aStudentInfor.CurrentAmountDue = (float)Convert.ToDouble(sdr["currentAmountDue"]);
            aStudentInfor.CurrentBalance = (float)Convert.ToDouble(sdr["currentBalance"]);
            aStudentInfor.CurrentStatementDueDate = sdr["currentStatementDueDate"].ToString();
            aStudentInfor.LastUpdatedDate = sdr["lastUpdatedDate"].ToString();
            aStudentInfor.PastDueAmount = (float)Convert.ToDouble(sdr["pastDueAmount"]);
            aStudentInfor.RegularMonthlyPaymentAmount = (float)Convert.ToDouble(sdr["regularMonthlyPaymentAmount"]);

            allUsersList.Add(aStudentInfor);
        }
        Application["AllUsersList"] = allUsersList;
        conn.Close();


    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
