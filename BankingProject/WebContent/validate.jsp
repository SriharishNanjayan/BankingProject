<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, com.bank.util.Database, com.bank.util.Cookies" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Validation</title>
</head>
<body>
<%
    String user = request.getParameter("auth_user");
    String key = request.getParameter("auth_key");
    String type = request.getParameter("user_type");
    Database db = new Database();
    PreparedStatement ps = db.getPS("SELECT * FROM BANK_TRANSACTION_TBL WHERE CUSTOMER_ID=? AND PASSWORD=? AND BANKING_TYPE=?");
    ps.setInt(1, Integer.parseInt(user));
    ps.setString(2, key);
    ps.setString(3, type);
    ResultSet rs = ps.executeQuery();
    if(rs.next()) {
    	out.println("Login Success");
    	Cookies.set(response,"auth_user",user);
    	Cookies.set(response,"auth_type",type);
    	out.println("<meta http-equiv='refresh' content='5,url=profile'/>");
    } else {
    	out.println("Login Failed");
    	out.println("<meta http-equiv='refresh' content='5,url=index.jsp'/>");
    }
    db.close();
%>
</body>
</html>