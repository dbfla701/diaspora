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

<body style="background-color:#00ad6b">    
    <div class="admin_page">
        <div class="center_wrap">
            <p class="admin_logo"></p>

            <form name="loginForm" role="form" method="post" action="${pageContext.request.contextPath}/logining.do" class="admin_wrap">
                <p class="sub_page_tit text-center">관리자 로그인</p>

                <table class="admin text-center">
                    <tbody>
                        <tr>
                            <td class="admin_tit"><label for="adminid">아이디</label></td>
                            <td class="admin_txt">
                                <input type="text" id="adminid" name="adminid" class="text_form" />
                            </td>
                        </tr>
                        <tr>
                            <td class="admin_tit"><label for="pw">비밀번호</label></td>
                            <td class="admin_txt">
                                <input type="password" id="pw" name="pw" class="text_form" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p class="text-center"><input type="submit" value="로그인" class="login_btn" /></p>
            </form>
        </div>
    </div>
</body>

</html>