using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class StudentInfor{
	
 String emailAddress;        //This email is the same as
 String studentId;           //parents (UserInfor) email. 
 String studentFirstName; 
 String studentLastName;
 String schoolName; 
 
public String EmailAddress {
	get {return emailAddress;}
	set{emailAddress=value;}
}
 public String StudentId {
    get { return studentId; } 
    set { studentId = value; }
        }

public String StudentFirstName {
	get {return studentFirstName;}
	set{studentFirstName=value;}
} 

public String StudentLastName {
	get {return studentLastName;}
	set{studentLastName=value;}
} 
public String SchoolName {
	get {return schoolName;}
	set{schoolName=value;}
}
}