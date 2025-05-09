<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<div
	style="width: 100vw; position: relative; left: 50%; margin-left: -50vw; background: #2c2c2c;">
	<footer class="footer-style-1">
		<div class="container"
			style="max-width: 1200px; margin: 0 auto; padding: 0 15px;">
			<div class="row">
				<div class="footer-style-1-inner">
					<div class="widget-footer widget-text col-first col-small">
						<a href="#"> <img
							src="${pageContext.request.contextPath}/images/logo.png"
							alt="Logo Organic" style="width: 230px;" />
						</a>
						<div class="widget-link">

							<ul>
								<li><span>123 XXX Street Toronto, ON Canada</span></li>
								<li><a href="tel:0123456789">(+1) 416 XXX-XXXX</a></li>
								<li><a href="mailto: contact@site.com">contact@savorywok.com
								</a></li>
							</ul>

						</div>
					</div>
					<div class="widget-footer widget-link col-second col-medium">
						<div class="list-link">
							<h4 class="h4 heading">Quick Links</h4>
							<ul>
								<li><a href="${ pageContext.request.contextPath}/index">Home</a>
									&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="active"
									href="${ pageContext.request.contextPath}/health/list/1">Recipes</a></li>
								<li><a
									href="${ pageContext.request.contextPath}/specialshow">Themes</a>
									&nbsp; &nbsp;&nbsp;&nbsp;<a
									href="${ pageContext.request.contextPath}/myHealth">Healthy</a></li>
								<li><a href="${ pageContext.request.contextPath}/topicshow">Moments</a>
									&nbsp; <a href="${ pageContext.request.contextPath}/location">Explore</a></li>

							</ul>
						</div>
						<div class="list-link">
							<h4 class="h4 heading">About Us</h4>
							<ul>

								<li><a href="#">FAQ</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Blog</a></li>
							</ul>
						</div>
						<div class="list-link">
							<h4 class="h4 heading">Account Access</h4>
							<ul>
								<li><a
									href="${ pageContext.request.contextPath }/userLogin">Sign
										In</a></li>
								<li><a
									href="${ pageContext.request.contextPath }/userRegister">Sign Up</a>
								</li>

								<c:if test="${sessionScope.user != null}">
									<li class="nav navbar-nav"><a
										href="${ pageContext.request.contextPath }/center/get"><c:out
												value="${user.username }" /></a></li>
									
									<li class="nav navbar-nav"><a
										href="${ pageContext.request.contextPath }/quit">Sign Out</a></li>
								</c:if>
							</ul>
						</div>
					</div>
					<div
						class="widget-footer widget-newsletter-footer col-last col-small">

						<h4 class="h4 heading">Get the Latest News</h4>
						<form class="organic-form form-inline btn-add-on circle border">
							<div class="form-group">
								<input class="form-control pill transparent"
									placeholder="Your Email..." type="email" />
								<button class="btn btn-brand circle" type="submit">
									 <i class="far fa-envelope"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right style-1">
			<div class="container">
				<div class="row">
					<div class="copy-right-inner">
						<p>Created by Xiang Chen. Copyright © 2025 Xiang Chen. All
							rights reserved.</p>
						<div class="widget widget-footer widget-footer-creadit-card">
							<ul class="social-icons">
								<!-- Facebook -->
								<li><a href="#" target="_blank" class="social-link"> <i
										class="fab fa-facebook-f"></i>
								</a></li>
								<!-- Instagram -->
								<li><a href="#" target="_blank" class="social-link"> <i
										class="fab fa-instagram"></i>
								</a></li>
								<!-- TikTok -->
								<li><a href="#" target="_blank" class="social-link"> <i
										class="fab fa-tiktok"></i>
								</a></li>
								<!-- YouTube -->
								<li><a href="#" target="_blank" class="social-link"> <i
										class="fab fa-youtube"></i>
								</a></li>
								
								<li><a href="#" target="_blank" class="social-link"> <i
										class="fab fa-flipboard"></i>
								</a></li>
								
								<li><a href="#" target="_blank" class="social-link"> <i
										class="fab fa-pinterest"></i>
								</a></li>
							</ul>
						</div>


					</div>
				</div>
			</div>
		</div>
	</footer>
</div>

<style>
.social-icons {
    display: flex;
    gap: 25px;
    list-style: none;
    padding: 0;
    margin: 0;
}

.social-link {
    color: #666; 
    font-size: 24px;
    transition: all 0.3s ease;
}

.social-link:hover {
    color: #333; 
    transform: translateY(-2px);
}
.btn-brand i.far.fa-envelope {
    color: white !important;
    font-size: 18px;
    display: inline-block !important; 
    position: relative;
    top: 2px;  
}
.btn-brand.circle {
    display: flex !important;
    align-items: center;
    justify-content: center;
    width: 40px;          
    height: 40px;          
    padding: 0 !important;
}
@import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css');



</style>