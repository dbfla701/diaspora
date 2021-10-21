<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>
<body>
	<form name="joinUser" role="form" method="post" action="${pageContext.request.contextPath}/join.do">
	<table>
				<tbody>
					<tr>
						<td><label for="name">이름</label> <input type="text"
							id="name" name="name" /></td>
					</tr>
					<tr>
						<td><label for="adminid">아이디</label> <input type="text"
							id="adminid" name="adminid" /></td>
					</tr>
					<tr>
						<td><label for="pw">비밀번호</label> <input type="text"
							id="pw" name="pw" /></td>
					</tr>
					<tr>
						<td><label for="email">이메일</label> <input type="text"
							id="email" name="email" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="회원가입" /></td>
					</tr>


				</tbody>
			</table>
	</form>
</body>
</html>