<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员中心 - 厨色</title>
<meta name="renderer" content="webkit">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" href="${ctx}/https://static.meishichina.com/v6/img/lib/f.ico">
<link rel="apple-touch-icon" href="${ctx}/https://static.meishichina.com/v6/img/lib/wapico.png">
<link rel="stylesheet" type="text/css" href="${ctx}/css/all.css">
<link rel="stylesheet" type="text/css" href="${ctx}/css/all_002.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/center_home.css">
</head>
<body>
<div class="top-bar" id="J_top_bar">
<ul class="bar-left left">
<li><a title="厨色" href="${ctx}/https://www.meishichina.com/" target="_blank" class="top_bar_logo"><i>厨色</i>首页</a></li>
      <li> <a title="菜谱" href="${ctx}/https://home.meishichina.com/recipe.html" target="_blank">菜谱</a></li>
      <li> <a title="食材" href="${ctx}/https://www.meishichina.com/YuanLiao/" target="_blank">食材</a></li>
	  <li> <a title="珍选" href="${ctx}/https://zhen.meishichina.com/" target="_blank">珍选</a></li>
	  <li> <a title="健康" href="${ctx}/https://www.meishichina.com/Health/" target="_blank">健康</a></li>
	  <li> <a title="专题" href="${ctx}/https://www.meishichina.com/mofang/" target="_blank">专题</a></li>
	  <li> <a title="社区" href="${ctx}/https://home.meishichina.com/" target="_blank">社区</a></li>
	  <li> <a title="话题" href="${ctx}/https://home.meishichina.com/pai.html" target="_blank">话题</a></li>
      <li> <a title="活动" href="${ctx}/https://home.meishichina.com/event/" target="_blank">活动</a></li>
	  <li> <a title="搜索" href="${ctx}/https://home.meishichina.com/search/" target="_blank">搜索</a></li>
	  <li class="top_bar_more"><i></i>
	  <div>
	  <a title="烘焙" href="${ctx}/https://hongbei.meishichina.com/" target="_blank">烘焙</a>
	  <a title="妈妈派" href="${ctx}/https://mamapai.meishichina.com/" target="_blank">妈妈派</a>
	  </div>
	  </li>
    </ul>

<a href="${ctx}/https://www.meishichina.com/Mobile/" target="_blank" class="nr3"><img src="${ctx}/images/center/nr3.png" width="18" height="18">客户端<img src="${ctx}/images/center/msc_app.png" class="code">
</a>

