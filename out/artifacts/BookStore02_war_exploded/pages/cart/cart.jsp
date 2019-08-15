<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>购物车页面</title>
		<link href="../../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="../../basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="../../css/cartstyle.css" rel="stylesheet" type="text/css" />
		<link href="../../css/optstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="../../js/jquery.js"></script>
</head>
<body>

<!--顶部导航条 -->
<div class="am-container header">
	<ul class="message-r">
		<div class="topMessage">
			<div class="menu-hd">
				<a href="../order/order.jsp">我的订单</a>
				<a href="../user/login_success.jsp">返回</a>
				<a href="../../Exit!exit">注销</a>&nbsp;&nbsp;

			</div>
		</div>
	</ul>
</div>

<!--悬浮搜索框-->
<div class="nav white">
	<div class="logo"><img src="../../img/logo.png" /></div>
	<div class="logoBig">
		<li><img src="../../img/logobig.png" /></li>
	</div>

	<div class="search-bar pr">
		<a name="index_none_header_sysc" href="#"></a>
		<form>
			<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
			<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
		</form>
	</div>
</div>

<div class="clear"></div>
<!--购物车 -->
<div class="concent">
	<div id="cartTable">
		<div class="cart-table-th">
			<div class="wp">
				<div class="th th-chk">
					<div id="J_SelectAll1" class="select-all J_SelectAll">

					</div>
				</div>
				<div class="th th-item">
					<div class="td-inner">商品信息</div>
				</div>
				<div class="th th-price">
					<div class="td-inner">单价</div>
				</div>
				<div class="th th-amount">
					<div class="td-inner">数量</div>
				</div>
				<div class="th th-sum">
					<div class="td-inner">金额</div>
				</div>
				<div class="th th-op">
					<div class="td-inner">操作</div>
				</div>
			</div>
		</div>
		<div class="clear"></div>

     <%--到了这个购物车页面之后自动加载该用户的购物车信息--%>
		<c:if test="${empty cartlist}">
		<s:action name="displayCart" namespace="/" executeResult="true" >
			<s:param name="userId">
				${sessionScope.userId}
			</s:param>
		</s:action>
		</c:if>


		<tr class="item-list">
			<div class="bundle  bundle-last ">

				<div class="clear"></div>
				<div class="bundle-main">
                   <s:iterator value="#session.cartlist">
					<ul class="item-content clearfix">
						<li class="td td-chk">
							<div class="cart-checkbox ">
								<input class="check" id="J_CheckBox_170037950254" name="items[]" value="170037950254" type="checkbox">
								<label for="J_CheckBox_170037950254"></label>
							</div>
						</li>
						<li class="td td-item">
							<div class="item-pic">
								<a href="#" target="_blank" data-title="<s:property value="book_name"/>" class="J_MakePoint" data-point="tbcart.8.12">
									<img src="<s:property value="book_img"/>" height="100" width="80"/>
								</a>

							</div>
							<div class="item-info">
								<div class="item-basic-info">
									<a href="#" target="_blank" title="" class="item-title J_MakePoint" data-point="tbcart.8.11"><s:property value="bookname"/> <s:property value="author"/></a>
								</div>
							</div>
						</li>
						<li class="td td-info">
							<div class="item-props item-props-can">
								<span class="sku-line">书名：<s:property value="book_name"/></span>
								<span class="sku-line">作者：<s:property value="book_author"/></span>
								<span tabindex="0" class="btn-edit-sku theme-login">修改</span>
								<i class="theme-login am-icon-sort-desc"></i>
							</div>
						</li>
						<li class="td td-price">
							<div class="item-price price-promo-promo">
								<div class="price-content">
									<div class="price-line">
										<em class="price-original">1<s:property value="price"/></em>
									</div>
									<div class="price-line">
										<em class="J_Price price-now" tabindex="0"><s:property value="price"/></em>
									</div>
								</div>
							</div>
						</li>
						<li class="td td-amount">
							<div class="amount-wrapper ">
								<div class="item-amount ">
									<div class="sl">
										<%--如何数量加一或者减一对应数据库信息也变更--%>
										<a href="../../SuNumber!suNumber?orderId=<s:property value="orderId"/>"><input class="min am-btn" name="" type="button" value="-" /></a>
										<input class="text_box" name="number" type="text" value="<s:property value="number"/>" style="width:30px;" />  <!--需要提交购物车商品数目到数据库-->
										<a href="../../AddNumber!addNumber?orderId=<s:property value="orderId"/>"><input class="min am-btn" name="" type="button" value="+" /></a>
									</div>
								</div>
							</div>
						</li>
						<li class="td td-sum">
							<div class="td-inner">
								<em tabindex="0" class="J_ItemSum number"><s:property value="totalnumber"/></em>
							</div>
						</li>
						<li class="td td-op">
							<div class="td-inner">

								<%--提交订单就是 跳转到action中删除原来购物车中的信息，从订单表中拆入一条记录--%>
								<a title="提交订单" onclick="submint_cart" class="btn-fav" href="../../SubmitOrder!submitOrderAction?orderId=<s:property value="orderId"/> ">
									提交订单
									</a>
								<a href="../../Delete!delete?orderId=<s:property value="orderId"/>" data-point-url="#" class="delete">
									删除
									</a>
							</div>
						</li>
					</ul>
				   </s:iterator>
              </div>
			</div>
		</tr>
		<div class="clear"></div>

	</div>
	<div class="clear"></div>



	<div class="footer">
		<div class="footer-hd">
			<p>
				<a href="#">科技</a>
				<b>|</b>
				<a href="#">商城首页</a>
				<b>|</b>
				<a href="#">支付宝</a>
				<b>|</b>
				<a href="#">物流</a>
			</p>
		</div>

	</div>

