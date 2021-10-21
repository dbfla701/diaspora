<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색창</title>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<body>
<h1>검색창</h1>

<div id="searchDiv">
        <form name="searchForm" method="get" action="${pageContext.request.contextPath}/admin/searchList.do">
            <input type="text" name='id' placeholder="id를 검색하세요" />
            <input type="submit" value="검색"/>
        </form>    
    </div>

</body>
<script type="text/javascript">
	alert('글이 등록되었습니다');
</script>
</html>