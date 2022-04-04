<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!---Header--->
<div class="ms_header">
	<div class="ms_top_left">
		<div class="ms_top_search">
			<input type="text" class="form-control"
				placeholder="Search Music Here.."> <span class="search_icon">
				<img
				src="${pageContext.request.contextPath }/resources/user/images/svg/search.svg"
				alt="">
			</span>
		</div>
		<div class="ms_top_trend">
			<span><a href="#" class="ms_color">Trending Songs :</a></span> <span
				class="top_marquee"><a href="#">Dream your moments, Until
					I Met You, Gimme Some Courage, Dark Alley (+8 More) </a></span>
		</div>
	</div>
	<div class="ms_top_right">
		<div class="ms_top_lang">
			<span data-toggle="modal" data-target="#lang_modal">languages 
				<img
				src="${pageContext.request.contextPath }/resources/user/images/svg/lang.svg"
				alt="">
			</span>
			<c:if test="${sessionScope.username != null}">
				  <a href="${pageContext.request.contextPath }/user/profile">  <span> Hello ${sessionScope.username } |</span> </a> 
				    <a href="${pageContext.request.contextPath }/user/logout">  Lougout </a>
					
			</c:if>
			
		</div>
		<c:if test="${sessionScope.username == null}">
			<div class="ms_top_btn">
				<!-- <a href="javascript:;" class="ms_btn reg_btn" data-toggle="modal"
					data-target="#myModal"><span>register</span></a> <a
					href="javascript:;" class="ms_btn login_btn" data-toggle="modal"
					data-target="#myModal1"><span>login</span></a> -->
					<a href="${pageContext.request.contextPath }/user/register" class="ms_btn reg_btn" ><span>register</span></a> <a
					href="${pageContext.request.contextPath }/user/login" class="ms_btn login_btn" ><span>login</span></a>
			</div>
		</c:if>
		
	</div>
</div>
