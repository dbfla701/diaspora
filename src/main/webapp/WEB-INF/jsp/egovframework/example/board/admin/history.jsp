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

    <section class="all_wrap">
        <div class="sub_top">
            <p class="sub_logo"><img src="images/images/sub_logo.png" alt="디아스포라 아이덴티티 디자인" /></p>
            <p class="sub_top_tit">로그인 기록</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">관리자 페이지</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">로그인 기록</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>로그인 기록</h4>

                <table class="table-striped table col_table" id="tableId">
                    <thead class="col_head">
                        <tr>
                            <th>IP</th>
                            <th>시간</th>
                        </tr>
                    </thead>
                    <tbody class="col_body">
                        <c:forEach items="${dto}" var="dto">
                            <tr id="list">
                                <td class="txt-overflow">${dto.ip}</td>
                                <td class="txt-overflow">
                                    <fmt:formatDate value="${dto.iptime}" pattern="yyyy-MM-dd HH:mm" />
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                
                <!-- 페이징 시작 -->
                <div class="text-center m-up-down">
                    <c:if test="${prev}">
                        <span class="table_arrow"><a href="${pageContext.request.contextPath}/admin/history.do?num=${startPageNum - 1}"><span class="table_prev"></span>이전</a>
                        </span>
                    </c:if>

                    <c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
                        <span class="table_num table_paging">
                            <c:if test="${select != num}">
                                <a href="${pageContext.request.contextPath}/admin/history.do?num=${num}">${num}</a>
                            </c:if>
                            <c:if test="${select == num}">
                                <b>${num}</b>
                            </c:if>
                        </span>
                    </c:forEach>

                    <c:if test="${next}">
                        <span class="table_arrow"><a href="${pageContext.request.contextPath}/admin/history.do?num=${endPageNum + 1}">다음<span class="table_next"></span></a>
                        </span>
                    </c:if>
                </div>

            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>
        </div>

    </section>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>