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
            <p class="sub_top_tit">연혁</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">문학상 소개</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">연혁</li>
                </ul>
            </div>
		
			<div class="section o-hidden" data-aos="fade-in">
				<h4 class="sub_page_tit"><span class="tit_icon"></span>연혁</h4>
				
				<div class="timeline">
					<div class="timeline-item" date-is='2021' data-aos="fade-in">
						<p><span class="timeline_date">10</span><span class="timeline_txt">수상작 발표, 시상</span></p>
						<p><span class="timeline_date">09</span><span class="timeline_txt">수상작 확정(운영위원회 의결)</span></p>
						<p><span class="timeline_date">07</span><span class="timeline_txt">심사위원 심사(본심)</span></p>
						<p><span class="timeline_date">06</span><span class="timeline_txt">상패 디자인 개발 및 확정</span></p>
					</div>
					<div class="timeline-item" date-is='2020' data-aos="fade-in">
						<p><span class="timeline_date">12</span><span class="timeline_txt">추천위원 심사(예심)</span></p>
						<p><span class="timeline_date">  </span><span class="timeline_txt">아이덴티티 디자인 개발 (모티브 ‘민들레 꽃씨’)</span></p>
						<p><span class="timeline_date">10</span><span class="timeline_txt">2021 수상작 선정을 위한 작품 접수</span></p>
						<p><span class="timeline_date">08</span><span class="timeline_txt">문학상 공식 취지문 작성 (한건수, 부천문학창의도시 운영위원, 강원대학교 교수)</span></p>
						<p><span class="timeline_date">06</span><span class="timeline_txt">운영위원회 위촉</span></p>
						<p><span class="timeline_date">02</span><span class="timeline_txt">&ulcorn;부천국제문학상 운영 조례&drcorn; 제정·공포</span></p>
					</div>
					<div class="timeline-item" date-is='2019' data-aos="fade-in">
						<p><span class="timeline_date">08</span><span class="timeline_txt">부천국제문학상 추진 기본 계획 수립</span></p>
						<p><span class="timeline_date">05</span><span class="timeline_txt">(가칭)디아스포라 국제문학상 제정 선포 (2019 유네스코 문학 창의도시 연례회의)</span></p>
					</div>
					<div class="timeline-item" date-is='2017' data-aos="fade-in">
						<p><span class="timeline_date">11</span><span class="timeline_txt">부천, 유네스코 문학 창의도시 지정 (동아시아 최초)</span></p>
						<p><span class="timeline_date">05</span><span class="timeline_txt">디아스포라 문학 포럼 : 글로벌 부천문학-펄벅과 디아스포라 문학 포럼</span></p>
					</div>
					<div class="timeline-item" date-is='2016' data-aos="fade-in">
						<p><span class="timeline_date">03</span><span class="timeline_txt">최초 구성</span></p>
					</div>
				</div>
			</div>

			<button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

		</div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>