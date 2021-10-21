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
            <p class="sub_top_tit">새소식</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="now_location">새소식</li>
                </ul>
            </div>

            <div class="section" style="padding-top: 3rem;">

                <ul class="img_board news_board">

				<c:forEach items="${dto}" var="dto">
                    <li id="list">
                        <div>
                            <p class="board_conts_img">
                                <img src="C:\\fileupload\\${dto.filename}" alt="" />
                                <input type="hidden" id="seq" value="${dto.seq}">
                            </p>
                            <p class="board_txt txt-overflow">
                                <a href="${pageContext.request.contextPath}/newsDetail.do?seq=${dto.seq}">${dto.news_title}</a>
                            </p>
                            <p class="board_txt txt-overflow text-right" style="color:#aaaaaa">
                                <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd HH:mm" />
                            </p>
                        </div>
                    </li>
		</c:forEach>

                </ul>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

</body>

</html>