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
            <p class="sub_top_tit">위원회</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="now_location">위원회</li>
                </ul>
            </div>

            <div class="section">
                <div class="tab_wrap">
                    <ul class="tab_wrap">
                        <li class="on"><input type="text" class="simsa" name="simsa" value="심사위원회"></li>
                        <li><input type="text" class="chu" name="chu" >추천위원 및<br class="m-br-none"/> 운영위원</li>
                        <li class="slider"></li>
                    </ul>
                </div>

                <div class="tab_cont_wrap">
                    <div class="tab_cont">
                        <div class="text-right">
                            <select name="permitOption" onchange="location.href=this.value" class="all_select">
                                <option>연도별 심사위원</option>
                                <option value="/committee.do" selected>2021</option>
                                <option value="/committee2022.do">2022</option>
                            </select>
                        </div>

                        <div class="committee_wrap">
                            <div class="sub_box">
                                <h4 class="sub_page_tit"><span class="tit_icon"></span>심사위원</h4>
                            </div>

                            <div class="sub_box">
                                <div class="main_professor">
                                    <div class="row align-items-center justify-content-between professor_wrap ">
                                        <p class="round-15-85-0 f-left col-3 col-md-10">
                                            <a href="committeeDetail.do" target="_blank"><img src="images/images/person1.jpg" class="round-15-85-0" alt="정과리 교수" /></a>
                                        </p>
                                        <div class="f-right col-9 col-md-12">
                                            <p class="list_txt text-left"><b>정과리 교수</b></p>
                                            <p class="list_txt word-over text-left">서울대 불어불문학과 졸업 및 동 대학원 박사. 연세대학교 국문과 교수. <br>1979년 동아일보 신춘문예를 통해 평론 활동 시작. 저서로, 『문학, 존재의 변증법』(1985)에서부터 <br>『‘한국적 서정’의 환을 좇아서』(2020) 에 이르기까지, 다수의 평론집, 문명에세이, 연구서 등이 있다.</p>
                                        </div>
                                    </div>
                                </div>
                                <ul class="professor_list">
                                    <li>
                                        <div class="professor_wrap">
                                            <p class="img_list round-15-85-0">
                                                <a href="committeeDetail.do" target="_blank"><img src="images/images/person2.jpg"
                                                        class="round-15-85-0" alt="인물 기본 이미지" /></a>
                                            </p>
                                            <p class="list_txt"><b>곽효환 시인</b></p>
                                            <p class="list_txt word-over">저널리즘 텍스트 연구</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="professor_wrap">
                                            <p class="img_list round-15-85-0">
                                                <a href="committeeDetail.do" target="_blank"><img src="images/images/person3.jpg"
                                                        class="round-15-85-0" alt="인물 기본 이미지" /></a>
                                            </p>
                                            <p class="list_txt"><b>윤석기 교수</b></p>
                                            <p class="list_txt word-over">문화기술 융합 분석 </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="professor_wrap">
                                            <p class="img_list round-15-85-0">
                                                <a href="committeeDetail.do" target="_blank"><img src="images/images/person4.jpg"
                                                        class="round-15-85-0" alt="인물 기본 이미지" /></a>
                                            </p>
                                            <p class="list_txt"><b>주강문 박사</b></p>
                                            <p class="list_txt word-over">평론가</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="professor_wrap">
                                            <p class="img_list round-15-85-0">
                                                <a href="committeeDetail.do" target="_blank"><img src="images/images/person5.jpg"
                                                        class="round-15-85-0" alt="인물 기본 이미지" /></a>
                                            </p>
                                            <p class="list_txt"><b>이성열 교수</b></p>
                                            <p class="list_txt word-over">브랜드 실증연구가</p>
                                        </div>
                                    </li>
                                </ul>
								                            <table class="show_table" style="margin-bottom:3rem">
                                <tbody>
                                    <tr>
                                        <td class="table_tit">주요역할</td>
                                        <td class="table_txt">
                                            <ul class="table_list">
                                                <li>추천된 기타 언어권 문학 작품 심사</li>
                                                <li>최종 후보작(shortlist) 선정</li>
                                                <li>수상작 결정</li>
                                                <li>번역가 시상금(번역지원금)수여 대상 승인 및 결정</li>
                                            </ul>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="table_tit">구성</td>
                                        <td class="table_txt">
                                            <p>국내외 문학계(비평 포함) 및 학계 저명인사 5명</p>
                                            <p>※ 심사위원회는 심사의 공정성 확보를 위해 수상작 발표 시 공개</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            </div>
                        </div>
                    </div>

                    <div class="tab_cont d-none">
                        <div class="committee_wrap">
                            <div class="sub_box">
                                <h4 class="sub_page_tit"><span class="tit_icon"></span>운영위원</h4>
                            </div>
                            <div class="sub_box">
                                <ul>
                                    <li>
                                        <p class="list_txt word-over text-left"><span class="list_icon"></span><span>한경구 운영위원장 - </span>유네스코 한국위원회 총장</p>
                                    </li>
                                    <li>
                                        <p class="list_txt word-over text-left"><span class="list_icon"></span><span>정무현 부위원장 - </span>한국문인협회 부천지부 회장</p>
                                    </li>
                                    <li>
                                        <p class="list_txt word-over text-left"><span class="list_icon"></span><span>박해현 위원 - </span>문학평론가</p>
                                    </li>
                                    <li>
                                        <p class="list_txt word-over text-left"><span class="list_icon"></span><span>방민호 위원 - </span>문학평론가, 서울대학교 교수</p>
                                    </li>
                                    <li>
                                        <p class="list_txt word-over text-left"><span class="list_icon"></span><span>오형엽 위원 - </span>문학평론가, 고려대학교 교수</p>
                                    </li>
                                    <li>
                                        <p class="list_txt word-over text-left"><span class="list_icon"></span><span>정은숙 위원 - </span>마음산책 출판사 대표</p>
                                    </li>
                                    <li>
                                        <p class="list_txt word-over text-left"><span class="list_icon"></span><span>최현규 위원 - </span>부천 문학창의도시 운영위원장, 한국작가회의 부천지부 회장</p>
                                    </li>
                                    <li>
                                        <p class="list_txt word-over text-left"><span class="list_icon"></span><span>김성용 위원 - </span>부천 시의원</p>
                                    </li>
                                    <li>
                                        <p class="list_txt word-over text-left"><span class="list_icon"></span><span>오시명 위원 - </span>부천시 문화경제국장</p>
                                    </li>
                                </ul>
                            </div>                            
                        </div>

                        <table class="show_table">
                            <tbody>
                                <tr>
                                    <td class="table_tit">주요역할</td>
                                    <td class="table_txt">
                                        <ul class="table_list">
                                            <li>문학상 운영 전반에 관한 사항 </li>
                                            <li>추천위원 및 심사위원 위촉에 관한 사항</li>
                                            <li>수상작 결정에 관한 사항</li>
                                            <li>수상자의 강연회 개최 등 부대행사에 관한 사항 등</li>
                                        </ul>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="table_tit">구성</td>
                                    <td class="table_txt">
                                        <p>문학 부문 전문가(문인, 학자, 평론가, 언론인 등), 부천시 공무원, 부천시의회 시의원,</p>
                                        <p>부천시 문학 창의도시 운영위원회 위원장, 부천 문인단체 대표</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <h4 class="sub_page_tit"><span class="tit_icon"></span>추천위원</h4>
                        <table class="show_table">
                            <tbody>
                                <tr>
                                    <td class="table_tit">주요역할</td>
                                    <td class="table_txt">
                                        <ul class="committee_list">
                                            <li>추천된 문학 작품 심사</li>
                                            <li>심사 언어권 문학 작품 발굴</li>
                                            <li>심사위원회에 인계할 심사후보작(longlist)선정</li>
                                        </ul>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="table_tit">구성</td>
                                    <td class="table_txt">
                                        <p>8개 언어권(영어권, 불어권, 독일어권, 스페인어권, 러시아어권, 중국어권, 일본어권, 한국어권)의 문학 전문가 8명</p>
                                        <p>※ 그 외 언어권의 작품은 심사위원회에서 심사</p>
                                        <p>※ 추천위원 정보와 심사후보작(longlist)은 공개하지 않음</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>                        
                    </div>

                </div>
            </div>
            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        </div>
    </div>
    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>


</html>