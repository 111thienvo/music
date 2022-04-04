<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#date" ).datepicker();
  } );
  
  </script>
<mt:layout_user title="Profile">
	<jsp:attribute name="content">
	
		<div class="ms_profile_wrapper">
                <h1>Edit Profile</h1>
                <div class="ms_profile_box">
                    <div class="ms_pro_img">
                        <img
							src="${pageContext.request.contextPath }/assets/data/img/${user.photos }"
							alt="" class="img-fluid">
							
                        <div class="pro_img_overlay">
                            <i class="fa_icon edit_icon"></i>
                        </div>
                        
                    </div>
                    <div class="ms_pro_form">
                    <form method="post" enctype="multipart/form-data"
							action="${pageContext.request.contextPath }/user/changeImage">
                    
                    	<div class="form-group">
                            <label>Change Photo *</label>
                            <input type="file" name="file"
									class="form-control" />
                        </div>
                        <input type="submit"
								value="Change" class="ms_btn">
                        </form>
                        <div class="form-group">
                            <label>UserName *</label>
                            <input type="text"  value="${user.username }"
								class="form-control" readonly="readonly" />
                        </div>
                        <div class="form-group">
                            <label>Your Email *</label>
                            <input type="text" value="${user.email }"
								class="form-control" readonly="readonly" />
                        </div>
                              <div class="form-group">
                            <label>Created time *</label>
                            <input id="date" type="text" value="${user.createdTime }"
								class="form-control" readonly="readonly" />
                        </div>
                        
                        
                        <div
							class="pro-form-btn text-center marger_top15">

                             <a class="ms_btn"
								href="${pageContext.request.contextPath }/user/changepass">Change Password</a>
                            <input type="hidden" id="id" name="id" value="${user.id }">
                        </div>
                    </div>
                </div>
            </div>
          
	</jsp:attribute>
</mt:layout_user>