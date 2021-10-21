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
            <p class="sub_top_tit">제정취지</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">문학상 소개</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">제정취지</li>
                </ul>
            </div>

            <div class="section">
                <div class="tab_wrap tab1">
                    <ul>
                        <li class="on"><a href="#">추진배경</a></li>
                        <li><a href="#">제정취지</a></li>
                        <li class="slider"></li>
                    </ul>
                </div>

                <div class="tab_cont_wrap">
                    <div class="tab_cont">
                        <h4 class="sub_page_tit"><span class="tit_icon"></span>추진배경</h4>
                        <div class="row align-items-center justify-content-between">
                            <p class="tab_bg_icon col-4 col-md-6"></p>
                            <p class="cont_txt text-justify col-8 col-md-12 txt-indent">인류는 시작부터 이동을 통해 역사를 만들어 왔다. 문학 역시 이동하는 인간의 삶과 이야기에서 많은 영감을 받아왔다. 부천시는 한국의 도시화, 산업화 과정을 대표하는 도시이자
                                출생지가 다양한 사람들이 모여 사는 도시다. 이는 한국의 80년대 대표소설 『원미동 사람들』에서 문학적으로 표현되어 있다. 노벨문학상 수상자 펄 벅이 6.25
                                전쟁으로 한국에 주둔하게 된 외국인 장병과 한국인 사이에서 태어난 아동을 위해 설립한 소사희망원이 있던 곳이기도 하다. 부천 디아스포라 문학상은 이와 같은
                                부천시의 역사·문화적 배경과 펄 벅의 삶을 융합하여 2017년 부천시가 유네스코 창의도시 네트워크 가입(2017년 11월) 시 국제사회에 제시하여 관심과
                                지지를 받은 사업이다. 부천 디아스포라 문학상은 「부천국제문학상 운영 조례」 제정(2020년 2월) 이후 부천국제문학상 운영위원회 구성(2020년 6월)을
                                시작으로 2021년 10월, 첫 번째 수상작 발표와 함께 시상식이 열리며, 매년 마다 수상작을 선정하여 시상한다.</p>
                        </div>
                    </div>

                    <div class="tab_cont d-none">
                        <h4 class="sub_page_tit"><span class="tit_icon"></span>제정취지</h4>
                        <p class="cont_txt text-justify txt-indent">인류는 지구상에 출현한 이래 끊임없이 이동해 왔다. 생존을 위해 이동했고, 더 나은 삶을
                            만들기 위해 미지의 세계로 떠났다. 이들의 발걸음은 자국마다 이야기를 담고 있었고 그들의 이야기는 곧 인류의 역사를 채워 나갔다. 고향을 떠나는 사람들은 비록 자발적
                            선택이었어도 그리움과 귀향의 꿈을 안고 살아간다. 하물며 강제로 끌려가거나 어쩔 수 없이 떠나야만 했던 사람들에게 고향은 포기할 수 없는 꿈이자 반드시 돌아가야 할
                            목적지였다. 디아스포라는 오늘날 더 이상 유대인만을 지칭하지 않는다. 원래는 전쟁 포로로 강제로 타국으로 끌려갔던 유대인들이 천년 넘도록 귀향 의지와 민족의 정체성을
                            유지한 것에서 비롯되었다고는 하지만, 고향을 떠난 것이 어디 유대인뿐이랴. 이주로 이루어지지 않은 도시는 없다. 전 세계적으로 수많은 민족과 집단들이 국가와 민족과
                            지방의 경계를 넘나들며 새로운 디아스포라 공동체를 만들어 가고 있는 것이 현실이다.<br /><br />

                        <p class="cont_txt text-justify txt-indent">
                            문학은 이동하는 인간의 삶과 이야기를 오래전부터 담아왔다. 작가 스스로가 이주민으로서 자신의 경험을 작품에 담거나 혹은 새로운 문학적 영감을 낯선 땅에서 찾기도
                            했다. 19세기 제국의 확장과 식민지배는 지배자와 피식민자 모두 낯선 곳으로의 이동을 증가시켰다. 제국의 문인들은 확장된 영토를 작품의 소재로 삼았고, 피식민 문인들
                            역시 식민지 주민의 고통과 이주의 현실을 작품으로 승화했다. 세계화의 진전으로 디아스포라는 더욱 확대되고 있다. 디아스포라 공동체는 문화 간 교류를 증진시켰고,
                            혼성문화를 출현시켰다. 문화의 경계를 넘나드는 새로운 문학적 상상과 창의성이 증가했고, 작가와 독자 모두 디아스포라 문학의 새로운 세계로 다가서기 시작했다. 오늘날
                            현대문학은 디아스포라의 삶을 작품으로 승화시킴으로써 문학의 포용력과 영역을 더욱 확대하고 있다.<br /><br />
                        </p>

                        <p class="cont_txt text-justify txt-indent">
                            한국문학 역시 디아스포라 공동체의 확대와 함께 더욱 풍요로워지고 있다. 전 세계로 흩어진 700만 한민족 디아스포라 공동체는 각자의 삶과 역사를 배경으로 다양한
                            문학적 성취를 이루어 내고 있다. 머지않아 한국에 체류하는 이주민들도 곧 한국에서의 경험을 문학으로 승화시킬 것이다. 부천은 유네스코 문학 창의도시로서 디아스포라
                            문학의 가능성과 성취에 주목하고자 한다. 세상은 여전히 인종, 민족, 국민 등 다양한 집단 정체성으로 분열되어 서로에 대한 혐오와 적대감이 넘치고 있다. 감염의 공포
                            등 최근의 일련의 상황은 우리의 갈 길이 아직도 얼마나 먼가를 잘 보여주었다. 디아스포라 공동체는 오늘날 분열되는 세계를 엮어주며, 서로 다른 문화의 교류를
                            촉진하고, 희생과 고통의 경험을 관용과 화합의 길로 전환하는 주체이다. 디아스포라 문학은 이러한 노력의 역사, 삶의 경험, 그리고 정체성의 형성 과정을 문학으로
                            승화시킨 장르이다. 또한 전 세계의 디아스포라 공동체가 살아온 이야기를 소통함으로써 혐오와 차별이 아닌 환대와 협력의 세상으로 만드는 문학이다. 작가가 반드시
                            디아스포라일 이유도 없다. 부천 시민은 ‘삶을 바꾸는 문학의 힘’을 믿는다. 부천 디아스포라 문학상을 제정함으로써 부천이 꿈꾸는 세계의 연대, 환대와 협력의 정신을
                            고양하고자 한다. 유네스코 문학 창의도시 네트워크와 함께, 부천이 꿈꾸는 ‘문학을 통한 세상의 변화’에 한 걸음 더 가까이하고자 이제 긴 여정을 시작한다.
                        </p>
                    </div>
                </div>
            </div>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>
        </div>

    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

</body>

</html>