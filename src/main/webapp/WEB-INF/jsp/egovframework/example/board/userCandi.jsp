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
            <p class="sub_top_tit">최종후보작</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">수상작</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">최종후보작</li>
                </ul>
            </div>

            <div class="section">
                <div class="text-right">
                    <select name="" onchange="" class="all_select">
                        <option>연도별 최종후보작 보기</option>
                        <option value="/userCandi.do" selected>2021</option>
                    </select>
                </div>
                
                <h4 class="sub_page_tit"><span class="tit_icon"></span>최종후보작</h4>

                <p class="cont_txt">최종후보작은 유네스코 문학 창의도시 네트워크에서 대표작으로 추천한 작품 1편과 부천 문인단체에서 대표작으로 추천한 작품 1편을 포함한다.</p>

                <ul class="img_board">
                    <li>
                        <div>
                            <p class="award_img"><a href="https://search.daum.net/search?w=bookpage&bookId=842225&tab=introduction&DA=LB2&q=%EC%A0%80%EC%A7%80%EB%8C%80";><img src="images/images/candidate1.jpg" alt="최종후보작 표지" /></a></p>
                            <p class="list_txt txt-overflow">저지대</p>
                        </div>
                    </li>
                    
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate2.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt txt-overflow">파도가 바다의 일이라면</p>
                        </div>
                    </li>
                    
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate3.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt txt-overflow">일백개의 산을 넘어</p>
                        </div>
                    </li>
                    
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate4.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt txt-overflow">중국색시</p>
                        </div>
                    </li>
                    
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate5.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt txt-overflow">어느날 난민</p>
                        </div>
                    </li>
                    
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate6.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt txt-overflow">숨그네</p>
                        </div>
                    </li>
                    
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate7.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt txt-overflow">Dancing the Death Drill</p>
                        </div>
                    </li>
                    
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate8.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt">자유로운 삶 (1,2)</p>
                        </div>
                    </li>
                    
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate9.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt">Little Aunt Crane</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate10.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt">과거로부터의 행진 (1, 2)</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate11.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt">Manchester Happened</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p class="award_img"><img src="images/images/candidate12.jpg" alt="최종후보작 표지" /></p>
                            <p class="list_txt">한국에 삽니다</p>
                        </div>
                    </li>
                </ul>


            </div>
        </div>

        <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

</body>

</html>