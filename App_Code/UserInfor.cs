using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class UserInfor
{

 String emailAddress;
 String password; 
 String firstName; 
 String lastName;
 String securityQuestion;
 String securityQuestionAnswer;
 String stateOrProvince;
 String schoolDistrictName;
 List<StudentInfor> myStudents = new List<StudentInfor>();

 public String EmailAddress
        {
            get { return emailAddress; }
            set { emailAddress = value; }
        } 
public String Password
{
	get {return password;}
	set {password=value;}
}
public String FirstName
{
	get {return firstName;}
	set {firstName=value;}
}
public String LastName
{
	get {return lastName;}
	set {lastName=value;}
}
public String SecurityQuestion
{
	get {return securityQuestion;}
	set {securityQuestion=value;}
}
public String SecurityQuestionAnswer
{
	get {return securityQuestionAnswer;}
	set {securityQuestionAnswer=value;}
}
public String StateOrProvince
{
	get {return stateOrProvince;}
	set {stateOrProvince=value;}
}
public String SchoolDistrictName
{
	get {return schoolDistrictName;}
	set {schoolDistrictName=value;}
}
public List<StudentInfor> MyStudents
{
	get { return myStudents; }
	set {myStudents=value;}
}

}