<div class="right" id="J_top_bar_user"><ul class="clear bar-info right bar-isLogin" id="J_barUser"><li class="bar-tips bar-sign-tips" id="J_barSignTips"><i class="arrow"></i><b class="arrow"></b><a href="${ctx}/javascript:;" class="close">×</a>签到即可参加 0元购</li><li class="bar-tips bar-message-tips" id="J_barMessageTips"><i class="arrow"></i><b class="arrow"></b><a href="${ctx}/javascript:;" class="close">×</a><p><span></span>条新消息, <a href="${ctx}/https://member.meishichina.com/center/privately_list/" class="J_tips_look" target="_blank">查看</a></p><p><span></span>条通知, <a href="${ctx}/https://member.meishichina.com/center/my_notice_list/" class="J_tips_look" target="_blank">查看</a></p></li><li class="bar-item bar-loading images-loading bar-link"></li><li class="bar-link bar-item bar-reg"><a href="${ctx}/https://member.meishichina.com/user/register/" target="_blank">注册</a></li><li class="bar-link bar-item bar-login"><a href="${ctx}/https://member.meishichina.com/user/login/" target="_blank">登录</a></li><li class="bar-login J_down bar-item"><div class="bar-text"><a href="${ctx}/https://home.meishichina.com/meishi2.php?ac=qqlogin&amp;op=login"><img src="${ctx}/images/center/nir1.png" width="18" height="18">QQ登录</a></div><div class="bar-box"><ul><li class="bar-box-item-0"><a href="${ctx}/https://home.meishichina.com/meishi2.php?ac=sinalogin"><img src="${ctx}/images/center/nir2.png" width="18" height="18">微博登录</a></li><li><a href="${ctx}/https://home.meishichina.com/meishi2.php?ac=wechatlogin&amp;op=login"><img src="${ctx}/images/center/nir3.png" width="18" height="18">微信登录</a></li></ul></div></li><li class="bar-center J_down bar-item"><div class="bar-text">会员中心<i class="arrow"></i></div><div class="bar-box"><ul><li class="bar-box-item-0"><a href="${ctx}/#" class="J_barLogin">会员中心</a></li><li><a href="${ctx}/#" class="J_barLogin">我的主页</a></li></ul></div></li><li class="bar-user J_down bar-item"><div class="bar-text"><div class="bar-text-userName" id="J_barUserName"><a href="${ctx}/https://home.meishichina.com/space-10912291.html" target="_blank" title="粒小米。的主页"><img alt="粒小米。" class="imgLoad" src="${ctx}/images/center/n.jpg" data-src="${ctx}/https://i5.meishichina.com/data/avatar/010/91/22/91_avatar_big.jpg?x-oss-process=style/c80&amp;v=2018053108" width="30" height="30"><span>1</span></a></div><i class="arrow"></i></div><div class="bar-box"><ul><li class="bar-box-item-0 bar-box-item-fav"><a title="我的收藏" href="${ctx}/https://member.meishichina.com/center/my_fav_recipe/" target="_blank">收藏</a></li><li class="bar-box-item-1"><a title="管理中心" href="${ctx}/https://member.meishichina.com/center/" target="_blank">管理</a></li><li class="bar-box-item-2"><a title="私信" href="${ctx}/https://member.meishichina.com/center/privately_list/" target="_blank" id="privately_list">私信<span></span></a></li><li class="bar-box-item-3"><a title="通知" href="${ctx}/https://member.meishichina.com/center/my_notice_list/" target="_blank" id="my_notice_list">通知<span>(1)</span></a></li><li class="bar-box-item-4"><a title="退出" href="${ctx}/#" class="J_barExit">退出</a></li></ul></div></li><li class="bar-add J_down bar-item"><div class="bar-text"><img src="${ctx}/images/center/nr1.png" width="18" height="18">发布</div><div class="bar-box"><ul><li class="bar-box-item-0"><a href="${ctx}/https://member.meishichina.com/center/recipe-add/" target="_blank" class="J_barLogin">发菜谱</a></li><li class="bar-box-item-1"><a href="${ctx}/https://member.meishichina.com/center/pai-add/" target="_blank" class="J_barLogin">发话题</a></li><li class="bar-box-item-2"><a href="${ctx}/https://member.meishichina.com/center/blog-add/" target="_blank" class="J_barLogin">发日志</a></li></ul></div></li><li class="bar-item bar-sign J_down" id="J_barSign"><a href="${ctx}/javascript:void(0);" class="bar-sign-text J_barLogin"><img src="${ctx}/images/center/nr2.png" width="18" height="18">签到有礼</a><div class="bar-sign-box"><h3>签到 <b>0</b> 天</h3><p><b>5</b></p><a target="_blank" href="${ctx}/https://home.meishichina.com/event/lottery/">去抽奖</a></div></li></ul></div>				
</div>

<!-- 主框架 -->
<div class="w_main clear">

    <div class="mod_left">
        <div class="menu_wrap">
<ul>
<li>
<a class="on" href="${ctx}/https://member.meishichina.com/center/">会员<br>中心</a>
</li>

