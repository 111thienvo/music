<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:layout_user title="Add Playlist">
	<jsp:attribute name="content">
	<div class="ms_register_popup">
		   <!----Register Start---->
		<s:form action="${pageContext.request.contextPath }/user/register"
			modelAttribute="user" method="post">
			<!-- <div id="myModal" class="modal  centered-modal" role="dialog">
				<div class="modal-dialog register_dialog"> -->
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
								<h2>Register / Sign Up</h2>
								<div class="form-group">
									<s:input path="username" type="text" placeholder="Enter UserName"
										class="form-control"/>
									<s:errors path="username" cssStyle="color : red;"></s:errors>
									<span class="form_icon"> <i class="fa_icon form-user"
										aria-hidden="true"></i>
									</span>
								</div>
								<div class="form-group">
									<s:input path="email" type="text" placeholder="Enter Your Email"
										class="form-control"/>
									<s:errors path="email" cssStyle="color : red;"></s:errors>
									<span class="form_icon"> <i
										class="fa_icon form-envelope" aria-hidden="true"></i>
									</span>
								</div>
								<div class="form-group">
									<s:input path="password" type="password" placeholder="Enter Password"
										class="form-control"/>
									<s:errors path="password" cssStyle="color : red;"></s:errors>
									<span class="form_icon"> <i class="fa_icon form-lock"
										aria-hidden="true"></i>
									</span>
								</div>
								<%-- <div class="form-group">
								<input type="password" placeholder="Confirm Password"
									class="form-control"> 
									<s:errors path="confirm_password"  cssStyle="color : red;"></s:errors>
									<span class="form_icon"> <i
									class=" fa_icon form-lock" aria-hidden="true"></i>
								</span>
							</div> --%>
								<input type="submit" class="ms_btn" value="register now">
								<div class="remember_checkbox">
									 <h2><label> ${msg }</label></h2>
								</div>
								<p>
									Already Have An Account? <a href="${pageContext.request.contextPath }/user/login"
										 class="ms_modal hideCurrentModel">login
										here</a>
								</p>
							</div>
						</div>
					</div>
<!-- 				</div>

			</div> -->
		</s:form>
		</div>
	</jsp:attribute>

</mt:layout_user>