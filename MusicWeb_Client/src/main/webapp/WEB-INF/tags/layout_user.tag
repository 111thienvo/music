<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ attribute name="title" required="true" rtexprvalue="true"
	type="java.lang.String"%>
<%@ taglib prefix="mt" uri="http://mytags.vn"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ attribute name="content" fragment="true"%>


<!DOCTYPE html>
<!-- 
Template Name: Miraculous - Online Music Store Html Template
Version: 1.0.0
Author: Kamleshyadav
Website: 
Purchase: 
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- Begin Head -->

<head>
<title>Online Music Store</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="description" content="Music">
<meta name="keywords" content="">
<meta name="author" content="kamleshyadav">
<meta name="MobileOptimized" content="320">

//new
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/test4/css/plugins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/test4/css/main.css">
    <script src="${pageContext.request.contextPath }/resources/user/test4/js/jquery-3.5.1.min.js"></script>

 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/testjs/style.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/testjs/pagination/css_paging.css">
<!--Start Style -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/user/css/fonts.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/user/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/user/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/user/js/plugins/swiper/css/swiper.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/user/js/plugins/nice_select/nice-select.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/user/js/plugins/player/volume.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/user/js/plugins/scroll/jquery.mCustomScrollbar.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/user/css/style.css">
<!-- Favicon Link -->
<link rel="shortcut icon" type="image/png"
	href="${pageContext.request.contextPath }/resources/user/images/favicon.png">
</head>

<body>
	<!----Loader Start---->
	<div class="ms_loader">
		<div class="wrap">
			<img
				src="${pageContext.request.contextPath }/resources/user/images/loader.gif"
				alt="">
		</div>
	</div>
	<!----Loader---->
	<!-- 	<div class="ms_inner_loader">
		<div class="ms_loader">
			<div class="ms_bars">
				<div class="bar"></div>				
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
				<div class="bar"></div>
			</div>
		</div>
	</div> -->
	<!----Main Wrapper Start---->
	<div class="ms_main_wrapper">
		<!---Side Menu Start--->

		<mt:side_menu_start />

		<!---Main Content Start--->
		<div class="ms_content_wrapper padder_top80">
			<!---Header--->
			<mt:header />
			<jsp:invoke fragment="content"></jsp:invoke>
		</div>
		<!----Footer---->
		<mt:footer />
		<!----Audio Player Section---->
		<mt:audio_player_section />
	</div>
	<!----Register Modal Start---->
	
	<!----Language Selection Modal---->
	<div class="ms_lang_popup">
		<div id="lang_modal" class="modal  centered-modal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal">
						<i class="fa_icon form_close"></i>
					</button>
					<div class="modal-body">
						<h1>language selection</h1>
						<p>Please select the language(s) of the music you listen to.</p>
						<ul class="lang_list">
							<li><label class="lang_check_label"> English <input
									type="checkbox" name="check"> <span class="label-text"></span>
							</label></li>
							<li><label class="lang_check_label"> hindi <input
									type="checkbox" name="check"> <span class="label-text"></span>
							</label></li>
							<li><label class="lang_check_label"> punjabi <input
									type="checkbox" name="check"> <span class="label-text"></span>
							</label></li>
							<li><label class="lang_check_label"> French <input
									type="checkbox" name="check"> <span class="label-text"></span>
							</label></li>
							<li><label class="lang_check_label"> German <input
									type="checkbox" name="check"> <span class="label-text"></span>
							</label></li>
							<li><label class="lang_check_label"> Spanish <input
									type="checkbox" name="check"> <span class="label-text"></span>
							</label></li>
							<li><label class="lang_check_label"> Chinese <input
									type="checkbox" name="check"> <span class="label-text"></span>
							</label></li>
							<li><label class="lang_check_label"> Japanese <input
									type="checkbox" name="check"> <span class="label-text"></span>
							</label></li>
							<li><label class="lang_check_label"> Arabic <input
									type="checkbox" name="check"> <span class="label-text"></span>
							</label></li>
							<li><label class="lang_check_label"> Italian <input
									type="checkbox" name="check"> <span class="label-text"></span>
							</label></li>
						</ul>
						<div class="ms_lang_btn">
							<a href="#" class="ms_btn">apply</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!----Queue Clear Model ---->
	<div class="ms_clear_modal">
		<div id="clear_modal" class="modal  centered-modal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal">
						<i class="fa_icon form_close"></i>
					</button>
					<div class="modal-body">
						<h1>Are you sure you want to clear your queue?</h1>
						<div class="clr_modal_btn">
							<a href="#">clear all</a> <a href="#">cancel</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!----Queue Save Modal---->
	<div class="ms_save_modal">
		<div id="save_modal" class="modal  centered-modal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal">
						<i class="fa_icon form_close"></i>
					</button>
					<div class="modal-body">
						<h1>Log in to start sharing your music!</h1>
						<div class="save_modal_btn">
							<a href="#"><i class="fa fa-google-plus-square"
								aria-hidden="true"></i> continue with google </a> <a href="#"><i
								class="fa fa-facebook-square" aria-hidden="true"></i> continue
								with facebook</a>
						</div>
						<div class="ms_save_email">
							<h3>or use your email</h3>
							<div class="save_input_group">
								<input type="text" placeholder="Enter Your Name"
									class="form-control">
							</div>
							<div class="save_input_group">
								<input type="password" placeholder="Enter Password"
									class="form-control">
							</div>
							<button class="save_btn">Log in</button>
						</div>
						<div class="ms_dnt_have">
							<span>Dont't have an account ?</span> <a href="javascript:;"
								class="hideCurrentModel" data-toggle="modal"
								data-target="#myModal">Register Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Main js file Style-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/user/js/jquery.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/user/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/user/js/plugins/swiper/js/swiper.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/user/js/plugins/player/jplayer.playlist.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/user/js/plugins/player/jquery.jplayer.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/user/js/plugins/player/audio-player.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/user/js/plugins/player/volume.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/user/js/plugins/nice_select/jquery.nice-select.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/user/js/plugins/scroll/jquery.mCustomScrollbar.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/user/js/custom.js"></script>
		
	<!-- All JS Files -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath }/resources/user/testjs/js/jquery.min.js"></script>
<!-- Popper -->
<script src="${pageContext.request.contextPath }/resources/user/testjs/js/popper.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath }/resources/user/testjs/js/bootstrap.min.js"></script>
<!-- All Plugins -->
<script src="${pageContext.request.contextPath }/resources/user/testjs/js/razo.bundle.js"></script>
<!-- Active -->
<script src="${pageContext.request.contextPath }/resources/user/testjs/js/default-assets/active.js"></script>	



 <script src="${pageContext.request.contextPath }/resources/user/test4/js/plugins.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.0/gsap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/user/test4/js/app.js"></script>
</body>

</html>
