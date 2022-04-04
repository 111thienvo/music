<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<mt:layout_user title="Artist">
	<jsp:attribute name="content">
		              
           <!---Featured Artists Music--->
            <div class="ms_featured_slider padder_top20">
                <div class="ms_heading">
                    <h1>Featured Artists</h1>
                    <span class="veiw_all"><a href="#">view more</a></span>
                </div>
                <div class="ms_relative_inner">
                    <div class="ms_feature_slider swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath }/resources/user/images/featured/song1.jpg" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Ava Cornish</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath }/resources/user/images/featured/song2.jpg" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Frank Adle</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath }/resources/user/images/featured/song3.jpg" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Diane Hill</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath }/resources/user/images/featured/song4.jpg" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Fred Dofer</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath }/resources/user/images/featured/song5.jpg" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Bela Scott</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath }/resources/user/images/featured/song6.jpg" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Chandler Clark</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath }/resources/user/images/featured/song1.jpg" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Ava Cornish</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath }/resources/user/images/featured/song2.jpg" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Frank Adle</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath }/resources/user/images/featured/song3.jpg" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Diane Hill</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="ms_rcnt_box">
                                    <div class="ms_rcnt_box_img">
                                        <img src="${pageContext.request.contextPath }/resources/user/images/featured/song4.jpg" alt="">
                                        <div class="ms_main_overlay">
                                            <div class="ms_box_overlay"></div>
                                            <div class="ms_more_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                            </div>
                                            <ul class="more_option">
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                                <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                            </ul>
                                            <div class="ms_play_icon">
                                                <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ms_rcnt_box_text">
                                        <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Fred Dofer</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next1 slider_nav_next"></div>
                    <div class="swiper-button-prev1 slider_nav_prev"></div>
                </div>
            </div>
            <!----Top Artist Section---->
            <div class="ms_top_artist">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ms_heading">
                                <h1>Top Artists</h1>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/music/r_music1.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Claire Hudson</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist1.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Carl Brown</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist2.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Virginia Harris</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist3.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Max Glover</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist4.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Jennifer Kelly</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist5.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Harry Jackson</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist6.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Kevin Buckland</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist7.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Anna Ellison</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist8.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Kylie Greene</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/featured/song6.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Sarah Wilson</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/album/album4.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Jennifer Kelly</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/featured/song2.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Steven Walker</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist9.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Olivia Paige</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist10.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Nicole Miller</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist11.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Edward Clark</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist12.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Adam Glover</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/artist/artist13.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Leah Knox</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box marger_bottom30">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/featured/song4.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Charles Davidson</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/album/album2.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Vanessa Hunter</a></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <div class="ms_rcnt_box">
                                <div class="ms_rcnt_box_img">
                                    <img src="${pageContext.request.contextPath }/resources/user/images/album/album3.jpg" alt="" class="img-fluid">
                                    <div class="ms_main_overlay">
                                        <div class="ms_box_overlay"></div>
                                        <div class="ms_more_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/more.svg" alt="">
                                        </div>
                                        <ul class="more_option">
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_fav"></span></span>Add To Favourites</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_queue"></span></span>Add To Queue</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_dwn"></span></span>Download Now</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_playlst"></span></span>Add To Playlist</a></li>
                                            <li><a href="#"><span class="opt_icon"><span class="icon icon_share"></span></span>Share</a></li>
                                        </ul>
                                        <div class="ms_play_icon">
                                            <img src="${pageContext.request.contextPath }/resources/user/images/svg/play.svg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="ms_rcnt_box_text">
                                    <h3><a href="${pageContext.request.contextPath }/artist/artist_single">Sophie Hudson</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
           ${artists.totalArtists }
           
          
	 
	  
	    <table border="1" id="table">
		<thead>
			<tr>
				<th>Name</th>
				<th>Introduc</th>
				<th>)Photo</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${artists.listArtists }" var="artist">
				<tr>
					<td>${artist.name }</td>
					<td>${artist.introduction }</td>
					<td><img src="${pageContext.request.contextPath }/assets/data/photomusic/${artist.photo}"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
            <!----Main div close---->
	</jsp:attribute>

</mt:layout_user>