<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

	<title>订单管理</title>

	<link href="../../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
	<link href="../../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

	<link href="../../css/personal.css" rel="stylesheet" type="text/css">
	<link href="../../css/orstyle.css" rel="stylesheet" type="text/css">

	<script src="../../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
	<script src="../../AmazeUI-2.4.2/assets/js/amazeui.js"></script>

</head>
<body>
<!--头 -->
<header>
	<article>
		<div class="mt-logo">
			<!--顶部导航条 -->
			<div class="am-container header">
				<ul class="message-r">
				<div class="topMessage">
					<div class="menu-hd">
						<a href="../cart/cart.jsp">购物车</a>
						<a href="../user/login_success.jsp">返回</a>
						<a href="../../Exit!exit">注销</a>&nbsp;&nbsp;

					</div>
				</ul>
			</div>

			<!--悬浮搜索框-->

			<div class="nav white">
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
		</div>
		</div>
	</article>
</header>
<div class="nav-table">
	<div class="long-title"><span class="all-goods">全部分类</span></div>

</div>
<b class="line"></b>
<div class="center">
	<div class="col-main">
		<div class="main-wrap">

			<div class="user-order">

				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
				</div>
				<hr/>

				<!--进行数据库查询 查询该用户的所有订单信息-->
				<c:if test="${empty orderlist}">
					<s:action name="displayOrder" namespace="/" executeResult="true" >
						<s:param name="userId">
							${sessionScope.userId}
						</s:param>
					</s:action>
				</c:if>


				<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

					<ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
						<li class="am-active"><a href="#tab1">所有订单</a></li>
						<li><a href="#tab2">待付款</a></li>
						<li><a href="#tab3">待发货</a></li>
						<li><a href="#tab4">待收货</a></li>
						<li><a href="#tab5">待评价</a></li>
					</ul>


					<div class="am-tabs-bd">
						<div class="am-tab-panel am-fade am-in am-active" id="tab1">
							<div class="order-top">
								<div class="th th-item">
									<td class="td-inner">商品</td>
								</div>
								<div class="th th-price">
									<td class="td-inner">单价</td>
								</div>
								<div class="th th-number">
									<td class="td-inner">数量</td>
								</div>
								<div class="th th-operation">
									<td class="td-inner">商品操作</td>
								</div>
								<div class="th th-amount">
									<td class="td-inner">合计</td>
								</div>
								<div class="th th-status">
									<td class="td-inner">交易状态</td>
								</div>
								<div class="th th-change">
									<td class="td-inner">交易操作</td>
								</div>
							</div>

							<div class="order-main">
								<div class="order-list">

									<!--交易成功-->
									<s:iterator value="#session.orderlist">
									<div class="order-status5">
										<div class="order-title">
											<div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
											<span>成交时间：2018-12-20</span>
											<!--    <em>店铺：小桔灯</em>-->
										</div>
										<div class="order-content">
											<div class="order-left">
												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../../img/default.jpg" height="100" width="80"/>
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p><s:property value="bookname"/> <s:property value="author"/> </p>
																	<p class="info-little">颜色：黑色
																		<br/>包装：裸装 </p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															<s:property value="price"/>
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span><s:property value="number"/>
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">

														</div>
													</li>
												</ul>

												<div class="order-right">
													<li class="td td-amount">
														<div class="item-amount">
															合计：<s:property value="totalnumber"/>
															<p>含运费：<span>0.00</span></p>
														</div>
													</li>
													<div class="move-right">
														<li class="td td-status">
															<div class="item-status">
																<p class="Mystatus">交易关闭</p>
															</div>
														</li>
														<li class="td td-change">
															<a  href="../../Delete!delete?orderId=<s:property value="orderId"/>">
															<div class="am-btn am-btn-danger anniu">
																删除订单
															</div>
															</a>
														</li>
													</div>
												</div>

											</div>

										</div>
									</div>
									</s:iterator>




									<!--待发货-->

									<!--不同状态订单-->


								</div>

							</div>

						</div>
						<div class="am-tab-panel am-fade" id="tab2">

							<div class="order-top">
								<div class="th th-item">
									<td class="td-inner">商品</td>
								</div>
								<div class="th th-price">
									<td class="td-inner">单价</td>
								</div>
								<div class="th th-number">
									<td class="td-inner">数量</td>
								</div>
								<div class="th th-operation">
									<td class="td-inner">商品操作</td>
								</div>
								<div class="th th-amount">
									<td class="td-inner">合计</td>
								</div>
								<div class="th th-status">
									<td class="td-inner">交易状态</td>
								</div>
								<div class="th th-change">
									<td class="td-inner">交易操作</td>
								</div>
							</div>

							<div class="order-main">
								<div class="order-list">
									<div class="order-status1">
										<div class="order-title">
											<div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
											<span>成交时间：2015-12-20</span>
											<!--    <em>店铺：小桔灯</em>-->
										</div>
										<div class="order-content">
											<div class="order-left">
												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
																	<p class="info-little">颜色：12#川南玛瑙
																		<br/>包装：裸装 </p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															333.00
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span>2
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">

														</div>
													</li>
												</ul>

												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../images/62988.jpg_80x80.jpg" class="itempic J_ItemImg">
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
																	<p class="info-little">颜色分类：李清照
																		<br/>尺码：均码</p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															333.00
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span>2
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">

														</div>
													</li>
												</ul>

												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
																	<p class="info-little">颜色：12#川南玛瑙
																		<br/>包装：裸装 </p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															333.00
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span>2
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">

														</div>
													</li>
												</ul>
											</div>
											<div class="order-right">
												<li class="td td-amount">
													<div class="item-amount">
														合计：676.00
														<p>含运费：<span>0.00</span></p>
													</div>
												</li>
												<div class="move-right">
													<li class="td td-status">
														<div class="item-status">
															<p class="Mystatus">等待买家付款</p>
															<p class="order-info"><a href="#">取消订单</a></p>

														</div>
													</li>
													<li class="td td-change">
														<a href="pay.html">
															<div class="am-btn am-btn-danger anniu">
																一键支付</div></a>
													</li>
												</div>
											</div>

										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="am-tab-panel am-fade" id="tab3">
							<div class="order-top">
								<div class="th th-item">
									<td class="td-inner">商品</td>
								</div>
								<div class="th th-price">
									<td class="td-inner">单价</td>
								</div>
								<div class="th th-number">
									<td class="td-inner">数量</td>
								</div>
								<div class="th th-operation">
									<td class="td-inner">商品操作</td>
								</div>
								<div class="th th-amount">
									<td class="td-inner">合计</td>
								</div>
								<div class="th th-status">
									<td class="td-inner">交易状态</td>
								</div>
								<div class="th th-change">
									<td class="td-inner">交易操作</td>
								</div>
							</div>

							<div class="order-main">
								<div class="order-list">
									<div class="order-status2">
										<div class="order-title">
											<div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
											<span>成交时间：2015-12-20</span>
											<!--    <em>店铺：小桔灯</em>-->
										</div>
										<div class="order-content">
											<div class="order-left">
												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
																	<p class="info-little">颜色：12#川南玛瑙
																		<br/>包装：裸装 </p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															333.00
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span>2
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">
															<a href="refund.html">退款</a>
														</div>
													</li>
												</ul>

												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../images/62988.jpg_80x80.jpg" class="itempic J_ItemImg">
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
																	<p class="info-little">颜色分类：李清照
																		<br/>尺码：均码</p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															333.00
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span>2
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">
															<a href="refund.html">退款</a>
														</div>
													</li>
												</ul>

												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
																	<p class="info-little">颜色：12#川南玛瑙
																		<br/>包装：裸装 </p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															333.00
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span>2
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">
															<a href="refund.html">退款</a>
														</div>
													</li>
												</ul>
											</div>
											<div class="order-right">
												<li class="td td-amount">
													<div class="item-amount">
														合计：676.00
														<p>含运费：<span>0.00</span></p>
													</div>
												</li>
												<div class="move-right">
													<li class="td td-status">
														<div class="item-status">
															<p class="Mystatus">买家已付款</p>
															<p class="order-info"><a href="orderinfo.html">订单详情</a></p>
														</div>
													</li>
													<li class="td td-change">
														<div class="am-btn am-btn-danger anniu">
															提醒发货</div>
													</li>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="am-tab-panel am-fade" id="tab4">
							<div class="order-top">
								<div class="th th-item">
									<td class="td-inner">商品</td>
								</div>
								<div class="th th-price">
									<td class="td-inner">单价</td>
								</div>
								<div class="th th-number">
									<td class="td-inner">数量</td>
								</div>
								<div class="th th-operation">
									<td class="td-inner">商品操作</td>
								</div>
								<div class="th th-amount">
									<td class="td-inner">合计</td>
								</div>
								<div class="th th-status">
									<td class="td-inner">交易状态</td>
								</div>
								<div class="th th-change">
									<td class="td-inner">交易操作</td>
								</div>
							</div>

							<div class="order-main">
								<div class="order-list">
									<div class="order-status3">
										<div class="order-title">
											<div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
											<span>成交时间：2015-12-20</span>
											<!--    <em>店铺：小桔灯</em>-->
										</div>
										<div class="order-content">
											<div class="order-left">
												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
																	<p class="info-little">颜色：12#川南玛瑙
																		<br/>包装：裸装 </p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															333.00
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span>2
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">
															<a href="refund.html">退款/退货</a>
														</div>
													</li>
												</ul>

												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../images/62988.jpg_80x80.jpg" class="itempic J_ItemImg">
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
																	<p class="info-little">颜色分类：李清照
																		<br/>尺码：均码</p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															333.00
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span>2
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">
															<a href="refund.html">退款/退货</a>
														</div>
													</li>
												</ul>

											</div>
											<div class="order-right">
												<li class="td td-amount">
													<div class="item-amount">
														合计：676.00
														<p>含运费：<span>10.00</span></p>
													</div>
												</li>
												<div class="move-right">
													<li class="td td-status">
														<div class="item-status">
															<p class="Mystatus">卖家已发货</p>
															<p class="order-info"><a href="orderinfo.html">订单详情</a></p>
															<p class="order-info"><a href="logistics.html">查看物流</a></p>
															<p class="order-info"><a href="#">延长收货</a></p>
														</div>
													</li>
													<li class="td td-change">
														<div class="am-btn am-btn-danger anniu">
															确认收货</div>
													</li>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="am-tab-panel am-fade" id="tab5">
							<div class="order-top">
								<div class="th th-item">
									<td class="td-inner">商品</td>
								</div>
								<div class="th th-price">
									<td class="td-inner">单价</td>
								</div>
								<div class="th th-number">
									<td class="td-inner">数量</td>
								</div>
								<div class="th th-operation">
									<td class="td-inner">商品操作</td>
								</div>
								<div class="th th-amount">
									<td class="td-inner">合计</td>
								</div>
								<div class="th th-status">
									<td class="td-inner">交易状态</td>
								</div>
								<div class="th th-change">
									<td class="td-inner">交易操作</td>
								</div>
							</div>

							<div class="order-main">
								<div class="order-list">
									<!--不同状态的订单	-->
									<div class="order-status4">
										<div class="order-title">
											<div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
											<span>成交时间：2015-12-20</span>

										</div>
										<div class="order-content">
											<div class="order-left">
												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
																	<p class="info-little">颜色：12#川南玛瑙
																		<br/>包装：裸装 </p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															333.00
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span>2
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">
															<a href="refund.html">退款/退货</a>
														</div>
													</li>
												</ul>

											</div>
											<div class="order-right">
												<li class="td td-amount">
													<div class="item-amount">
														合计：676.00
														<p>含运费：<span>10.00</span></p>
													</div>
												</li>
												<div class="move-right">
													<li class="td td-status">
														<div class="item-status">
															<p class="Mystatus">交易成功</p>
															<p class="order-info"><a href="orderinfo.html">订单详情</a></p>
															<p class="order-info"><a href="logistics.html">查看物流</a></p>
														</div>
													</li>
													<li class="td td-change">
														<a href="commentlist.html">
															<div class="am-btn am-btn-danger anniu">
																评价商品</div>
														</a>
													</li>
												</div>
											</div>
										</div>
									</div>


									<div class="order-status4">
										<div class="order-title">
											<div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
											<span>成交时间：2015-12-20</span>
											<!--    <em>店铺：小桔灯</em>-->
										</div>
										<div class="order-content">
											<div class="order-left">
												<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic">
															<a href="#" class="J_MakePoint">
																<img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
															</a>
														</div>
														<div class="item-info">
															<div class="item-basic-info">
																<a href="#">
																	<p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
																	<p class="info-little">颜色：12#川南玛瑙
																		<br/>包装：裸装 </p>
																</a>
															</div>
														</div>
													</li>
													<li class="td td-price">
														<div class="item-price">
															333.00
														</div>
													</li>
													<li class="td td-number">
														<div class="item-number">
															<span>×</span>2
														</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation">
															<a href="refund.html">退款/退货</a>
														</div>
													</li>
												</ul>




											</div>

										</div>
									</div>


								</div>

							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
		<!--底部-->
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
	<aside class="menu">
		<ul>
			<li class="person">
				<a href="index.html">个人中心</a>
			</li>
			<li class="person">
				<a href="#">个人资料</a>
				<ul>
					<li> <a href="information.html">个人信息</a></li>
					<li> <a href="safety.html">安全设置</a></li>
					<li> <a href="address.html">收货地址</a></li>
				</ul>
			</li>
			<li class="person">
				<a href="#">我的交易</a>
				<ul>
					<li class="active"><a href="order.html">订单管理</a></li>
					<li> <a href="change.html">退款售后</a></li>
				</ul>
			</li>
			<li class="person">
				<a href="#">我的资产</a>
				<ul>
					<li> <a href="coupon.html">优惠券 </a></li>
					<li> <a href="bonus.html">红包</a></li>
					<li> <a href="bill.html">账单明细</a></li>
				</ul>
			</li>

			<li class="person">
				<a href="#">我的小窝</a>
				<ul>
					<li> <a href="collection.html">收藏</a></li>
					<li> <a href="foot.html">足迹</a></li>
					<li> <a href="comment.html">评价</a></li>
					<li> <a href="news.html">消息</a></li>
				</ul>
			</li>

		</ul>

	</aside>
</div>

</body>
</html>

