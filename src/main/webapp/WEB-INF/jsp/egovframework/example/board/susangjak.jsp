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
            <p class="sub_top_tit">수상작</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인
                                바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">수상작</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">수상작</li>
                </ul>
            </div>

            <div class="section">
                <div class="tab_wrap tab2">
                    <ul>
                        <li class="on"><a href="#">수상작</a></li>
                        <li><a href="#">심사평</a></li>
                        <li class="slider"></li>
                    </ul>
                </div>

                <div class="text-right">
                    <select name="" onchange="" class="all_select">
                        <option>연도별 수상작 및 심사평 보기</option>
                        <option value="/susangjak.do">2021</option>
                    </select>
                </div>

                <div class="archive_wrap tab_cont">
                    <div class="sub_box">
                        <h4 class="sub_page_tit"><span class="tit_icon"></span>2021 수상작</h4>
                        <div class="bg_wrap">
                            <div class="row align-items-center justify-content-between">
                                <div class="f-left col-3 col-md-10"><img src="images/images/candidate1.jpg" alt="" /></div>
                                <div class="f-right col-8 col-md-12 m-txt-center text-justify">
                                    <p class="cont_tit"><b>저지대</b></p>
                                    <hr class="tit_line" />
                                    <p class="cont_txt word-over">인제 나는 꽃을 봐도 풀을 봐도<br>네 생각을 하는 사람이 됐어.<br>별을 봐도 달을
                                        봐도<br>그걸 올려다보던 삼천이 네 얼굴만 떠올라. - 지지대 中 -</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="sub_box">
                        <h4 class="sub_page_tit"><span class="tit_icon"></span>저자 소개</h4>
                        <div class="row align-items-center justify-content-between">
                            <p class="col-3 col-md-10 round-50 f-left">
                                <img src="images/images/author.jfif" class="round-50" alt="인물 기본 이미지" />
                            </p>
                            <div class="col-9 col-md-12 f-right">
                                <p class="cont_tit"><b>줌파 라히리</b></p>
                                <hr class="tit_line" />
                                <ul class="table_list">
                                    <li>네이버 <오늘의 책> - 축복받은 집</li>
                                    <li>그저 좋은 사람</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab_cont d-none">
                    <div class="sub_box">
                        <h4 class="sub_page_tit"><span class="tit_icon"></span>2021 수상작 심사평</h4>
                        <p class="cont_txt">"생명력 있는 실체를 주는 형식과 내용이 잘 조화되어있는 것으로 평가됩니다.<br>"대지를 살짝 들어올린 진입공간에서 바라보는 자연경관이
                            매력적이었다"<br>"지하공간을 연결하고, 매스와 조형언어를 하나의 단지 개념으로 제시하였다"</p>
                    </div>
                </div>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span
                    class="skip">맨위로</span></button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

</body>


<!-- <script type="text/javascript">

$(".susang").click(function(){ 
	
	alert("됐다");

			$.ajax({

				type : "GET",
				url : "/susangjak.do",
				async: false,
				dataType : "text",
				error : function(error) {
					console.log("error");
				},
				success : function(data) {
					console.log("success");
					alert("susang");
					location.href='/susangjak.do';
				}
			});
})

$(".simsa").click(function(){
	
	alert("됐다");

	$.ajax({

		type : "GET",
		url : "/simsa.do",
		async: false,
		dataType : "text",
		error : function(error) {
			console.log("error");
		},
		success : function(data) {
			console.log("success");
			alert("simsa");
			location.href='/simsa.do';
		}
	});
})

	
</script> -->
</html>
