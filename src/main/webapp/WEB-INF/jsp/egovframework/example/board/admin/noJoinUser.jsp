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
<body>

	<form name="joinForm" role="form" method="post"
		action="${pageContext.request.contextPath}/main.do">
		<table>
			<tbody>
				<tr>
					<td><label for="name">이름</label>
					<input type="text" id="name" name="name" /></td>
				</tr>
				
				<tr>
					<td><label for="email">이메일</label>
					<input type="email" id="email" name="email" /> <!-- @
					<select name="email2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select> --></td>
				</tr>
				<tr>
					<td><input type="button" value="전송" onclick="checkfield()" />
					</td>
				</tr>
			</tbody>
		</table>
	</form>

	<script type="text/javascript">
		function checkfield() {

			if (document.joinForm.name.value == "") { //id값이 없을 경우
				alert("이름을 입력하세요"); //메세지 경고창을 띄운 후
				document.joinForm.name.focus(); // id 텍스트박스에 커서를 위치
				exit;

			} else if (document.joinForm.email.value == "") {
				alert("이메일을 입력하세요");
				document.joinForm.email.focus();
				exit;
			}
			
			document.joinForm.submit();
		}
	</script>


</body>
</html>