<li>
<a href="${ctx}/center/zhanghu">账户<br>设置</a>
</li>
</ul>
</div>

    </div>


    <!-- 右侧 -->
    <div class="mod_right">


        <div class="space_info clear">

            <div class="pic">
                <a href="${ctx}/center/zhanghu" target="_blank"><img class="imgLoad" src="${ctx}/images/center/n2.jpg" data-src="${ctx}/https://i5.meishichina.com/data/avatar/010/91/22/91_avatar_big.jpg?x-oss-process=style/c200&amp;v=1527727125" width="150" height="150"></a>
            </div>

            <div class="w logo_wrap2">
                <div class="logo_search right">
                    <div class="searchBox J_search"><a href="${ctx}/javascript:;" title="搜索" class="search_Btn J_searchBTN right" id="search">搜索</a><input id="q" class="search_Text J_searchTxt right" type="text">
                    </div>
                </div>
            </div>


            <div class="detail">

                <em><a href="${ctx}/center/zhanghu" target="_blank">${user.username}</a></em>

                
                <ul class="substatus">

                    <li>
                        ${user.gexingqianming }</li>
                    
                </ul>


                <div class="subtools">
                    <a href="${ctx}/https://member.meishichina.com/center/my_notice_list/">通知
                                                (1)
                                            </a>
                    <a href="${ctx}/https://member.meishichina.com/center/privately_list/">私信
                                            </a>
                </div>

            </div>
        </div>


        <div class="home_right mt30">

            

            


            <div class="ui_list_2_48 clear">
                <ul>
                                    </ul>
            </div>

            <div class="ui_title mt20">
                <div class="ui_title_wrap">
                    <h3>我关注的人</h3>
                </div>
            </div>

            <div class="ui_list_2_48 clear">
                <ul>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-9905567.html" target="_blank" title="萝卜头～美食厨房"><img src="${ctx}/images/center/67_avatar_big.jpg" class="imgLoad" width="48" height="48">萝卜头～美食厨房</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-10244347.html" target="_blank" title="一米阳光612"><img src="${ctx}/images/center/47_avatar_big.jpg" class="imgLoad" width="48" height="48">一米阳光612</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-10654549.html" target="_blank" title="鳗天下美食"><img src="${ctx}/images/center/49_avatar_big_002.jpg" class="imgLoad" width="48" height="48">鳗天下美食</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-6572300.html" target="_blank" title="雅雅楊小厨"><img src="${ctx}/images/center/00_avatar_big.jpg" class="imgLoad" width="48" height="48">雅雅楊小厨</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-10850622.html" target="_blank" title="李菇凉_jzjv"><img src="${ctx}/images/center/22_avatar_big.jpg" class="imgLoad" width="48" height="48">李菇凉_jzjv</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-10746115.html" target="_blank" title="musicmiumiu"><img src="${ctx}/images/center/15_avatar_big.jpg" class="imgLoad" width="48" height="48">musicmiumiu</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-9885749.html" target="_blank" title="赵姐美食号"><img src="${ctx}/images/center/49_avatar_big.jpg" class="imgLoad" width="48" height="48">赵姐美食号</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-10667013.html" target="_blank" title="我想要的会来"><img src="${ctx}/images/center/13_avatar_big.jpg" class="imgLoad" width="48" height="48">我想要的会来</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-10218894.html" target="_blank" title="朝族媳妇辣白菜"><img src="${ctx}/images/center/94_avatar_big.jpg" class="imgLoad" width="48" height="48">朝族媳妇辣白菜</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-675818.html" target="_blank" title="chenlizhen82"><img src="${ctx}/images/center/18_avatar_big.jpg" class="imgLoad" width="48" height="48">chenlizhen82</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-10831524.html" target="_blank" title="小兰_qhN4"><img src="${ctx}/images/center/24_avatar_big.jpg" class="imgLoad" width="48" height="48">小兰_qhN4</a>
                    </li>
                                        <li>
                        <a href="${ctx}/https://home.meishichina.com/space-6447155.html" target="_blank" title="娅米厨房"><img src="${ctx}/images/center/55_avatar_big.jpg" class="imgLoad" width="48" height="48">娅米厨房</a>
                    </li>
                                    </ul>
            </div>

        </div>


        <div class="home_left mt30">

            <div class="ui_title">
                <div class="ui_title_wrap" id="J_feed_nav">
                    <a href="${ctx}/javascript:void(0);" data-type="follow" class="on">我关注的动态</a>
                
                    <a href="${ctx}/javascript:void(0);" data-type="uid" data-uid="10912291">我的动态</a>
                </div>
            </div>

            
            <div class="ui_list_5 mt10" id="J_feed_wrap">
                <ul id="J_feed_list"><li style=""><div class="subline"> <div class="subtime" data-time="1527721520">2小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 发表了新话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897795.html" target="_blank"><span><i>4</i></span> <img src="${ctx}/images/center/201805311527721519185.jpg" alt="一溪月发表的话题" width="120"> </a> </div> <div class="detail"> <p>#早餐# 周四早餐</p> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527721318">2小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-8803821.html" target="_blank">禧歡Θ雨兲</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897788.html" target="_blank"> <img src="${ctx}/images/center/201805311527720891797.jpg" alt="禧歡Θ雨兲发表的话题" width="120"> </a> </div> <div class="detail"> <p>#早餐#当我们挥动双手，当我们变化脚步…………</p> <div class="subreply"> 早上好😊 <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527721284">2小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-8803821.html" target="_blank">禧歡Θ雨兲</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-896364.html" target="_blank"> <img src="${ctx}/images/center/2018052615273227432874738803821.jpg" alt="禧歡Θ雨兲发表的话题" width="120"> </a> </div> <div class="detail"> <p>下午茶
