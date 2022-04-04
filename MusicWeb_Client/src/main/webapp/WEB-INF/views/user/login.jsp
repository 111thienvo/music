<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:layout_user title="Add Playlist">
	<jsp:attribute name="content">
	<div class="ms_register_popup">
		   <!----Login Popup Start---->
		   
		   
		   
		<form action="${pageContext.request.contextPath }/user/login"
			 method="post">
			<!-- <div id="myModal1" class="modal  centered-modal" role="dialog">
				<div class="modal-dialog login_dialog"> -->
					<!-- Modal content-->
					<div class="modal-content">
						<button type="button" class="close" data-dismiss="modal">
							<i class="fa_icon form_close"></i>
						</button>
						<div class="modal-body">
							<div class="ms_register_img">
								<img
									src="${pageContext.request.contextPath }/resources/user/images/register_img.png"
									alt="" class="img-fluid" />
							</div>
							<div class="ms_register_form">
								<h2>login / Sign in</h2>

								<div class="form-group">
									<input name="username" type="text"
										placeholder="Enter Your Username" class="form-control" />
									
									<span class="form_icon"> <i
										class="fa_icon form-envelope" aria-hidden="true"></i>

									</span>
								</div>
								<div class="form-group">
									<input name="password" type="password"
										placeholder="Enter Password" class="form-control" />
									
									<span class="form_icon"> <i class="fa_icon form-lock"
										aria-hidden="true"></i>

									</span>
								</div>
								<div class="remember_checkbox">
									 <h2><label> ${msg }</label></h2>
								</div>
								<%-- <div class="remember_checkbox">
									<label>Keep me signed in <input type="checkbox">
										<span class="checkmark"></span>
									</label>
								</div> --%>
								<input type="submit" class="ms_btn" value="login now">
								<div class="popup_forgot">
									<a href="${pageContext.request.contextPath }/user/forgotpassword">Forgot Password ?</a>
								</div>
								<p>
									Don't Have An Account? <a href="${pageContext.request.contextPath }/user/register" 
										class="ms_modal1 hideCurrentModel">register here</a>
								</p>
							</div>
						</div>
					</div>
<!-- 				</div>
			</div> -->
		</form>
		</div>
	</jsp:attribute>

</mt:layout_user>