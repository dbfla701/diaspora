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
            <p class="sub_top_tit">최종후보작 목록</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">관리자페이지</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">최종후보작 목록</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>최종후보작 목록</h4>

                <div class="text-right">
                    <select name="permitOption" onchange="location.href=this.value" class="all_select">
                        <option value="/admin/allList.do">전체목록</option>
                        <option value="/admin/applyList.do">검토중</option>
                        <option value="/admin/permitList.do">후보목록</option>
                        <option value="/admin/denyList.do">반려목록</option>
                        <option value="/admin/candiList.do" selected>최종후보작</option>
                    </select>
                </div>

                <table class="table table-striped col_table">
                    <thead class="col_head">
                        <tr>
                            <th class="m-table-none">번호</th>
                            <th>추천자</th>
                            <th class="m-table-none">이메일</th>
                            <th class="m-table-none">날짜</th>
                            <th>상태</th>
                            <th>삭제</th>
                            <th>선택</th>
                        </tr>
                    </thead>
                    <tbody class="col_body">
                        <c:forEach items="${dto}" var="dto">
                            <tr id="list">
                                <td class="m-table-none">
                                    <a href="${pageContext.request.contextPath}/admin/boardDetail.do?seq=${dto.seq}">
                                        <c:out value="${dto.seq}" />
                                    </a>
                                </td>
                                <td>
                                    <c:out value="${dto.id}" />
                                </td>
                                <td id="email" class="txt-overflow m-table-none">
                                    <c:out value="${dto.email}" />
                                </td>
                                <td class="m-table-none">
                                    <fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd HH:mm" />
                                </td>
                                <td>최종후보</td>
                                <td><input type="button" class="delete btn table_btn" id="delete" value="삭제" /></td>
                                <td><input type="button" class="final btn table_btn" id="final" value="수상작 선택" /></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

    <script type="text/javascript">
        $(".delete").click(function() {

            var str = ""
            var tdArr = new Array(); // 배열 선언
            var checkBtn = $(this);
            var tr = checkBtn.parent().parent();
            var td = tr.children();
            var email = td.eq(2).text();

            alert(email);

            $.ajax({

                type: "POST",
                url: "/delete.do",
                async: false,
                data: {
                    "email": email
                },
                dataType: "text",
                error: function(error) {
                    console.log("error");
                },
                success: function(data) {
                    console.log("success");
                    alert("삭제 되었습니다.");
                    $('#list').remove();
                }
            });


        });
    </script>

</body>

</html>