#下午茶#  小子晚上要去参加同学的生日派对，有个二十四孝老爸怕他儿子晚上吃不饱饿着，屁嗔带着去提前吃个下午茶。然后爷俩欠打的发各种吃得差不多的图片给我。美名其曰怕我看着想吃。就这样拍了。。。</p> <div class="subreply"> 😂 <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527720537">2小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-1806550.html" target="_blank">不做妖精好多年</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897590.html" target="_blank"> <img src="${ctx}/images/center/201805301527651881715.jpg" alt="不做妖精好多年发表的话题" width="120"> </a> </div> <div class="detail"> <p>#午餐#
莲藕肉丸番茄汤
姜末皮蛋肠</p> <div class="subreply"> 打的米糊，刚喝进肚里，看见诱人的莲藕丸子汤，特别想喝😍 <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527720424">2小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-1806550.html" target="_blank">不做妖精好多年</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897590.html" target="_blank"> <img src="${ctx}/images/center/201805301527651881715.jpg" alt="不做妖精好多年发表的话题" width="120"> </a> </div> <div class="detail"> <p>#午餐#
莲藕肉丸番茄汤
姜末皮蛋肠</p> <div class="subreply"> 美味丸子汤，想喝😋 <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527720354">2小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-10274398.html" target="_blank">雨中漫步_kRsJPX</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897712.html" target="_blank"> <img src="${ctx}/images/center/201805301527684002702.jpg" alt="雨中漫步_kRsJPX发表的话题" width="120"> </a> </div> <div class="detail"> <p>#街头美食#我们这里的年糕是这个样子的😍😍</p> <div class="subreply"> 早上好😊 <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527720276">2小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-1390194.html" target="_blank">金豆妈妈爱做饭</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897784.html" target="_blank"> <img src="${ctx}/images/center/201805311527720228984.jpg" alt="金豆妈妈爱做饭发表的话题" width="120"> </a> </div> <div class="detail"> <p>#早餐#</p> <div class="subreply"> 早上好😊 <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527696841">8小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10899818.html" target="_blank">匠心传承</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-6591561.html" target="_blank">梦桃缘</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897514.html" target="_blank"> <img src="${ctx}/images/center/201805301527641635836.jpg" alt="梦桃缘发表的话题" width="120"> </a> </div> <div class="detail"> <p>#早餐#芝士肉松煎饼，水果、奶茶。
好困～整杯奶茶提提神，昨晚一个人在东门老街漫无目的的瞎逛，瞎吃、到凌晨三点钟才回来。发现一个人逛街还蛮享受的，可以独立思考问题^_^</p> <div class="subreply"> 摆盘非常漂亮[em:ag:] <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527692577">10小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-9981136.html" target="_blank">柔昊琳琪</a> 发表了新话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897751.html" target="_blank"><span><i>3</i></span> <img src="${ctx}/images/center/201805301527692576296.jpg" alt="柔昊琳琪发表的话题" width="120"> </a> </div> <div class="detail"> <p>#街头美食#又一街头美食</p> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527691069">10小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10899818.html" target="_blank">匠心传承</a> 发表了新话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897745.html" target="_blank"><span><i>6</i></span> <img src="${ctx}/images/center/201805301527691068832.jpg" alt="匠心传承发表的话题" width="120"> </a> </div> <div class="detail"> <p>蒜泥白肉
蒜泥白肉属于川菜中一道经典凉菜，当今的蒜泥白肉品质与风味均要求肥瘦兼备，肉片匀薄大张，蒜味浓郁，咸辣鲜香，肥而不腻，并略有回甜，传统白肉都是采用手工切肉片，以表现娴熟的刀工技巧。菜谱明日发出</p> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527690932">10小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-8723171.html" target="_blank">yangxr</a> 发表了新话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897742.html" target="_blank"> <img src="${ctx}/images/center/201805301527690931836.jpg" alt="yangxr发表的话题" width="120"> </a> </div> <div class="detail"> <p>花了半小时的自制果盘</p> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527688251">11小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10899818.html" target="_blank">匠心传承</a> 发表了新话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897731.html" target="_blank"><span><i>7</i></span> <img src="${ctx}/images/center/201805301527688248312.jpg" alt="匠心传承发表的话题" width="120"> </a> </div> <div class="detail"> <p>全是吃货，半夜想吃烧烤
#街头美食#  几个馋嘴猫</p> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527688046">11小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-8451954.html" target="_blank">清水淡竹</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897617.html" target="_blank"> <img src="${ctx}/images/center/201805301527658355390.jpg" alt="清水淡竹发表的话题" width="120"> </a> </div> <div class="detail"> <p>#早餐#葱香土豆泥、白粥、李子</p> <div class="subreply"> 自己种的么?😊 <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527686816">11小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-8451954.html" target="_blank">清水淡竹</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897617.html" target="_blank"> <img src="${ctx}/images/center/201805301527658355390.jpg" alt="清水淡竹发表的话题" width="120"> </a> </div> <div class="detail"> <p>#早餐#葱香土豆泥、白粥、李子</p> <div class="subreply"> 好诱人的李子😍 <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527685527">12小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-8334261.html" target="_blank">putimama</a> 发布了一篇新菜谱 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/recipe-399883.html" target="_blank"> <img src="${ctx}/images/center/2018053015276770966628334261.jpg" alt="粉红豆沙包" width="120" height="120"> </a> </div> <div class="detail"> <h4><a href="${ctx}/https://home.meishichina.com/recipe-399883.html" target="_blank">粉红豆沙包</a></h4> <p>原料：面粉、豆沙、红曲粉、温水、酵母。。</p> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527684696">12小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-8723171.html" target="_blank">yangxr</a> 发布了一篇新菜谱 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/recipe-399843.html" target="_blank"> <img src="${ctx}/images/center/2018053015276678315698723171.jpg" alt="芝士焗巴沙鱼柳" width="120" height="120"> </a> </div> <div class="detail"> <h4><a href="${ctx}/https://home.meishichina.com/recipe-399843.html" target="_blank">芝士焗巴沙鱼柳</a></h4> <p>原料：巴沙鱼柳、面粉、芝士、香花生面、面包糠、胡椒粉、盐。</p> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527684413">12小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-10274398.html" target="_blank">雨中漫步_kRsJPX</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897713.html" target="_blank"> <img src="${ctx}/images/center/201805301527684094467.jpg" alt="雨中漫步_kRsJPX发表的话题" width="120"> </a> </div> <div class="detail"> <p>#街头美食#挂炉烤鸭</p> <div class="subreply"> 美味😍 <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li><li style=""><div class="subline"> <div class="subtime" data-time="1527684396">12小时前</div> <div class="subtitle"> <a href="${ctx}/https://home.meishichina.com/space-10449735.html" target="_blank">一溪月</a> 评论了 <a href="${ctx}/https://home.meishichina.com/space-10274398.html" target="_blank">雨中漫步_kRsJPX</a> 的话题 </div> </div> <div class="subcontent img_120"> <div class="pic"> <a href="${ctx}/https://home.meishichina.com/pai-897714.html" target="_blank"> <img src="${ctx}/images/center/201805301527684146542.jpg" alt="雨中漫步_kRsJPX发表的话题" width="120"> </a> </div> <div class="detail"> <p>#街头美食#还有这个烧鸡也不错</p> <div class="subreply"> 这个点看见烧鸡，流口水😋 <i class="arrow"></i><b class="arrow"></b> </div> </div> </div></li></ul>
            </div>

            <div class="ui-loading mt20" id="J_feed_load">
                <a href="${ctx}/javascript:void(0);" class="">查看更多动态</a>
            </div>

        </div>


    </div><!-- 右侧结束 -->
