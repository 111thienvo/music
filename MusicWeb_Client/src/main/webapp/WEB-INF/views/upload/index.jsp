<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<mt:layout_user title="Upload">
	<jsp:attribute name="content">	
		<div class="ms_upload_wrapper marger_top60">
                <div class="ms_upload_box">
                    <h2>Upload & Share Your Music With The World</h2>
                    <img
					src="${pageContext.request.contextPath }/resources/user/images/svg/upload.svg"
					alt="">
                    <div class="ms_upload_btn">
                           
                                                               
                        <form method="post"
						enctype="multipart/form-data"
						action="${pageContext.request.contextPath }/user/upload/singleupload">                   
                    	<div class="form-group">
                            <label>Save Files</label>
                            <input type="file" name="file"
								class="ms_btn" />
                        </div>
                        <input type="submit" value="Upload"
							class="ms_btn" />
                        </form>
                    </div>
                    <span> or </span>
                    <p>Drag And Drop Music Files</p>
                </div>
                <div class=" marger_top60">
                    <div class="ms_upload_box">                    
                     <s:form method="post"
						action="${pageContext.request.contextPath}/upload/uploadsong"
						modelAttribute="song" enctype="multipart/form-data">
                        <div class="ms_heading">
                            <h1>Track Information</h1>
                        </div>   
                                      
                        	<div class="form-group">
                                <label>Track Name *</label>
                                <s:input
								placeholder="Dream Your Moments" class="form-control"
								path="name" multiple="true" />
                            </div>    
                                               
                            
                               <div class="form-group">
                                <label>Introduction</label>
                                <s:input placeholder="Intro your Music"
								class="form-control" path="introduction" />
                            </div>  
                            
                             <div class="form-group">
                                <label>Lyric</label>
                                <s:input placeholder="Lyric"
								class="form-control" path="lyric" />
                            </div>  
                            
                             
                               <div class="form-group">
                                <label>Name Artist</label>
                                  <s:select class="form-control"
								items="${artists}" path="artistId" itemValue="id"
								itemLabel="name" />
                             	  
                          
                             </div> 
                               <div class="form-group">
                                <label>Category</label>
                                  <s:select class="form-control"
								items="${categories}" path="categoryId" itemValue="id"
								itemLabel="name" />
                             	  
                            </div> 
                               
                         <div class="form-group">
                                <label>Photo</label>
                              <%--   <s:input placeholder="Photo"
								class="form-control" path="photo" readonly="true" /> --%>
                             	  <input type="file" name="filephoto" class="form-control" />
                            </div>
                            
                          
                            <div class="form-group">
                                <label>URL</label>
                                 <%--  <s:input placeholder="MP3"
								class="form-control" path="url" readonly="true" /> --%>
                             	  <input type="file" name="fileurl" class="form-control" />
                           </div>
                                                                                         
                            <div
							class="pro-form-btn text-center marger_top15">
                                <div class="ms_upload_btn">                                  
                                    <input type="submit"
									value="Upload Now" class="ms_btn">                                    
                                </div>
                            </div>
                             </s:form>            
                    	</div>                      	                                   
                </div>              
            </div>
            <table border="1" id="table">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Introduc</th>
				<th>Photo</th>
				<th>Lyric</th>
				<th>URL</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${songs}" var="song">
				<tr>
					<td>${song.id }</td>
					<td>${song.name }</td>
					<td>${song.introduction }</td>					
					<td><img src="${pageContext.request.contextPath }/assets/data/photomusic/${song.photo}" height="100" width="100"></td>					
					<td>${song.lyric }</td>
					<td>${song.url }</td>
					<td>						
						 <a onclick="return confirm('Are you sure?');"
						href="${pageContext.request.contextPath }/upload/deletesong?id=${song.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</jsp:attribute>
</mt:layout_user>