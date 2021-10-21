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
            <p class="sub_top_tit">심사평 작성하기</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">관리자 페이지</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">심사평 작성하기</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>심사평 작성하기</h4>

                <form name="reviewForm" role="form" method="post" action="${pageContext.request.contextPath}/reviewing.do" enctype="multipart/form-data">
                    <table class="show_table">
                        <tbody>
                            <tr>
                                <td class="table_tit"><label for="review">심사평</label></td>
                                <td class="table_txt"><textarea id="review" name="review"></textarea>
                                </td>
                            </tr>
                            <!-- 유튜브 영상도 같이 연동 -->
                        </tbody>
                    </table>

                    <div class="text-center m-up-down">
                        <input type="button" onclick='chkForm();' value="작성" class="btn table_btn" />
                    </div>
                </form>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

    <script type="text/javascript">
        function chkForm() {

            if ($("#review").val() == "") {
                title.style.display = "red";
                title.focus();
                alert('심사평을 입력하세요');
                return false;
            }
            if (confirm("심사평을 등록 하시겠습니까?") == true) {
                document.reviewForm.submit();
                return true;
            } else {
                return;
            }
        }
    </script>

</body>

</html>