</div>

<!--操作页面-->

<div class="theme-popover-mask"></div>

<div class="theme-popover">
	<div class="theme-span"></div>
	<div class="theme-poptit h-title">
		<a href="javascript:;" title="关闭" class="close">×</a>
	</div>
	<div class="theme-popbod dform">
		<form class="theme-signin" name="loginform" action="" method="post">

			<div class="theme-signin-left">

				<li class="theme-options">
					<div class="cart-title">颜色：</div>
					<ul>
						<li class="sku-line selected">12#川南玛瑙<i></i></li>
						<li class="sku-line">10#蜜橘色+17#樱花粉<i></i></li>
					</ul>
				</li>
				<li class="theme-options">
					<div class="cart-title">包装：</div>
					<ul>
						<li class="sku-line selected">包装：裸装<i></i></li>
						<li class="sku-line">两支手袋装（送彩带）<i></i></li>
					</ul>
				</li>
				<div class="theme-options">
					<div class="cart-title number">数量</div>
					<dd>
						<input class="min am-btn am-btn-default" name="" type="button" value="-" />
						<input class="text_box" name="" type="text" value="1" style="width:30px;" />
						<input class="add am-btn am-btn-default" name="" type="button" value="+" />
						<span  class="tb-hidden">库存<span class="stock">1000</span>件</span>
					</dd>

				</div>
				<div class="clear"></div>
				<div class="btn-op">
					<div class="btn am-btn am-btn-warning">确认</div>
					<div class="btn close am-btn am-btn-warning">取消</div>
				</div>

			</div>
			<div class="theme-signin-right">
				<div class="img-info">
					<img src="../../img/kouhong.jpg_80x80.jpg" />
				</div>
				<div class="text-info">
					<span class="J_Price price-now">¥39.00</span>
					<span id="Stock" class="tb-hidden">库存<span class="stock">1000</span>件</span>
				</div>
			</div>

		</form>
	</div>
</div>
<!--引导 -->
<div class="navCir">
	<li><a href="home.html"><i class="am-icon-home "></i>首页</a></li>
	<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
	<li class="active"><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>
	<li><a href="../person/index.html"><i class="am-icon-user"></i>我的</a></li>
</div>
</body>

</html>


