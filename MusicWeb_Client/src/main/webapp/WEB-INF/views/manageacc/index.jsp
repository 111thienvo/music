<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:layout_user title="ManageAcc">
	<jsp:attribute name="content">
		<div class="ms_account_wrapper">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<h2>Manage Account</h2>
							<div class="ms_heading">
								<h1>Subscription Plans</h1>
							</div>
						</div>
						<div class="col-lg-4">
						 <div class="ms_plan_box">
							<div class="ms_plan_header">
								<div class="ms_plan_img">
									<img src="${pageContext.request.contextPath }/resources/user/images/plan_icon1.png" alt="">
								</div>
							</div>
							<h3 class="plan_heading">Basic</h3>
							<div class="plan_price"><div class="plan_dolar"><sup>$</sup>15</div></div>
							<ul>
								<li>Monthly Downloads - 50 Songs</li>
								<li>Monthly Upload - 50 Minutes</li>
								<li>Plan Validity - 1 Month</li>
								<li>Streaming - Unlimited</li>
							</ul>
							<div class="ms_plan_btn">
							<a href="#" class="ms_btn">buy now</a>
							</div>
						</div>
						</div>
						<div class="col-lg-4">
						 <div class="ms_plan_box paln_active">
							<div class="ms_plan_header">
								<div class="ms_plan_img">
									<img src="${pageContext.request.contextPath }/resources/user/images/plan_icon2.png" alt="">
								</div>
							</div>
							<h3 class="plan_heading">Professional</h3>
							<div class="plan_price"><div class="plan_dolar"><sup>$</sup>50</div></div>
							<ul>
								<li>Monthly Downloads - 50 Songs</li>
								<li>Monthly Upload - 50 Minutes</li>
								<li>Plan Validity - 1 Month</li>
								<li>Streaming - Unlimited</li>
							</ul>
							<div class="ms_plan_btn">
								<a href="#" class="ms_btn">buy now</a>
							</div>
						</div>
						</div>
						<div class="col-lg-4">
						 <div class="ms_plan_box">
							<div class="ms_plan_header">
								<div class="ms_plan_img">
									<img src="${pageContext.request.contextPath }/resources/user/images/plan_icon3.png" alt="">
								</div>
							</div>
							<h3 class="plan_heading">Standard</h3>
							<div class="plan_price"><div class="plan_dolar"><sup>$</sup>80</div></div>
							<ul>
								<li>Monthly Downloads - 50 Songs</li>
								<li>Monthly Upload - 50 Minutes</li>
								<li>Plan Validity - 1 Month</li>
								<li>Streaming - Unlimited</li>
							</ul>
							<div class="ms_plan_btn">
							<a href="#" class="ms_btn">buy now</a>
							</div>
						</div>
						</div>						
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="ms_acc_overview">
								<div class="ms_heading">
									<h1>Account Overview</h1>
								</div>
								<div class="ms_acc_ovrview_list">
								<ul>
									<li>Your Subscribed Plan  <span>- Standard</span></li>
									<li>Amount Paid  		  <span>- $30</span></li>
									<li>Validity Expires In   <span>- 15 Days</span></li>
									<li>Downloads Remaining   <span>- 21 Tracks</span></li>
									<li>Upload Remaining      <span>- 45 Minutes</span></li>
								</ul>
								<a href="#" class="ms_btn">renew now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!----Footer Start---->
		<div class="ms_footer_wrapper">
			<div class="ms_footer_logo">
				<a href="index.html"><img src="${pageContext.request.contextPath }/resources/user/images/open_logo.png" alt=""></a>
			</div>
			<div class="ms_footer_inner">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer_box">
						<h1 class="footer_title">music template</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer_box footer_app">
						<h1 class="footer_title">Download our App</h1>
						<p>Go Mobile with our app.<br>
                        Listen to your favourite songs at just one click. Download Now !</p>
						<a href="#" class="foo_app_btn"><img src="${pageContext.request.contextPath }/resources/user/images/google_play.jpg" alt="" class="img-fluid"></a>
						<a href="#" class="foo_app_btn"><img src="${pageContext.request.contextPath }/resources/user/images/app_store.jpg" alt="" class="img-fluid"></a>
						<a href="#" class="foo_app_btn"><img src="${pageContext.request.contextPath }/resources/user/images/windows.jpg" alt="" class="img-fluid"></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer_box footer_subscribe">
						<h1 class="footer_title">subscribe</h1>
						<p>Subscribe to our newsletter and get latest updates and offers.</p>
						<form>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Enter Your Name">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Enter Your Email">
							</div>
							<div class="form-group">
								<a href="#" class="ms_btn">sign me up</a>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer_box footer_contacts">
						<h1 class="footer_title">contact us</h1>
						<ul class="foo_con_info">
							<li>
								<div class="foo_con_icon">
									<img src="${pageContext.request.contextPath }/resources/user/images/svg/phone.svg" alt="">
								</div>
								<div class="foo_con_data">
									<span class="con-title">Call us :</span>
									<span>(+1) 202-555-0176, (+1) 2025-5501</span>
								</div>
							</li>
							<li>
								<div class="foo_con_icon">
									<img src="${pageContext.request.contextPath }/resources/user/images/svg/message.svg" alt="">
								</div>
								<div class="foo_con_data">
									<span class="con-title">email us :</span>
									<span><a href="#">demo@mail.com </a>, <a href="#">dummy@mail.com</a></span>
								</div>
							</li>
							<li>
								<div class="foo_con_icon">
									<img src="${pageContext.request.contextPath }/resources/user/images/svg/add.svg" alt="">
								</div>
								<div class="foo_con_data">
									<span class="con-title">walk in :</span>
									<span>598 Old House Drive, London</span>
								</div>
							</li>							
						</ul>
						<div class="foo_sharing">
							<div class="share_title">follow us :</div>
							<ul>
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				</div>
				</div>				
				<!----Copyright---->
				<div class="col-lg-12">
					<div class="ms_copyright">
						<div class="footer_border"></div>
						<p>Copyright &copy; 2018 <a href="#">The Miraculous Music Template</a>. All Rights Reserved.</p>
					</div>
				</div>	
		</div>
		<!----Audio Player Section---->
        <div class="ms_player_wrapper">
			<div class="ms_player_close">
				<i class="fa fa-angle-up" aria-hidden="true"></i>
			</div>
            <div class="player_mid">
                <div class="audio-player">
                    <div id="jquery_jplayer_1" class="jp-jplayer"></div>
                    <div id="jp_container_1" class="jp-audio" role="application" aria-label="media player">
                        <div class="player_left">
                            <div class="ms_play_song">
                                <div class="play_song_name">
                                    <a href="javascript:void(0);" id="playlist-text">
                                        <div class="jp-now-playing flex-item">
                                            <div class="jp-track-name"></div>
                                            <div class="jp-artist-name"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="play_song_options">
                                <ul>
                                    <li><a href="#"><span class="song_optn_icon"><i class="ms_icon icon_download"></i></span>download now</a></li>
                                    <li><a href="#"><span class="song_optn_icon"><i class="ms_icon icon_fav"></i></span>Add To Favourites</a></li>
                                    <li><a href="#"><span class="song_optn_icon"><i class="ms_icon icon_playlist"></i></span>Add To Playlist</a></li>
                                    <li><a href="#"><span class="song_optn_icon"><i class="ms_icon icon_share"></i></span>Share</a></li>
                                </ul>
                            </div>
                            <span class="play-left-arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                        </div>
                        <!----Right Queue---->
                        <div class="jp_queue_wrapper">
                            <span class="que_text" id="myPlaylistQueue"><i class="fa fa-angle-up" aria-hidden="true"></i> queue</span>
                            <div id="playlist-wrap" class="jp-playlist">
								<div class="jp_queue_cls"><i class="fa fa-times" aria-hidden="true"></i></div>
                                <h2>queue</h2>
								<div class="jp_queue_list_inner">
									<ul>
										<li>&nbsp;</li>
									</ul>
								</div>
                                <div class="jp_queue_btn">
                                    <a href="javascript:;" class="ms_clear" data-toggle="modal" data-target="#clear_modal">clear</a>
                                    <a href="clear_modal" class="ms_save" data-toggle="modal" data-target="#save_modal">save</a>
                                </div>
                            </div>
                        </div>
                        <div class="jp-type-playlist">
                            <div class="jp-gui jp-interface flex-wrap">
                                <div class="jp-controls flex-item">
                                    <button class="jp-previous" tabindex="0">
					<i class="ms_play_control"></i>
				</button>
                                    <button class="jp-play" tabindex="0">
					<i class="ms_play_control"></i>
				</button>
                                    <button class="jp-next" tabindex="0">
					<i class="ms_play_control"></i>
				</button>
                                </div>
                                <div class="jp-progress-container flex-item">
                                    <div class="jp-time-holder">
                                        <span class="jp-current-time" role="timer" aria-label="time">&nbsp;</span>
                                        <span class="jp-duration" role="timer" aria-label="duration">&nbsp;</span>
                                    </div>
                                    <div class="jp-progress">
                                        <div class="jp-seek-bar">
                                            <div class="jp-play-bar">
                                                <div class="bullet">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="jp-volume-controls flex-item">
                                    <div class="widget knob-container">
                                        <div class="knob-wrapper-outer">
                                            <div class="knob-wrapper">
                                                <div class="knob-mask">
                                                    <div class="knob d3"><span></span></div>
                                                    <div class="handle"></div>
                                                    <div class="round">
                                                        <img src="${pageContext.request.contextPath }/resources/user/images/svg/volume.svg" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- <input></input> -->
                                        </div>
                                    </div>
                                </div>
                                <div class="jp-toggles flex-item">
                                    <button class="jp-shuffle" tabindex="0" title="Shuffle">
				<i class="ms_play_control"></i></button>
				<button class="jp-repeat" tabindex="0" title="Repeat"><i class="ms_play_control"></i></button>
                                </div>
                                <div class="jp_quality_optn custom_select">
                                    <select>
						<option>quality</option>
						<option value="1">HD</option>
						<option value="2">High</option>
						<option value="3">medium</option>
						<option value="4">low</option>
					</select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	</jsp:attribute>
</mt:layout_user>