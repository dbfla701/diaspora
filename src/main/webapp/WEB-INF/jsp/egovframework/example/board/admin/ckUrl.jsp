<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
<title>Insert title here</title>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<body>
<form name="ckurl" method="post" action="${pageContext.request.contextPath}/admin/ckurl.do"
	enctype="multipart/form-data">

<textarea class="form-control" id="v_url" name="v_url"></textarea>

<input type="submit" value="등록" />
</form>

<script type="text/javascript">

 CKEDITOR.replace('v_url', {height: 200});
 
</script>

</body>
</html>