</div>
<script src="${ctx}/js/push.js"></script><script src="${ctx}/js/hm.js"></script><script type="text/javascript" src="${ctx}/js/all.js"></script>
<script type="text/javascript">
msc.user.init();
$("img.imgLoad").imgLoad();
</script>
<script type="text/javascript" src="${ctx}/js/msc-tools-date.js"></script>
<script type="text/javascript" src="${ctx}/js/feed.js"></script>
<script type="text/javascript">

    $("#search").click(function () {
        var q = $("#q").val().replace(/\s+/g, "").replace("　", "");
        window.location.href = '//home.meishichina.com/search/' + (q == "" ? '' : q + '/')
    });
    $("#q").keydown(function (e) {
        if (e.keyCode == 13) $("#search").click()
    });

    var feed = msc.tools.feed;
    feed.init({
        dom: {
            list: $("#J_feed_list")
        },
        data: {
            type: 'follow',
            classid: '',
            uid: '',
            pageSize: 15,
            page: 1
        },

        render: function (html, data) {
            return '<li>' + html + '</li>';
        },
        success: function () {
            $("#J_feed_list li").each(function () {
                if ($(this).find('.detail p').html() == '') {
                    $(this).hide().remove()
                }
            });
        }
    });

    $("#J_feed_nav a").click(function () {


        if ($(this).hasClass('on') || $("#J_feed_load a").hasClass('on'))
            return false;

        feed.config.data.type = $(this).attr("data-type");
        if ($(this).attr("data-type") == 'uid')
            feed.config.data.uid = $(this).attr("data-uid");

        feed.reload();
        $(this).addClass("on").siblings().removeClass("on");
        return false;
    });

    $(".show_tip").click(function () {
        msc.ui.dialog.alert({
            content: ['<h3><img src="${ctx}/images/center/msc_app.png" style="width:100px;display:inline-block;"></h3><p style="font-size:14px;color:#333;margin:5px 0px -15px;">扫一扫，下载客户端<br>参加幸运草抽奖、免费试用、美粒兑换奖品</p>', ''],
            ok: function () {
            },
            title: "提示"
        });
    });
</script>

<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="${ctx}/js/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="${ctx}/js/push.js"}else{bp.src="${ctx}/js/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script>



</body></html>