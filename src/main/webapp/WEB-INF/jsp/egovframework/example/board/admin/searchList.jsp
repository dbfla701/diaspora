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
<h1>참가신청 목록 폼</h1>

<table class="table table-striped">
			
			<thead><tr>
				<th>번호</th>
				<th>추천자</th>				
				<th>이메일</th>				
				<th>날짜</th>				
			</tr>
			</thead>
			<tbody>
				<c:forEach items="${dto}" var="dto">
					<tr>
						<td><c:out value="${dto.seq}" /></td>
								<td><c:out value="${dto.id}" /></td>
								<td><c:out value="${dto.email}" /></td>
								<td><fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd HH:mm"/></td>	
					</tr>
				</c:forEach>
			</tbody>
		</table>
		 <br>
    <div id="searchDiv">
        <form name="searchForm" method="get" action="${pageContext.request.contextPath}/admin/searchList.do">
            <input type="text" name='id' placeholder="id를 검색하세요" />
            <input type="submit" value="검색"/>
        </form>    
    </div>

</body>
</html>