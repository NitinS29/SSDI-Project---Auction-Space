<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<spring:url value="/resources/Home.css" var="HomeCss"/> 
<link href= "${HomeCss}" rel="stylesheet" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buyer Registration</title>
</head>
<body id="Register">
<h3 id ="header" align="center">BUYER REGISTRATION</h3>
<br>
            <form:form commandName="user" action="registerProcessBuyer" method="post" name="myForm" onsubmit="return validate();">
                <table align="center">
                    <tr>
                        <td>
                            <form:label path="username" >Username</form:label>
                        </td>
                        <td>
                            <form:input path="username" name="username" id="username" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="password" >Password</form:label>
                        </td>
                        <td>
                            <form:password path="password" name="password" id="password" />
                        </td>
                    </tr>
                    <tr><td><form:hidden path="userType" value="Buyer"/></td></tr>
                    <tr>                   
                    <tr>
                        <td>
                            <form:label path="fname">First Name</form:label>
                        </td>
                        <td>
                            <form:input path="fname" name="firstname" id="firstname" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="mname">Middle Name</form:label>
                        </td>
                        <td>
                            <form:input path="mname" name="middlename" id="middlename" />
                        </td>
                    </tr>
                    <tr>
                    <tr>
                        <td>
                            <form:label path="lname">Last Name</form:label>
                        </td>
                        <td>
                            <form:input path="lname" name="lastname" id="lastname" />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <form:label path="email">Email</form:label>
                        </td>
                        <td>
                            <form:input path="email" name="email" id="email" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="address">Address</form:label>
                        </td>
                        <td>
                            <form:input path="address" name="address" id="address" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="phone">Phone</form:label>
                        </td>
                        <td>
                            <form:input path="phone" name="phone" id="phone" />
                        </td>
                    </tr>
                    <tr></tr>
                    </table>
                    <br><br>
                    <table align="center">
                    <tr>
                        <td></td>
                        <td>
                            <form:button id="register" name="register" class="myButton">Register</form:button>
                        </td>
                    </tr>
                    <tr><td>  </td></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                    
                </table>
            </form:form>
            <script>
            function validate() {
    var x = document.myForm.firstname.value;
    if (x == "") {
        alert("First Name must be filled out");
        return false;
    }
    var x1 = document.myForm.username.value;
    if (x1 == "") {
        alert("UserName must be filled out");
        return false;
     }
    var x2 = document.myForm.password.value;
    if (x2 == "") {
        alert("Password must be filled out");
        return false;
    }
    var x3 = document.myForm.email.value;
    if (x3 == "") {
        alert("Email ID must be filled out");
        return false;
    }
    var x4 = document.myForm.phone.value;
    if (x4 == "") {
        alert("Phone must be filled out");
        return false;
    }
    if (x4.length != 10){
    	alert("Phone number should have 10 digits.");
    	return false;
    }
  
    atpos = x3.indexOf("@");
    dotpos = x3.lastIndexOf(".");
    if (atpos < 1 || ( dotpos - atpos < 2 )) 
    {
       alert("Please enter correct email ID")
       //document.myForm.EMail.focus() ;
       return false;
    }
    return (true);
}
</script>
</body>
</html>
