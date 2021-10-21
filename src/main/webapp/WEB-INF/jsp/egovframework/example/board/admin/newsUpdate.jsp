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
            <p class="sub_top_tit">새소식 임시글 수정</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">관리자 페이지</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">새소식 임시글 수정</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>새소식 임시글 수정</h4>

                <form name="newsForm" role="form" method="post" action="/admin/newsUpdate.do?seq=${dto.seq}" enctype="multipart/form-data">

                    <input type="hidden" id="regdate" name="regdate" value="${dto.regdate}" />
                    <input type="hidden" id="imsi" name="imsi" value="${dto.imsi}" />

                    <table class="show_table">
                        <tbody>
                            <tr>
                                <td class="table_tit"><label for="seq">번호</label></td>
                                <td class="table_txt">${dto.seq}</td>
                            </tr>

                            <tr>
                                <td class="table_tit"><label for="news_title">제목</label> </td>
                                <td class="table_txt"><input type="text" id="news_title" name="news_title" value="${dto.news_title}" style="width:50%"/></td>
                            </tr>

                            <tr>
                                <td class="table_tit"><label for="news_content">내용</label></td>
                                <td class="table_txt"><textarea id="news_content" name="news_content"><c:out value="${dto.news_content}" /></textarea></td>
                            </tr>
                            
                            <tr>
                                <td class="table_tit"><label for="regdate">날짜</label></td>
                                <td class="table_txt"><fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd HH:mm"/></td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="text-center m-up-down">
                        <input type="submit" value="작성" class="btn table_btn" />
                    </div>
                </form>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

</body>

</html>