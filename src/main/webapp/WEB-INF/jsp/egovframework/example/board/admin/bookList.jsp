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
            <p class="sub_top_tit">검색 결과</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">관리자 페이지</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">검색 결과</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>검색 결과</h4>

                <form name="bookForm" action="${pageContext.request.contextPath}/bookSearch.do" class="text-center book_search">
                    <input type="text" name="title"> <input type="submit" value="검색" class="table_btn btn round-20">
                </form>

                <div class="boolList_wrap">
                    <table class="table col_table bookList_table" id="example-table-1">
                        <tbody class="col_body bookList">
                            <c:forEach items="${bookList}" var="dto">
                                <tr>
                                    <!--<td class="book_img" width="10%"><img src="${dto.image}"></td>-->
                                    <td class="book_img" width="10%"><img src="../images/default_img_2.png"></td>
                                    <td class="txt-overflow" id="title">${dto.title}정보처리산업기사 실기(2021)</td>
                                    <td class="txt-overflow" id="author">${dto.author}한기준 | 김기윤 | 김정준 | 김유석 | </td>
                                    <td class="txt-overflow" id="publisher">${dto.publisher}</td>
                                    <td class="txt-overflow" id="pubdate">${dto.pubdate}</td>
                                    <td class="txt-overflow" id="isbn">${dto.isbn}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>
        </div>

    </section>

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

<script type="text/javascript">
    function inputBook() {
        event.preventDefault();
        alert("??");
        var title = $("#title").text();

        alert(title);
        if (isbn !== undefined && isbn !== "") {

            $.ajax({
                url: 'https://openapi.naver.com/v1/search/book_adv',
                type: 'post',
                data: {
                    'title': title
                },
                dataType: "text",
                success: function(data) {
                    let
                        dt = data.documents[0];
                    $("#title").val(dt.title);
                    $('#author').val(dt.authors);
                    $('#publisher').val(dt.publisher);
                    $('#pubdate').val(dt.pubdate);
                    $('#isbn').val(dt.isbn);
                }
            });
            alert("성공?");
            alert(data);
        }
    };
</script>

</html>