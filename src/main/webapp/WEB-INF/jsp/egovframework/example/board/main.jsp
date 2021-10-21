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

    <section class="all_wrap">
        <div class="bg_video">
            <video muted autoplay loop id="videoBG">
                <source src="images/images/background-video.mp4" type="video/mp4">
                Sorry, your browser doesn't support embedded videos.
            </video>
            <div class="show_wrap">
                <div class="show_logo"><img src="images/images/show_logo_white.png" alt="창의도시 부천 로고"></div>
                <div class="text-center show_tit">부천 시민은 ‘삶을 바꾸는 문학의 힘’을 믿는다.<br /> 유네스코 문학 창의도시 네트워크와 함께,<br class="s-br-none"/> 부천이 꿈꾸는 ‘문학을 통한 세상의 변화’에<br />한 걸음 더 가까이하고자 이제 긴 여정을 시작한다.
                    <p class="cont_txt more_btn text-center"><a href="intro3.do" style="color: inherit; font-size:1.3rem;">더보기&nbsp;&nbsp;></a></p>  
                </div>
            </div>
	   </div>
       <div class="tit_wrap">
            <div class="tit_center">
                <h2 class="small_tit text-center">생존을 위해, 때로는 더 나은 삶을 위해 떠나는 사람들의 이야기</h2>
                <h2 class="big_tit text-center">부천 디아스포라 문학상</h2>
            </div>
       </div>
        <div class="container">
            <div class="section" style="padding-top: 0;">
                <div class="vertical_line"></div>
                <h2 class="medium_tit text-center">우리는 모두 디아스포라<br>환영합니다.</h2>
            </div>
        </div>
    </section>
    <section class="all_wrap max_bg_wrap">
        <div class="container ">
            <div class="section">
                <div class="slick_wrap">
                    <div class="slick">
                        <p class="slick-img-wrap">
                            <img src="images/images/news1.jpg" alt="" />
                        </p>
                        <p class="list_txt txt-overflow">글로벌 부천 문학 : 펄벅과 디아스포라 문학</p>
                    </div>

                    <div class="slick">
                        <p class="slick-img-wrap">
                            <img src="images/images/news2.jpg" alt="" />
                        </p>
                        <p class="list_txt txt-overflow">글로벌 부천 문학 : 펄벅과 디아스포라 문학</p>
                    </div>

                    <div class="slick">
                        <p class="slick-img-wrap">
                            <img src="images/images/news3.jpg" alt="" />
                        </p>
                        <p class="list_txt txt-overflow">평생학습과 디지털 디아스포라</p>
                    </div>

                    <div class="slick">
                        <p class="slick-img-wrap">
                            <img src="images/images/news4.jpg" alt="" />
                        </p>
                        <p class="list_txt txt-overflow">부천시, 유네스코 문학창의도시 연례회의 참가</p>
                    </div>
                </div>
            </div>

            <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
            <script type="text/javascript">
                $('.slick_wrap').slick({
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    arrows: true,
                    dots: true,
                    responsive: [{
                            breakpoint: 768,
                            settings: {
                                slidesToShow: 2,
                                slidesToScroll: 1
                            }
                        },
                        {
                            breakpoint: 576,
                            settings: {
                                slidesToShow: 1,
                                slidesToScroll: 1
                            }
                        }
                    ]
                });
            </script>
		</div>
	</section>
    <section class="all_wrap ">
        <div class="container">
            <div class="section main_interview">
                <div class="row justify-content-between">
                    <div class="f-left video_left col-3  col-md-10">
                        <span class="main_icon"></span>
                        <h3 class="cont_tit">디아스포라 <br>NEWS</h3>
                    </div>

                    <div class="video_right col-9  col-md-12 cont_txt text-justify">
                        <iframe src="https://www.youtube.com/embed/LA0B03GtXvQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="all_wrap footer_top">
        <div class="footer_wrap_top">
            <ul>
                <li class="footer_link">
                    <a href="https://www.bucheon.go.kr/site/main/index148" target="_blank"><img src="images/images/footer_logo1_color.png" alt="판타지아 부천 바로가기"></a>
                </li>
                <li class="footer_link">
                    <a href="https://bcl.go.kr/site/main/unesco2" target="_blank"><img src="images/images/footer_logo2_color.png" alt="부천시 창의도시 바로가기"></a>
                </li>
                <li class="footer_link">
                    <a href="" target="_blank"><img src="images/images/footer_logo2.5_color.png" alt="BUCHEON STORY 창 바로가기"></a>
                </li>
                <li class="footer_link">
                    <a href="https://www.bibf.net/en/" target="_blank"><img src="images/images/footer_logo3_color.png" alt="23 BIAF 바로가기"></a>
                </li>
                <li class="footer_link">
                    <a href="http://www.komacon.kr/komacon/" target="_blank"><img src="images/images/footer_logo4_color.png" alt="한국만화영상진흥원 바로가기"></a>
                </li>
                <li class="footer_link">
                    <a href="http://www.bifan.kr" target="_blank"><img src="images/images/footer_logo5_color.png" alt="BIFAN 바로가기"></a>
                </li>
            </ul>
        </div>

        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
            <script type="text/javascript">
                $('.footer_wrap_top > ul').slick({
                    infinite: true,
                    autoplay: true,
                    autoplaySpeed: 2000,
                    pauseOnHover: true,
                    slidesToShow: 6,
                    slidesToScroll: 1,
                    arrows: false,
                    dots: false,
                    responsive: [{
                            breakpoint: 1024,
                            settings: {
                                slidesToShow: 3,
                                slidesToScroll: 1
                            }
                        },
                        {
                            breakpoint: 576,
                            settings: {
                                slidesToShow: 2,
                                slidesToScroll: 1
                            }
                        }
                    ]
                });
            </script>
    </section>



            <button type="button" class="scroll_top"><span class="top_arrow"></span><span class="skip">맨위로</span></button>

            <script type="text/javascript">
                $(function() {
                    $(window).scroll(function() {
                        if ($(this).scrollTop() > 100) {
                            $('.scroll_top').fadeIn();
                        } else {
                            $('.scroll_top').fadeOut();
                        }
                    });

                    $(".scroll_top").click(function() {
                        $('html, body').animate({
                            scrollTop: 0
                        }, 400);
                        return false;
                    });
                });
            </script>
        </div>

    </section>
	

    <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>

</html>