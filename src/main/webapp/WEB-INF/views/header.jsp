<%@page import="egovframework.example.Dto.BoardDto"%>
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
<div class="header">
    <p class="main_logo"><a href="${pageContext.request.contextPath}/main.do"><img src="images/images/logo_kr.png" alt="부천 디아스포라 문학상 로고" /></a></p>
    <p class="m_logo"><a href="${pageContext.request.contextPath}/main.do"><img src="images/images/m_logo_kr.png" alt="부천 디아스포라 문학상 로고" /></a></p>

    <p class="menu_btn"><a href="#" onclick="return false"><img src="images/images/menu_btn.png" alt="메뉴 오픈" /></a></p>

    <div class="m_bg"></div>
    

    <div class="m_menu">
        <p class="m_menu_tit text-center">메뉴</p>

        <div class="close_btn">
            <a href="#" onclick="return false">
                <img src="images/images/menu_close.png" alt="메뉴 닫기" />
            </a>
        </div>

        <ul class="menu">
            <li><a href="#" class="menu_click" onclick="return false">문학상 소개<span class="open_icon"></span></a>
                <ul class="inner_menu">
                    <li><a href="intro1.do">제정취지</a></li>
                    <li><a href="intro2.do">연혁</a></li>
                    <li><a href="intro3.do">개요</a></li>
                </ul>
            </li>
            <li><a href="identity.do">아이덴티티</a></li>
            <li><a href="#" class="menu_click" onclick="return false">수상작<span class="open_icon"></span></a>
                <ul class="inner_menu">
                    <li><a href="susangjak.do">수상작</a></li>
                    <li><a href="userCandi.do">최종후보작</a></li>
                </ul>
            </li>
            <li><a href="writeForm.do">작품추천</a></li>
            <li><a href="committee.do">위원회</a></li>
            <li><a href="news.do">새소식</a></li>
            
            
            <%
                // 세션값 가져오기
                BoardDto adminid = (BoardDto) session.getAttribute("adminid"); // Object 타입이므로 다운캐스팅
                String Name = adminid == null ? "" : adminid.getAdminid();
            %>
            <%=Name%>         

            <%
                if (Name!="") {
            %>
            <li><a href="#" class="menu_click" onclick="return false">관리자 페이지<span class="open_icon"></span></a>
                <ul class="inner_menu">
                    <li onclick="location.href='/admin/allList.do?num=1'">참가 목록</li>
                    <li onclick="location.href='/admin/newsForm.do'">news 글쓰기</li>
                    <li onclick="location.href='/admin/imsi.do'">임시저장목록</li>
                    <li onclick="location.href='/admin/ckUrl.do'">영상 수정</li>
                    <li onclick="location.href='/admin/reviewForm.do'">심사평 게시</li>
                    <li onclick="location.href='/admin/history.do?num=1'">로그인 기록</li>
                    <li onclick="location.href='/admin/pwUpdate.do'">비밀번호 변경</li>
                    <li onclick="location.href='/admin/logout.do'" >로그아웃</li>
                </ul>
            </li>
            <%
                }
            %>
           

            <li class="text-center all_menu_open"><input type="button" value="전체 메뉴 + " class="all_open" /></li>
        </ul>

        <div class="lang">
            <span><i class="fas fa-globe"></i></span>
            <span>Language</span>
            <span class="country"><a href="#">KR</a></span>
            <span class="country"><a href="#">EN</a></span>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('.menu li a').click(function() {
            if ($(this).hasClass('on')) {
                slideUp();
            } else {
                slideUp();
                $(this).addClass('on').next().slideDown();
            }

            function slideUp() {
                $('.menu li a').removeClass('on').next().slideUp();
            }
        });

        $('.all_open').click(function() {
            $('.inner_menu').slideToggle();
        })

        $('.menu_btn > a').on('click', function() {
            $('.m_bg').show();
            $('.m_menu').show().animate({
                right: 0
            });

            $('.close_btn > a').on('click', function() {
                $('.m_bg').fadeOut(500);
                $('.m_menu').show().animate({
                    right: '-' + 50 + '%'
                }, function() {
                    $('.m_menu').hide();
                });
            })
        });

        $('.m_bg').click(function() {
            $('.m_bg').fadeOut(500);
            $('.m_menu').show().animate({
                right: '-' + 50 + '%'
            }, function() {
                $('.m_menu').hide();
            });
        })
    });
</script>

