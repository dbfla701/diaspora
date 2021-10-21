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
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <div class="all_wrap">
        <div class="sub_top">
            <p class="sub_logo"><img src="images/images/sub_logo.png" alt="디아스포라 아이덴티티 디자인" /></p>
            <p class="sub_top_tit">임시저장 목록</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">관리자 페이지</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">임시저장 목록</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>임시저장 목록</h4>

                <table class="table-striped col_table" id="tableId">
                    <thead class="col_head">
                        <tr>
                            <th class="m-table-none">번호</th>
                            <th>제목</th>
                            <th class="m-table-none">날짜</th>
                            <th>상태</th>
                        </tr>
                    </thead>
                    <tbody class="col_body">
                        <c:forEach items="${dto}" var="dto">
                            <tr id="list">
                                <td class="m-table-none">
                                    <c:out value="${dto.seq}" />
                                </td>
                                <td class="txt-overflow"><a href="${pageContext.request.contextPath}/admin/imsiDetail.do?seq=${dto.seq}">
								${dto.news_title}</a></td>
                                <td class="m-table-none">
                                    <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd HH:mm" />
                                </td>
                                <td>${dto.imsi}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>