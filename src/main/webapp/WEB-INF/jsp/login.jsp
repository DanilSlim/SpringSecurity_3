<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored ="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Spitter</title>
</head>
<body>
<div>
	<h2>SignintoSpitter</h2>
		<p>
			If you've been using Spitter from your phone,then that'samazing...wedon't support IMyet.
		</p>
<spring:url var="authUrl" value="/static/j_spring_security_check"/>

<form method="post" class="signin" action="${authUrl}">
  <fieldset>
	<table cellspacing="0">
	<tr>
	<th> <label for="username_or_email">UsernameorEmail</label></th>
	<td><input id="username_or_email" name="j_username" type="text" />
	</td>
	</tr>
	<tr>
    <th><label for="password">Password</label></th>
	<td><input id="password" name="j_password" type="password" />
	<small><a href="/account/resend_password">Forgot?</a></small>
	</td>
	</tr>
	<tr>
	<th></th>
	<td><input id="remember_me" name="_spring_security_remember_me" type="checkbox"/>
	<label for="remember_me" class="inline">Remember me</label></td>
	</tr>
	<tr>
	<th></th>
	<td><input name="commit" type="submit" value="SignIn"/></td>
	</tr>
	</table>
 </fieldset>
</form>
<script type="text/javascript"> 
    document.getElementById('username_or_email').focus();
</script>
</div>
</body>
</html>