<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empInputForm</title>
<style>
	body{font-size:11pt; color:teal;}
	div{margin:0 auto}
</style>
</head>
<body>
	<div>
		<h2>사원정보 입력</h2>
		<form:form method="post" action="empInsert" modelAttribute="emp">
			<table>
				<tr>
					<td>EMPNO :</td>
					<td><form:input path="empno"/></td>
				</tr>
				<tr>
					<td>ENAME :</td>
					<td><form:input path="ename"/></td>
				</tr>
				<tr>
					<td>DEPTNO :</td>
					<td><form:input path="deptno"/></td>
				</tr>
				<tr>
					<td>JOB :</td>
					<td><form:input path="job"/></td>
				</tr>
				<tr>
					<td>SAL :</td>
					<td><form:input path="sal"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save" /></td>
				</tr>
				<tr>
					<td colspan="2"><a href="empList">사원정보 리스트</a></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>