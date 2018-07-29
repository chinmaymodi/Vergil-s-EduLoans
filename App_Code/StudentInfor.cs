using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StudentInfor
/// </summary>
public class StudentInfor
{

    String userName;
    String password;
    bool certifiedchecked;
    String socialSecurityNumber;
    String fullName;
    String dateOfBirth;
    String address;
    String emailAddress;
    String securityQuestion;
    String securityQuestionAnswer;
    int accountNumber;
    String lastUpdatedDate;
    float currentBalance;
    float regularMonthlyPaymentAmount;
    float amountSatisfiedByExtraPayment;
    float pastDueAmount;
    float currentAmountDue;
    String currentStatementDueDate;

    public StudentInfor(String password, bool certifiedchecked, String socialSecurityNumber, String fullName, String dateOfBirth,
        String address, String emailAddress, String securityQuestion, String securityQuestionAnswer, int accountNumber, String lastUpdatedDate,
        float currentBalance, float regularMonthlyPaymentAmount, float amountSatisfiedByExtraPayment, float pastDueAmount, float currentAmountDue,
        String currentStatementDueDate, String userName)
    {
        this.userName = userName;
        this.password = password;
        this.certifiedchecked = certifiedchecked;
        this.socialSecurityNumber = socialSecurityNumber;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.emailAddress = emailAddress;
        this.securityQuestion = securityQuestion;
        this.securityQuestionAnswer = securityQuestionAnswer;
        this.accountNumber = accountNumber;
        this.lastUpdatedDate = lastUpdatedDate;
        this.currentBalance = currentBalance;
        this.regularMonthlyPaymentAmount = regularMonthlyPaymentAmount;
        this.amountSatisfiedByExtraPayment = amountSatisfiedByExtraPayment;
        this.pastDueAmount = pastDueAmount;
        this.currentAmountDue = currentAmountDue;
        this.currentStatementDueDate = currentStatementDueDate;

    }

    public String UserName
    {
        get { return userName; }
        set { userName = value; }

    }

    public String PassWord
    {
        get { return password; }
        set { password = value; }
    }

    public bool CertifiedChecked
    {
        get { return certifiedchecked; }
        set { certifiedchecked = value; }
    }

    public String SocialSecurityNumber
    {
        get { return socialSecurityNumber; }
        set { socialSecurityNumber = value; }
    }

    public String FullName
    {
        get { return fullName; }
        set { fullName = value; }
    }

    public String DateOfBirth
    {
        get { return dateOfBirth; }
        set { dateOfBirth = value; }
    }

    public String Address
    {
        get { return address; }
        set { address = value; }
    }


    public String EmailAddress
    {
        get { return emailAddress; }
        set { emailAddress = value; }
    }

    public String SecurityQuestion
    {
        get { return securityQuestion; }
        set { securityQuestion = value; }
    }

    public String SecurityQuestionAnswer
    {
        get { return securityQuestionAnswer; }
        set { securityQuestionAnswer = value; }
    }

    public int AccountNumber
    {
        get { return accountNumber; }
        set { accountNumber = value; }
    }

    public String LastUpdatedDate
    {
        get { return lastUpdatedDate; }
        set { lastUpdatedDate = value; }
    }

    public float CurrentBalance
    {
        get { return currentBalance; }
        set { currentBalance = value; }
    }

    public float RegularMonthlyPaymentAmount
    {
        get { return regularMonthlyPaymentAmount; }
        set { regularMonthlyPaymentAmount = value; }
    }

    public float AmountSatisfiedByExtraPayment
    {
        get { return amountSatisfiedByExtraPayment; }
        set { amountSatisfiedByExtraPayment = value; }
    }

    public float PastDueAmount
    {
        get { return pastDueAmount; }
        set { pastDueAmount = value; }
    }

    public float CurrentAmountDue
    {
        get { return currentAmountDue; }
        set { currentAmountDue = value; }
    }

    public String CurrentStatementDueDate
    {
        get { return currentStatementDueDate; }
        set { currentStatementDueDate = value; }
    }
}
