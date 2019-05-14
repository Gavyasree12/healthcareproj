<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="user" class="test.Test1">
<jsp:setProperty property="*" name="user"/>
</jsp:useBean>
</head>
<body>
<%
Scanner sc=new Scanner(System.in);
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String phone=request.getParameter("phone");

Random random=new Random();
int rand=random.nextInt(999);
String password=fname.substring(0,2)+lname.substring(lname.length()-2,lname.length())+phone.substring(0,1)+phone.substring(2,3)+phone.substring(4,5)+phone.substring(6,7)+phone.substring(8,9);
String appid="App"+rand;
String userid=fname.substring(0,3)+rand;
System.out.println(appid+" "+userid+" "+password);
%><script>alert("appid: "+appid);</script><%
if(user.insert(appid, userid, password))
{
%><script></script><%	
}

else
{
	%><script>alert("hello")</script><%	
}
%>

</body>
</html>