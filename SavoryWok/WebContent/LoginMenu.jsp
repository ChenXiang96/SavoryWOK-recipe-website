<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.menu>li>a {
	color: #000;
	font-size: 18px;
}

.lnr {
	font-family: 'Linearicons-Free';
}

.container {
	margin-right: 200px;
	/* margin-left: auto; */
	/* padding-left: 15px; */
	padding-right: 15px;
}

.header-1-inner {
	-ms-flex-align: center;
	align-items: center;
	display: -ms-flexbox;
	display: flex;
	width: 1300px;
}

.menu .hidden-xs {
	display: flex;
	justify-content: center;
	margin: 0 auto;
	padding: 0;
	width: auto;
}

.nav5 {
	margin-right: 200px;
	width: 800px;
	position: fixed;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
	width: 100%;
	display: flex;
	justify-content: center;
}

.menu>li>a {
	color: #F7D358;
}

.menu, .menu>li>ul, .menu>li>ul ul {
	list-style: none;
	padding: 0;
	margin-left: 0;
	width: auto;
	margin-left: 50px;
}
</style>
<header class="header-style-1">
	<div class="container">
		<div class="row">
			<center>
				<div class="header-1-inner">

					<center>
						<nav class="nav5">
							<ul class="menu hidden-xs">
								<li><a href="${ pageContext.request.contextPath}/index">Home</a>

								</li>
								<li
									class="${sessionScope.activeMenu eq 'recipe' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/health/list/1">Recipes</a></li>

								<li
									class="${sessionScope.activeMenu eq 'Themes' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/specialshow">Themes</a></li>

								<li
									class="${sessionScope.activeMenu eq 'health' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/myHealth">Healthy</a></li>
								<li
									class="${sessionScope.activeMenu eq 'Moments' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/topicshow">Moments</a></li>
								<li
									class="${sessionScope.activeMenu eq 'Explore' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/Explore.jsp">Explore</a></li>

								<li><s:if test="#session.existuser == null">


										<li><a
											href="${ pageContext.request.contextPath }/userRegister">Sign
												Up</a></li>
										<li><a
											href="${ pageContext.request.contextPath }/AdminHome.jsp">Admin</a></li>
									</s:if></li>
								<li><s:else>
										<!--   <li>
      	<a href='${pageContext.request.contextPath }/user_edit.action?uid=<s:property value="#session.existuser.uid"/>'>
       
      	     <s:property value="#session.existuser.name"/>
      	</a>
      	--></li>



								</s:else>
								</li>

							</ul>
						</nav>
					</center>

				</div>
			</center>
		</div>
	</div>
</header>