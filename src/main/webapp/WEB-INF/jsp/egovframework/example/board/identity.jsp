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
            <p class="sub_top_tit">아이덴티티</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="now_location">아이덴티티</li>
                </ul>
            </div>

            <div class="section">
                <h4 class="sub_page_tit"><span class="tit_icon"></span>아이덴티티 디자인</h4>
                <div class="row align-items-center justify-content-between">
                    <div class="f-left col-4 col-md-10"><img src="images/images/2-3_img1.png" alt="디아스포라 아이덴티티 디자인" /></div>
                    <div class="f-right col-8 col-md-12 cont_txt text-justify txt-indent">부천 디아스포라 문학상의 아이덴티티 디자인은 문학상 제정 취지를 반영하여 바람을 따라 전 세계로 퍼져 낯선 땅에서 다시 꽃을 피우고 뿌리를 내리는 ‘민들레 꽃씨’가 모티브이다. 흩날리는 꽃씨는 디아스포라의 확장성과 창의성, 강인한 생명력을, 모여있는 꽃씨는 유대와 환대를 상징한다. 또한 쉽고 친숙하게 디아스포라의 의미를 사람들에게 전달할 수 있도록 문학상 명칭(워드마크)보다 이미지(심벌마크)를 중심으로 디자인했다.</div>
                </div>

                <h4 class="sub_page_tit"><span class="tit_icon"></span>시그니처</h4>
                <div class="ratio-50_wrap d-flex justify-content-between">
                    <div class="ratio-50">
                        <p class="f-left"><img src="images/images/signature_kr.png" alt="시그니처 국문 조합" /></p>
                        <p class="list_txt">심볼마크 + 워드마크<br class="m-br-none" /> 국문 조합</p>
                    </div>
                    <div class="ratio-50">
                        <p class="f-left"><img src="images/images/signature_en.png" alt="시그니처 영문 조합" /></p>
                        <p class="list_txt">심볼마크 + 워드마크<br class="m-br-none" /> 영문 조합</p>
                    </div>
                </div>
                
                <h4 class="sub_page_tit"><span class="tit_icon"></span>테마색상</h4>
                <div class="theme_wrap d-flex align-items-center justify-content-center">
                    <div class="theme_color text-center">
                        <img src="images/images/theme_color.png" alt=""/>
                    </div>
                    <div class="theme_txt">
                        <p class="cont_txt f-right text-left">부천 디아스포라 문학상의 대표 컬러는<br class="m-br-none"/> Diaspora GREEN이다.</p>
                        <p class="cont_txt f-right text-left">보조 컬러로 Diaspora LILAC을 같이 사용할 수 있다.</p>
                        <p class="cont_txt f-right text-left"><b>Diaspora GREEN | </b>RGB(0,173,107) , CMYK(76,0,73,0)</p>
                        <p class="cont_txt f-right text-left"><b>Diaspora LILAC | </b>RGB(232,202,214) , CMYK(9,26,7,0)</p>
                    </div>
                </div>

                <h4 class="sub_page_tit"><span class="tit_icon"></span>상패 디자인</h4>
                <div class="row align-items-center justify-content-between">
                    <div class="trophy_wrap f-left col-5 col-md-10">
                        <img src="images/images/trophy1.png" alt="" />
                        <img src="images/images/trophy2.png" alt="" />
                        <img src="images/images/trophy3.png" alt="" />
                        <img src="images/images/trophy4.png" alt="" />
                        <img src="images/images/trophy5.png" alt="" />
                    </div>
                    <div class="f-right col-7 col-md-12 cont_txt text-justif txt-indent">상패의 주재료인“나무”는 누군가 씨앗처럼 퍼져나가 다른 사회적 토양에 정착하여 뿌리를 내리고 성장해 나가는 디아스포라를 상징한다. 12개의 민들레 꽃씨를 세계 각지에서 자생하는 나무로 나타내고 이를 하나의 상패로 만들어 이주와 정착, 문화의 융합과 통합의 의미를 부여한다. 
                    상패는 매우 단순한 구조이나 판재에 민들레 꽃씨를 중첩되게 제작하여 매우 복잡한 형상을 띈다. 이를 통해 표피적 관찰만으로 쉽게 가늠하기 어려운 디아스포라 문학의 깊이와 다양성을 표현했다.</div>
                </div>
            </div>
        </div>

        <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

</body>

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript">
    $('.trophy_wrap').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 2000
    });
</script>

</html>