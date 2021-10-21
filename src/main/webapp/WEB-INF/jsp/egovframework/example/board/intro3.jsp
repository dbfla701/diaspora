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
            <p class="sub_top_tit">문학상 소개</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="prev_location">문학상 소개</li>
                    <li class="location_arrow"></li>
                    <li class="now_location">개요</li>
                </ul>
            </div>

            <div class="section">
                <div class="sub_box">
                    <dl>
                        <dt class="sub_page_tit"><span class="tit_icon"></span>공식언어</dt>
                        <dd class="cont_txt">한국어 ·영어</dd>
                    </dl>

                    <dl>
                        <dt class="sub_page_tit"><span class="tit_icon"></span>심사대상</dt>
                        <dd class="cont_txt">한국어나 영어로 출판된 도서, 디아스포라 주제 장편소설, 현존 작가의 문학작품</dd>
                    </dl>

                    <dl>
                        <dt class="sub_page_tit"><span class="tit_icon"></span>시상</dt>
                        <dd class="cont_txt">- 작품 1편 시상, 상패와 상금(작가 5,000만원, 번역가 1,000만원) 수여 (단, 수상작이 없을 시, 시상하지 않을 수
                            있음)<br />- 시상식은 국경과 민족, 문화의 경계를 자유롭게 넘나들며 새로운 공동체를 만드는 디아스포라의 가치와 부합하고 전 세계 각국에서 함께 기념할 수 있는
                            “국제연합일”(매년 10월 24일)을 기준으로 탄력적으로 개최</dd>
                    </dl>

                    <dl>
                        <dt class="sub_page_tit"><span class="tit_icon"></span>번역가 시상금</dt>
                        <dd class="cont_txt text-justify">현재 세계문학의 흐름은 유럽과 기타 서구 언어로 쓴 문학작품이 주도하고 있다. 우리는 부천 디아스포라 문학상을
                            통해 대외적으로는 세계에 한국문학을 알리고 우리나라에는 다양한 언어권의 문학을 소개하기 위해 아래의 경우에 한정하여 번역가(또는 출판사)에게 시상금을 수여한다.
                            <button type="button" class="text_more_btn">더보기 +</button>
                            <ul class="cont_txt sub_box_ul text_more d-none">
                                <li>수상작이 한국작품 : 영어로 옮겨 출판한 번역작품이 있으면 번역가에 수여, 없으면 수상 다음 해부터 3년까지 영어로 번역하여 처음 출판한 출판사에
                                    번역지원금으로 지급</li>
                                <li>수상작이 한국어 이외의 언어로 쓴 작품 : 한국어로 옮겨 출판한 번역작품이 있으면 번역가에 수여, 없으면 수상 다음 해부터 3년까지 한국어로 번역하여
                                    처음 출판한 출판사에 번역지원금으로 지급</li>
                                <li>번역가 시상금(번역지원금)은 심사위원회가 승인하지 않으면 지급하지 않는다.</li>
                                <li>번역작품이 2종 이상으로 번역가가 다수인 경우에는 심사위원회에서 번역가 시상금 수여 대상을 결정한다.</li>
                                <li>번역지원금은 번역작품이 책으로 출판되면 수여한다.</li>
                            </ul>
                        </dd>
                    </dl>
                </div>
                
                <script type="text/javascript">
                    $('.text_more_btn').click(function(){
                        $('.text_more').slideToggle();
                    })
                </script>

                <div class="sub_box">
                    <div class="sub_box">
                        <h4 class="sub_page_tit"><span class="tit_icon"></span>추진절차</h4>

                        <ul class="procedure_wrap">
                            <li>
                                <p class="procedure_tit pro_padding"><a href="writeForm.do" style="color:#fff">작품추천</a></p>
                                <div class="procedure_txt_wrap pro_padding">
                                    <p class="procedure_txt">▸ 제한 없음</p>
                                    <p class="procedure_txt">▸ 추천서 제출 [비공개]</p>
                                </div>
                                <p class="procedure_row pro_padding text-center">전년도 6월~7월</p>
                            </li>

                            <li>
                                <p class="procedure_tit pro_padding">심사(예심)</p>
                                <div class="procedure_txt_wrap pro_padding">
                                    <p class="procedure_txt">▸ <a href="committee.do">추천위원회</a> 심사</p>
                                    <p class="procedure_txt">▸ 심사후보작 선정 [비공개]</p>
                                </div>
                                <p class="procedure_row pro_padding text-center">전년도 8월~12월</p>

                            </li>

                            <li>
                                <p class="procedure_tit pro_padding">심사(본심사)</p>
                                <div class="procedure_txt_wrap pro_padding">
                                    <p class="procedure_txt">▸ <a href="committee.do">심사위원회</a> 심사</p>
                                    <p class="procedure_txt">▸ 최종후보작 및 수상작 결정</p>
                                </div>
                                <p class="procedure_row pro_padding text-center">당해 연도 1월~6월</p>
                            </li>

                            <li>
                                <p class="procedure_tit pro_padding">시상</p>
                                <div class="procedure_txt_wrap pro_padding">
                                    <p class="procedure_txt">▸ 수상작 발표</p>
                                    <p class="procedure_txt">▸ 시상식</p>
                                </div>
                                <p class="procedure_row pro_padding text-center">매년 10월</p>
                            </li>
                        </ul>

                        <p class="under_txt">※ 추진 일정은 상황에 따라 변동될 수 있음</p>
                    </div>
                </div>
            </div>
        </div>

        <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

</body>

</html>