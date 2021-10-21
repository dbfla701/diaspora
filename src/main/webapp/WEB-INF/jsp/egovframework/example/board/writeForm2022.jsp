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
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ include file="/WEB-INF/views/head.jsp" %>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <!-- <script>
        alert("추천기간이 마감되었습니다. 다음에 이용부탁드립니다.")
    </script> -->

    <div class="all_wrap">
        <div class="sub_top">
            <p class="sub_logo"><img src="images/images/sub_logo.png" alt="디아스포라 아이덴티티 디자인" /></p>
            <p class="sub_top_tit">작품추천</p>
        </div>

        <div class="container">
            <div class="location_wrap">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/main.do"><i class="fas fa-home" style="color:#00ad6b"></i><span class="skip">메인 바로가기</span></a></li>
                    <li class="location_arrow"></li>
                    <li class="now_location">작품추천</li>
                </ul>
            </div>

            <div class="text-right" style="margin-top:3rem">
                <select name="" onchange="" class="all_select">
                    <option>연도별 작품추천 보기</option>
                    <option value="/writeForm.do" selected>2021</option>
		            <option value="/writeForm2022.do">2022</option>
                </select>
            </div>

            <table class="show_table">
                <tbody>
                    <caption><span class="essential"><b>*</b>은 필수체크사항입니다.</span></caption>
                    <tr>
                        <td class="table_tit">추천자격</td>
                        <td class="table_txt">
                            <p>제한 없음</p>
                            <p>(개인, 단체 등 누구나 1인 1편 추천 가능, 자천(自薦) 불가)</p>
                        </td>
                    </tr>

                    <tr>
                        <td class="table_tit">추천작품</td>
                        <td class="table_txt">
                            <ul class="table_list list_num">
                                <li>한국어나 영어로 출판된 도서</li>
                                <li>디아스포라 주제 장편소설</li>
                                <li>현존 작가의 문학작품</li>
                            </ul>
                        </td>
                    </tr>

                    <tr>
                        <td class="table_tit">추천마감</td>
                        <td class="table_txt">
                            <p>한국시간 기준 2020. 10. 30.(금) 18시 까지</p>
                        </td>
                    </tr>

                    <tr>
                        <td class="table_tit">작품<br class="m_show d-none" />시간 범위</td>
                        <td class="table_txt">
                            <p>문학상 공식언어 반영, 원작소설의 출판연도 기준</p>
                            <ul class="table_list list_num">
                                <li>한국작품(원어-한국어) : 2010년 ~ 2019년</li>
                                <li>해외작품(원어-영어) : 2000년 ~ 2019년</li>
                                <li>번역작품(원어-그외언어, 한국어․영어로 번역 출판) : 2010년~2019년 (최종언어 번역출판연도 기준)</li>
                            </ul>
                        </td>
                    </tr>

                    <tr>
                        <td class="table_tit">동의사항<b>*</b></td>
                        <td class="table_txt">
                            <ul class="table_list list_num" style="margin-bottom: 1rem;">
                                <li>제출한 추천서는 수정이 불가하고 반환하지 않으며 공개되지 않음</li>
                                <li>추천자 정보는 추천작품 관리에만 사용하며, 심사위원에게는 제공하지 않음 (1년간 보관)</li>
                            </ul>
                            <form name="joinForm" role="form" method="post" action="${pageContext.request.contextPath}/write.do" enctype="multipart/form-data">
                                <input type="radio" id="agree" name="opinion" class="agree_input" value="양력" checked><label for="agree" class="agree_label">동의</label>
                                <input type="radio" id="disagree" name="opinion" class="agree_input" value="음력"><label for="disagree" class="agree_label">비동의</label>
                            </form>
                        </td>
                    </tr>

                </tbody>
            </table>

            <form name="joinForm" role="form" method="post" action="${pageContext.request.contextPath}/write.do" enctype="multipart/form-data">

                <table class="show_table">
                    <tbody>
                        <caption>추천자 입력사항<span class="essential"><b>*</b>은 필수입력값입니다.</span></caption>
                        <tr>
                            <td class="table_tit"><label for="id">추천자/소속기관<b>*</b></label></td>
                            <td class="table_txt">
                                <input type="text" id="id" name="id" />
                            </td>
                        </tr>

                        <tr>
                            <td class="table_tit"><label for="email">이메일<b>*</b></label></td>
                            <td class="table_txt">
                                <input type="text" id="email1" name="email1" class="email_input"/> @ <input id="email2" name="email2" type="text" class="email_input"> 
                                <select id="email3"
                                    name="email3" onChange="selectEmail(this)" class="email_input email_select">
                                    <option value="" selected>선택</option>
                                    <option value="">직접입력</option>
                                    <option value="naver.com">naver.com</option>
                                    <option value="hanmail.net">hanmail.net</option>
                                    <option value="gmail.com">gmail.com</option>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td class="table_tit"><label for="address">거주도시<b>*</b></label></td>
                            <td class="table_txt">
                                <input type="text" id="address" name="address" placeholder="예) 부천시" />
                            </td>
                        </tr>
                    </tbody>
                </table>

                <table class="show_table">
                    <tbody>
                        <caption>작품정보 (원작소설) <span class="essential"><b>*</b>은 필수입력값입니다.</span></caption>
                        <tr>
                            <td class="table_tit"><label for=title>작품명<b>*</b></label></td>
                            <td class="table_txt"><input type="text" id="title" name="title" class="search_input" />
                                <button type="submit" value="검색" class="btn table_btn" onclick="window.open('${pageContext.request.contextPath}/bookList.do')">검색</button>
                            </td>
                        </tr>

                        <tr>
                            <td class="table_tit"><label for="author">지은이<b>*</b></label></td>
                            <td class="table_txt"><input type="text" id="author" name="author" /></td>
                        </tr>

                        <tr>
                            <td class="table_tit"><label for="isbn">ISBN<b>*</b></label></td>
                            <td class="table_txt"><input type="text" id="isbn" name="isbn" /></td>
                        </tr>

                        <tr>
                            <td class="table_tit"><label for="publisher">원작출판사</label></td>
                            <td class="table_txt"> <input type="text" id="publisher" name="publisher" /></td>
                        </tr>

                        <tr>
                            <td class="table_tit"><label for="lang">원어</label></td>
                            <td class="table_txt"><input type="text" id="lang" name="lang" /></td>
                        </tr>

                        <tr>
                            <td class="table_tit"><label for="pubdate">출판연도</label></td>
                            <td class="table_txt"><input type="text" id="pubdate" name="pubdate" /></td>
                        </tr>
                    </tbody>
                </table>

                <table class="show_table">
                    <tbody>
                        <caption>이 책이 한국어 또는 영어로<b style="font-size:1.1rem">번역</b> 출판 됐을 경우</caption>
                        <tr>
                            <td class="table_tit"><label for="trans_isbn">번역작품명</label></td>
                            <td class="table_txt"><input type="text" id="trans_isbn" name="trans_isbn" /></td>
                        </tr>
                        <tr>
                            <td class="table_tit"><label for="trans_name">옮긴이</label></td>
                            <td class="table_txt"><input type="text" id="trans_name" name="trans_name" /></td>
                        </tr>
                        <tr>
                            <td class="table_tit"><label for="trans_author">ISBN</label></td>
                            <td class="table_txt"><input type="text" id="trans_author" name="trans_author" /></td>
                        </tr>
                        <tr>
                            <td class="table_tit"><label for="trans_edit">출판사</label></td>
                            <td class="table_txt"><input type="text" id="trans_edit" name="trans_edit" /></td>
                        </tr>
                        <tr>
                            <td class="table_tit"><label for="trans_date">출판연도</label></td>
                            <td class="table_txt"><input type="text" id="trans_date" name="trans_date" /></td>
                        </tr>
                    </tbody>
                </table>

                <table class="show_table">
                    <tbody>
                        <caption><span class="essential"><b>*</b>은 필수입력값입니다.</span></caption>
                        <tr>
                            <td class="table_tit"><label for="content">이 책이 그 외 다중언어로<br/> 출판 됐을 경우</label> </td>
                            <td class="table_txt"><input type="text" id="trans_date" name="trans_date" placeholder="해당 언어로 출판된 작품명을 알고 있다면 자유롭게 작성해주세요."/></td>
                        </tr>
                        <tr>
                            <td class="table_tit"><label for="content2">추천사유<b>*</b></label></td>
                            <td class="table_txt table_large_area"><textarea id="content2" name="content2" placeholder="공백 포함, 200자 원고지 5장 이내"></textarea></td>
                        </tr>
                    </tbody>
                </table>

                <table class="show_table">
                    <tbody>
                        <caption>추천서를 다운받아 작성 후 파일을 등록해주세요.</caption>
                        <tr>
                            <td class="table_tit">추천서 다운로드</td>
                            <td class="table_txt file_download">
                                <a href="recomDown.do" class="table_txt">양식 다운로드</a>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="table_tit"><label for="content">추천서 등록</label> </td>
                            <td class="table_txt file_choice">
                                <label>
                                    <input type="file" id="input_file" name="file" class="file-input" accept="image/*">
                                </label>
                                <span class="filename text-center">파일을 선택해주세요.</span>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div id="google_recaptha">
                    <script src='https://www.google.com/recaptcha/api.js'></script>
                    <div class="g-recaptcha" data-sitekey="6LdT6sMaAAAAAEELIti-7B160MiOo_qDEEDOOwxy"></div>
                </div>
            </form>

            <p class="btn_wrap"><input type="button" onclick="chkForm();" value="추천하기" class="btn" /></p>

            <script>
                $('#input_file').on('change', function() {
                    $filename = $(this).val();

                    if ($filename == "")
                        $filename = "파일을 선택해주세요.";

                    $(".filename").text($filename);
                })
            </script>

            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

        </div>
    </div>

    <%@ include file="/WEB-INF/views/footer.jsp" %>

