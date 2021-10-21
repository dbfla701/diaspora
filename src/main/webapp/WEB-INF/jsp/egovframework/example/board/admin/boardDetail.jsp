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
            <p class="sub_top_tit">추천서 상세보기</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">관리자 페이지</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">추천서 상세보기</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>추천서 상세보기</h4>

                <form name="readForm" role="form" method="post">
                    <input type="hidden" id="seq" name="seq" value="${dto.seq}" />
                </form>
                <table class="show_table">
                    <tbody>
                        <tr>
                            <td class="table_tit">
                                <label for="title">작품명</label>
                            </td>
                            <td class="table_txt">
                                ${dto.title}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="author">지은이</label>
                            </td>
                            <td class="table_txt">
                                ${dto.author}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="isbn">ISBN</label>
                            </td>
                            <td class="table_txt">
                                ${dto.isbn}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="lang">원어</label>
                            </td>
                            <td class="table_txt">
                                ${dto.lang}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="publisher">원작출판사</label>
                            </td>
                            <td class="table_txt">
                                ${dto.publisher}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="pubdate">출판연도</label>
                            </td>
                            <td class="table_txt">
                                ${dto.pubdate}
                            </td>
                        </tr>
                        <tr>
                        <tr>
                            <td class="table_tit">
                                <label for="trans_name">번역작품명</label>
                            </td>
                            <td class="table_txt">
                                ${dto.trans_name}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="trans_author">옮긴이</label>
                            </td>
                            <td class="table_txt">
                                ${dto.trans_author}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="trans_isbn">ISBN</label>
                            </td>
                            <td class="table_txt">
                                ${dto.trans_isbn}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="trans_edit">출판사</label>
                            </td>
                            <td class="table_txt">
                                ${dto.trans_edit}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="trans_date">출판연도</label>
                            </td>
                            <td class="table_txt">
                                ${dto.trans_date}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="content">이 책이 그 외 다중언어로 출판됐을 경우</label>
                            </td>
                            <td class="table_txt">
                                ${dto.content}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="content2">추천 사유</label>
                            <td class="table_txt">
                                ${dto.content2}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="id">추천자</label>
                            </td>
                            <td class="table_txt">
                                ${dto.id}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="email">이메일</label>
                            </td>
                            <td class="table_txt">
                                ${dto.email}
                            </td>
                        </tr>
                        <tr>
                            <td class="table_tit">
                                <label for="regdate">작성날짜</label>
                            </td>
                            <td class="table_txt">
                                <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div>
                    <h4 class="sub_page_tit"><span class="tit_icon"></span>파일 다운로드 테스트</h4>
                    <p>파일첨부 | <a href="download.do?email=${dto.email}">${dto.download}</a></p>
                </div>
                <div class="text-center m-up-down">
                    <button type="submit" class="list_btn btn table_btn">목록</button>
                </div>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

    <script type="text/javascript">
        $(document).ready(function() {
            var formObj = $("form[name='readForm']");
            $(".list_btn").on("click", function() {
                location.href = "/admin/applyList.do";
            })
        })
    </script>

</body>

</html>