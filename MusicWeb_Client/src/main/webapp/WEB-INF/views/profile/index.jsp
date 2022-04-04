<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:layout_user title="Profile">
	<jsp:attribute name="content">
		<div class="ms_profile_wrapper">
                <h1>Edit Profile</h1>
                <div class="ms_profile_box">
                    <div class="ms_pro_img">
                        <img src="${pageContext.request.contextPath }/resources/user/images/pro_img.jpg" alt="" class="img-fluid">
                        <div class="pro_img_overlay">
                            <i class="fa_icon edit_icon"></i>
                        </div>
                    </div>
                    <div class="ms_pro_form">
                        <div class="form-group">
                            <label>Your Name *</label>
                            <input type="text" placeholder="Bella Scott" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Your Email *</label>
                            <input type="text" placeholder="bella.scott@dummymail.com" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Your Password *</label>
                            <input type="password" placeholder="******" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Confirm Password *</label>
                            <input type="password" placeholder="******" class="form-control">
                        </div>
                        <div class="pro-form-btn text-center marger_top15">
                            <a href="#" class="ms_btn">save</a>
                            <a href="#" class="ms_btn">cancel</a>
                        </div>
                    </div>
                </div>
            </div>
	</jsp:attribute>
</mt:layout_user>