</body>

<script type="text/javascript">
    function chkForm() {
        // var id= document.getElementById("id");
        if ($("#id").val() == "") {
            id.style.display = "red";
            id.focus();
            alert('추천자를 입력하세요');
            return false;
        }

        // var email= document.getElementById("email");
        if ($("#email").val() == "") {
            email.style.display = "red";
            email.focus();
            alert('이메일을 입력하세요');
            return false;
        }

        // var email= document.getElementById("email");
        if ($("#address").val() == "") {
            email.style.display = "red";
            email.focus();
            alert('거주도시를 입력하세요');
            return false;
        }

        // var title= document.getElementById("title");
        if ($("#title").val() == "") {
            title.style.display = "red";
            title.focus();
            alert('작품명을 입력하세요');
            return false;
        }

        // var author= document.getElementById("author");
        if ($("#author").val() == "") {
            author.style.display = "red";
            author.focus();
            alert('지은이를 입력하세요');
            return false;
        }

        // var isbn= document.getElementById("isbn");
        if ($("#isbn").val() == "") {
            isbn.style.display = "red";
            isbn.focus();
            alert('ISBN을 입력하세요');
            return false;
        }

        // var lang= document.getElementById("lang");
        if ($("#lang").val() == "") {
            lang.style.display = "red";
            lang.focus();
            alert('원어를 입력하세요');
            return false;
        }

        // var publisher= document.getElementById("publisher");
        if ($("#publisher").val() == "") {
            publisher.style.display = "red";
            publisher.focus();
            alert('원작출판사를 입력하세요');
            return false;
        }

        // var pubdate= document.getElementById("pubdate");
        if ($("#pubdate").val() == "") {
            pubdate.style.display = "red";
            pubdate.focus();
            alert('출판연도를 입력하세요');
            return false;
        }

        document.joinForm.submit();
        return true;
    }

    $(function () {
        var write = $('#email2');
        $('#email3').change(function () {
            var element = $(this).find('option:selected');
            var email = element.attr('value');
            write.val(email);
        });
    })
</script>

</html>