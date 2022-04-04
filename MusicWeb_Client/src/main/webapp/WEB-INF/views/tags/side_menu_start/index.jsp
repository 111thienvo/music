<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!---Side Menu Start--->
        <div class="ms_sidemenu_wrapper">
            <div class="ms_nav_close">
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </div>
            <div class="ms_sidemenu_inner">
                <div class="ms_logo_inner">
                    <div class="ms_logo">
                        <a href="${pageContext.request.contextPath }/home"><img src="${pageContext.request.contextPath }/resources/user/images/logo.png" alt="" class="img-fluid"/></a>
                    </div>
                    <div class="ms_logo_open">
                        <a href="${pageContext.request.contextPath }/home"><img src="${pageContext.request.contextPath }/resources/user/images/open_logo.png" alt="" class="img-fluid"/></a>
                    </div>
                </div>
                <div class="ms_nav_wrapper">
                    <ul>
                        <li><a href="${pageContext.request.contextPath }/home" class="active" title="Discover">
						<span class="nav_icon">
							<span class="icon icon_discover"></span>
						</span>
						<span class="nav_text">
							discover
						</span>
						</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/album" title="Albums">
						<span class="nav_icon">
							<span class="icon icon_albums"></span>
						</span>
						<span class="nav_text">
							albums
						</span>
						</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/artist" title="Artists">
						<span class="nav_icon">
							<span class="icon icon_artists"></span>
						</span>
						<span class="nav_text">
							artists
						</span>
						</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/genres" title="Genres">
						<span class="nav_icon">
							<span class="icon icon_genres"></span>
						</span>
						<span class="nav_text">
							genres
						</span>
						</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/top_track" title="Top Tracks">
						<span class="nav_icon">
							<span class="icon icon_tracks"></span>
						</span>
						<span class="nav_text">
							top tracks
						</span>
						</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/free_music" title="Free Music">
						<span class="nav_icon">
							<span class="icon icon_music"></span>
						</span>
						<span class="nav_text">
							free music
						</span>
						</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/stations" title="Stations">
						<span class="nav_icon">
							<span class="icon icon_station"></span>
						</span>
						<span class="nav_text">
							stations
						</span>
						</a>
                        </li>
                    </ul>
                    <ul class="nav_downloads">
                        <li><a href="${pageContext.request.contextPath }/user/download" title="Downloads">
						<span class="nav_icon">
							<span class="icon icon_download"></span>
						</span>
						<span class="nav_text">
							downloads
						</span>
						</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/purchase" title="Purchased">
						<span class="nav_icon">
							<span class="icon icon_purchased"></span>
						</span>
						<span class="nav_text">
							purchased
						</span>
						</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/user/favourite" title="Favourites">
						<span class="nav_icon">
							<span class="icon icon_favourite"></span>
						</span>
						<span class="nav_text">
							favourites
						</span>
						</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/history" title="History">
						<span class="nav_icon">
							<span class="icon icon_history"></span>
						</span>
						<span class="nav_text">
							history
						</span>
						</a>
                        </li>
                    </ul>
                    <ul class="nav_playlist">
                        <li><a href="${pageContext.request.contextPath }/user/feature_playlist" title="Featured Playlist">
						<span class="nav_icon">
							<span class="icon icon_fe_playlist"></span>
						</span>
						<span class="nav_text">
							featured playlist
						</span>
						</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/user/add_playlist" title="Create Playlist">
						<span class="nav_icon">
							<span class="icon icon_c_playlist"></span>
						</span>
						<span class="nav_text">
							create playlist
						</span>
						</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>