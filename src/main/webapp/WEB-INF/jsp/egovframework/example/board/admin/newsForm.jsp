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
            <p class="sub_top_tit">글쓰기</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">관리자 페이지</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">글쓰기</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>글쓰기</h4>

                <form name="newsForm" role="form" method="post" enctype="multipart/form-data">
                    <table class="show_table">
                        <tbody>
                            <tr>
                                <td class="table_tit"><label for="news_title">제목</label> </td>
                                <td class="table_txt">
                                    <input type="text" id="news_title" name="news_title" placeholder="제목을 입력하세요" />
                                </td>
                            </tr>
                            <tr>
                                <td class="table_tit"><label for="news_content">내용</label> </td>
                                <td class="table_txt">
                                    <textarea id="news_content" name="news_content" placeholder="내용을 입력하세요"></textarea>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="text-center m-up-down">
                        <input type="submit" onclick='chkForm("save");' value="작성" class="btn table_btn" style="background-color:#00ad6b; color:#fff" />
                        <input type="submit" onclick='chkForm("imsi");' value="임시저장" class="temporarily" />
                    </div>
                </form>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

    <script type="text/javascript">
        function chkForm(str) {

            if (str == "save") {

                if ($("#news_title").val() == "") {
                    title.style.display = "red";
                    title.focus();
                    alert('제목 입력하세요');
                    return false;
                }
                if ($("#news_content").val() == "") {
                    author.style.display = "red";
                    author.focus();
                    alert('내용 입력하세요');
                    return false;
                }

                newsForm.action = "/newswrite.do";
                alert('저장되었습니다');
                return true;

            } else if (str == "imsi") {

                if (confirm("임시저장하겠습니까?") == true) {
                    newsForm.action = "/imsiSave.do";
                    alert('임시 저장되었습니다');
                    return true;
                } else {
                    return;
                }
            }
        }
    </script>

</body>

</html>