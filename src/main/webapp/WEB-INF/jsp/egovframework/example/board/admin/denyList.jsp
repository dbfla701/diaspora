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
            <p class="sub_top_tit">반려목록</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">관리자페이지</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">반려목록</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>반려목록</h4>

                <div class="text-right">
                    <select name="permitOption" onchange="location.href=this.value" class="all_select">
                        <option value="/admin/allList.do?num=1">전체목록</option>
                        <option value="/admin/applyList.do">검토중</option>
                        <option value="/admin/permitList.do">후보목록</option>
                        <option value="/admin/denyList.do" selected>반려목록</option>
                        <option value="/admin/candiList.do">최종후보작</option>
                    </select>
                </div>

                <table class="table table-striped col_table">
                    <thead class="col_head">
                        <tr>
                            <th class="m-table-none">번호</th>
                            <th>추천자</th>
                            <th>이메일</th>
                            <th class="m-table-none">날짜</th>
                            <th>상태</th>
                        </tr>
                    </thead>
                    <tbody class="col_body">
                        <c:forEach items="${dto}" var="dto">
                            <tr id="list">
                                <td class="m-table-none"><a href="${pageContext.request.contextPath}/admin/boardDetail.do?seq=${dto.seq}">
                                        <c:out value="${dto.seq}" />
                                    </a></td>
                                <td>
                                    <c:out value="${dto.id}" />
                                </td>
                                <td id="email" class="txt-overflow">
                                    <c:out value="${dto.email}" />
                                </td>
                                <td class="m-table-none">
                                    <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd HH:mm" />
                                </td>
                                <td>반려</td>
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