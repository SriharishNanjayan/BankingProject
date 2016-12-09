<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<title>Home - Banking</title>
<style>
.center-content{
	width: 512px;
	margin: 150px auto;
}
</style>
</head>
<body>
<form class="form-horizontal center-content" action ="validate.jsp" method = "post">
  <div class="form-group">
    <label for="auth_user" class="col-sm-4 control-label">Customer ID</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="auth_user" placeholder="CustomerID">
    </div>
  </div>
  <div class="form-group">
    <label for="auth-key" class="col-sm-4 control-label">Password</label>
    <div class="col-sm-8">
      <input type="password" class="form-control" id="auth_key" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-2">
      <div class="radio">
        <label>
          <input type="radio" name="user-type" value="corporate"> Corporate
        </label>
      </div>
    </div>
    <div class="col-sm-offset-2 col-sm-4">
      <div class="radio">
        <label>
          <input type="radio" name="user-type" value="Retail"> Retail
        </label>
      </div>
    </div>
    
  </div>
  <div class="form-group">
    <div class="col-sm-offset-6 col-sm-6">
      <button type="submit" class="btn btn-primary">Sign in</button>
    </div>
  </div>
</form>
</body>
</html>