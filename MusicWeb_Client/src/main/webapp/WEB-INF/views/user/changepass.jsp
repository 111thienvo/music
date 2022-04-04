<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:layout_user title="Profile">
	<jsp:attribute name="content">
	<form action="${pageContext.request.contextPath }/user/changepass"
			method="post">
		<div class="ms_profile_wrapper">
                <h1>Change Password</h1>
                <div class="ms_profile_box">
                    <div class="ms_pro_form">                   
                        <div class="form-group">
                            <label>Old Pass *</label>
                            <input type="password" name="old_pass"
								class="form-control" />
                        </div>
                        <div class="form-group">
                            <label>New Pass *</label>
                            <input type="password" name="new_pass"
								class="form-control" />
                        </div>
                              <div class="form-group">
                            <label>Confirm Pass *</label>
                            <input type="password" name="confirm_pass"
								class="form-control" />
                        </div>
                         </div>
                              
                            <label>${msg }</label>
                            
                        </div>
                        
                        <div
							class="pro-form-btn text-center marger_top15">
 							<input type="submit" value="Change" class="ms_btn">
                         
                        </div>
                    </div>
                
            
          </form>
	</jsp:attribute>
</mt:layout_user>