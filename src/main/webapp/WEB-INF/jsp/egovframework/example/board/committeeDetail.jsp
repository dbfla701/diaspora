<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <div class="all_wrap">
        <div class="sub_top">
            <p class="sub_logo"><img src="images/images/sub_logo.png" alt="디아스포라 아이덴티티 디자인" /></p>
            <p class="sub_top_tit">위원회</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인
                                바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">운영위원회</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">심사위원 소개</li>
                </ul>
            </div>

            <div class="section" style="padding:0">
                <div class="committee_wrap">
                    <div class="sub_box">
                        <h4 class="sub_page_tit"><span class="tit_icon"></span>심사위원 소개</h4>
                    </div>
                    <div class="sub_box">
                        <div class="prof_top row align-items-center justify-content-between">
                            <div class="prof_img f-left col-3 col-md-6 round-15-85-0"><img src="images/images/person1.jpg"
                                    alt="정과리 교수님"></div>
                            <ul class="prof_profile col-9 col-md-12">
                                <li>
                                    <strong>정과리 교수님</strong>
                                    <span>Prof. Gwari Jeong</span>
                                </li>
                                <li>
                                    <p>서울대학교 대학원 불문학 박사</p>
                                    <p>서울대학교 불문학 학사</p>
                                </li>
                                <li>
                                    <p><b>Email | </b>gwari&commat;gmail.com</p>
                                </li>
                                <li>
                                    <p><b>Homepage | </b><a href="https://sites.google.com" target="_blank">https://sites.google.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="max_bg_wrap">
            <div class="container">
                <div class="prof_btn">
                    <ul class="prof_info row align-items-center justify-content-between">
                        <li>
                            <p class="sub_tit"><span class="sub_tit_icon"></span>경력</strong>
                            <ul class="info_box">
                                <li>
                                    <p class="date col-3 col-md-12"><span class="list_icon"></span>2000~</p>
                                    <p class="col-9 col-md-12">연세대학교 국어국문학과 교수</p>
                                </li>
                                <li>
                                    <p class="date col-3 col-md-12"><span class="list_icon"></span>1984~2001.08
                                    </p>
                                    <p class="col-9 col-md-12">충남대학교 불어불문학과 교수</p>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <p class="sub_tit"><span class="sub_tit_icon"></span>수상</strong>
                            <ul class="info_box">
                                <li>
                                    <p class="date col-3 col-md-12"><span class="list_icon"></span>2015</p>
                                    <p class="col-9 col-md-12">제25회 편운문학상 평론부문</p>
                                </li>
                                <li>
                                    <p class="date col-3 col-md-12"><span class="list_icon"></span>2005</p>
                                    <p class="col-9 col-md-12">제13회 대산문학상 평론부문</p>
                                </li>
                                <li>
                                    <p class="date col-3 col-md-12"><span class="list_icon"></span>2005</p>
                                    <p class="col-9 col-md-12">제16회 김환태평론문학상</p>
                                </li>
                                <li>
                                    <p class="date col-3 col-md-12"><span class="list_icon"></span>2000</p>
                                    <p class="col-9 col-md-12">제11회 팔봉비평문학상</p>
                                </li>
                                <li>
                                    <p class="date col-3 col-md-12"><span class="list_icon"></span>2000</p>
                                    <p class="col-9 col-md-12">제45회 현대문학상 평론부문</p>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <p class="sub_tit"><span class="sub_tit_icon"></span>저서</strong>
                            <ul class="info_box book_list">
                                <li>
                                    <p><span class="list_icon"></span>비평집</p>
                                    <p>Un désir de littérature coréenne, &lpar;Aix-en-Provence: DeCrescenzo
                                        éditeurs, 2015&rpar;</p>
                                    <p>&Lt;1980년대의 북극꽃들아, 뿔고둥을 불어라&Gt; &lpar;문학과지성사, 2014&rpar;</p>
                                    <p>&Lt;글숨의 광합성&Gt; &lpar;문학과지성사, 2009&rpar;</p>
                                </li>
                                <li>
                                    <p><span class="list_icon"></span>편저</p>
                                    <p>&Lt;문학의 교육 문학을 통한 교육&Gt; &lpar;문학과지성사, 2009&rpar; : 공편</p>
                                    <p>&Lt;정명환 깊이 읽기&Gt; &lpar;문학과지성사, 2009&rpar;</p>
                                    <p>&Lt;문학과지성사 30년&Gt; &lpar;문학과지성사, 2005&rpar; : 공편</p>
                                </li>
                                <li>
                                    <p><span class="list_icon"></span>연구서</p>
                                    <p>&Lt;뫼비우스 분면을 떠도는 한국문학을 위한 안내서&Gt; &lpar;문학과지성사, 2016&rpar;</p>
                                    <p>&Lt;근대소설의 기원에 관한 한 연구》&lpar;역락, 2016&rpar;</p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="btn_wrap"><a href="committee.do" class="btn">목록</a></div>


        <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

</body>

</html>