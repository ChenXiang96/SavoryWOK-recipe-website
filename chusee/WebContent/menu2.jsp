<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.menu > li > a{
 color:#000;
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
    width:1300px;
}
</style>
      <header class="header-style-1">
        <div class="container">
          <div class="row">
            <center>
            <div class="header-1-inner">
              <a class="brand-logo animsition-link" href="index.html">
                <img class="img-responsive" src="${pageContext.request.contextPath}/picture/logo.png" alt="" />
              </a>
              <nav>
                <ul class="menu hidden-xs">
                  <li>
                    <a href="${ pageContext.request.contextPath}/index">首页</a>
                    <ul>
                      <li>
                        <a href="index.html">Home Version 1</a>
                      </li>
                      <li>
                        <a href="index-02.html">Home Version 2</a>
                      </li>
                      <li>
                        <a href="index-03.html">Home Version 3</a>
                      </li>
                      <li>
                        <a href="index-04.html">Home Version 4</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="active" href="cai.jsp">菜谱</a>
                    <ul>
                     
                    
                      <li>
                        <a  href="location.jsp">食材</a>
                      </li>
                      
                    </ul>
                  </li>
                  <li>
                    <a href="archive.jsp">甄选</a>
                  </li>
                  <li>
                    <a href="${ pageContext.request.contextPath}/myHealth">健康</a>
                   
                  </li>
                 
                  <li>
                    <a href="reservation.jsp">专题</a>
                  </li>
                   <li>
                    <a href="staff.jsp">社区</a>
                  </li>
                   <li>
                    <a href="gallery.jsp">话题</a>
                  </li>
                  
                  <li>
                  <s:if test="#session.existuser == null">
                  <li>
                     <a href="${pageContext.request.contextPath}/user_loginPage.action">登录</a>
                  </li>
                  
                  <li>
                      <a href="${pageContext.request.contextPath}/user_registPage.action">注册</a>
                  </li>
                 </s:if>
                 </li>
                  <li>
                  <s:else>
                   <!--   <li>
      	<a href='${pageContext.request.contextPath }/user_edit.action?uid=<s:property value="#session.existuser.uid"/>'>
       
      	     <s:property value="#session.existuser.name"/>
      	</a>
      	-->
                     </li>
                     
                     <li>
                         <a href="${pageContext.request.contextPath}/user_quit.action">退出</a>
                     </li>

                  </s:else>
                  </li>
                 
                </ul>
              </nav>
              <aside class="right">
                <div class="widget widget-control-header">
                  <div class="select-custom-wrapper">
                    <select class="no-border">
                      <option>USD</option>
                      <option>VND</option>
                      <option>EUR</option>
                      <option>JPY</option>
                    </select>
                  </div>
                </div>
                <div class="widget widget-control-header widget-search-header">
                  <a class="control btn-open-search-form js-open-search-form-header" href="#">
                    <span class="lnr lnr-magnifier"></span>
                  </a>
                  <div class="form-outer">
                    <button class="btn-close-form-search-header js-close-search-form-header">
                      <span class="lnr lnr-cross"></span>
                    </button>
                    <form>
                      <input placeholder="Search" />
                      <button class="search">
                        <span class="lnr lnr-magnifier"></span>
                      </button>
                    </form>
                  </div>
                </div>
                <div class="widget widget-control-header widget-shop-cart js-widget-shop-cart">
                  <a class="control"  href="${pageContext.request.contextPath }/cart_myCart.action">
                    <p class="counter">0</p>
                    <span class="lnr lnr-cart"></span>
                  </a>
                </div>
                <div class="widget widget-control-header hidden-lg hidden-md hidden-sm">
                  <a class="navbar-toggle js-offcanvas-has-events" type="button" href="#menu">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                </div>
              </aside>
            </div>
            </center>
          </div>
        </div>
      </header>