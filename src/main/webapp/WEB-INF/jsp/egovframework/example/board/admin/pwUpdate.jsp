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
            <p class="sub_top_tit">비밀번호 변경</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">관리자 페이지</li>
                    <li class="location_arrow"></li>
                    <li class="now_location"> 비밀번호 변경</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>비밀번호 변경</h4>

                <form name="joinForm" method="post">
                    <table class="show_table">
                        <tbody>
                            <tr class="re_password">
                                <td class="table_tit"><label for="inputPw">기존 비밀번호</label> </td>
                                <td class="table_txt">
                                    <input type="text" id="inputPw" name="inputPw" class="pw_input"/>
                                    <input type="submit" onclick="functionName();" value="확인" class="btn table_btn login_btn" style="border:1px solid #00ad6b;">
                                </td>
                            </tr>
                            <tr class="re_password">
                                <td class="table_tit"><label for="newPw">새 비밀번호</label></td>
                                <td class="table_txt">
                                    <input type="text" id="newPw" name="newPw" class="text_form"/>
                                </td>
                            </tr>
                            <tr class="re_password">
                                <td class="table_tit"><label for="newPw2">비밀번호 확인</label></td>
                                <td class="table_txt">
                                    <input type="text" id="newPw2" name="newPw2" class="text_form"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="text-center m-up-down">
                        <td><input type="submit" onclick='updateForm();' value="변경하기" class="btn table_btn"/>
                    </div>
                </form>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

    <script type="text/javascript">
        function functionName() {

            var inputPw = $('#inputPw').val();
            alert(inputPw);

            $.ajax({

                type: "POST",
                url: "/admin/pwCheck.do",
                async: false,
                data: {
                    "inputPw": inputPw
                },
                dataType: "text",
                error: function(error) {
                    console.log("error");
                },
                success: function(data) {
                    console.log("success");
                }
            });
            alert(inputPw);
            return true;
        };

        function updateForm() {

            var newPw = $('#newPw').val();
            alert(newPw);

            $.ajax({

                type: "POST",
                url: "/admin/pwUpdate.do",
                async: false,
                data: {
                    "newPw": newPw
                },
                dataType: "text",
                error: function(error) {
                    console.log("error");
                },
                success: function(data) {
                    console.log("success");
                }
            });
            alert(newPw);
            return true;
        };
    </script>

</body>

</html>