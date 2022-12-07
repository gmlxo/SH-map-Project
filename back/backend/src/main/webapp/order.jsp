<%@page import="java.sql.SQLException"%>
<%@page import="util.JdbcUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="work.Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./css/order.css">
<link rel="stylesheet" href="./css/headerCss.css">
<!-- 토스 페이먼츠 연결 -->
<script src="https://js.tosspayments.com/v1"></script>

<title>Document</title>
</head>

<body
	style="-webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none">
	<%@ include file="./view/header.jsp"%>
	<%
	if(id == null) {
		out.println("<script>alert('로그인을 진행 해주세요!');</script>");
		out.print("<script> history.back() </script>");
	}
	String taste, color, text, want, id2;
	Order order = new Order();
	int n = 0;
	int cake = 0;

	//cake = request.getParameter("cake");
	taste = request.getParameter("taste");
	color = request.getParameter("color");
	text = request.getParameter("text");
	want = request.getParameter("want");
/*
	if (taste.isEmpty() && color.isEmpty()) {
		out.println("<script>alert('필수선택 종목을 확인해주세요');</script>");
		out.print("<script> history.back() </script>");

	} else
		*/
		

	//if (n > 0)
	//	response.sendRedirect("index.jsp");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT phone, addr, m_addr, d_addr, name FROM login WHERE id=?";
		boolean result = false;

		conn = JdbcUtil.getConnection(); // JDBC 드라이버 메모리 로딩, DB 연결
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
	
	%>

	<div id="main">
		<div id="order">
			<div class="order-wrap">
				<div class="order-main-tit">
					<div class="tit">주문서</div>
				</div>
				<%
                                id2 = request.getParameter("id");
                        		Connection conn1 = null;
                        		PreparedStatement pstmt1 = null;
                        		ResultSet rs1 = null;
                        		cake = Integer.parseInt(id2);
                        		
                        		n = order.insertOrder(id, taste, color, text, want, cake);
                        		
                        		String sql1 = "select * from cakeinfor where id = ?";
                        		boolean result1 = false;

                        		conn1 = JdbcUtil.getConnection(); // JDBC 드라이버 메모리 로딩, DB 연결
                        		try {
                        			pstmt1 = conn1.prepareStatement(sql1);
                        			pstmt1.setString(1, id2);
                        			rs1 = pstmt1.executeQuery();
                        			while (rs1.next()) {
                        				%>
				<div class="order-content">
					<div class="content-wrap">
						<div class="content-tit">
							<div class="tit">주문상품</div>
						</div>
						<hr>
						<ul class="content-list">
							<li class="content-item">
								<div class="img">
									<img src="./image/<%= rs1.getString("img") %>" alt="주문상품"
										class="content-img">
								</div>
								<div class="name">

									<div class="content-inf"><%= rs1.getString("name")%>
										<span class="text">(문구 : <%= text %>)
										</span>
									</div>
									<div class="content-inf-sub"><%= taste %>
										/
										<%= color %>
										/
										<%= want %></div>
								</div>
								<div class="ea">
									<span class="gae">1개</span>
								</div>
								<div class="info-price">
									<%= rs1.getInt("cell") %>
									WON
								</div>
							</li>
						</ul>
					</div>
				</div>
				<% 
                        			}
                        		} catch (SQLException e) {
                        			e.printStackTrace();
                        		} finally {
                        			JdbcUtil.close(conn1, pstmt1, rs1);
                        		}
                        	
                        		
                                %>
				<div class="order-user">
					<div class="order-user">
						<div class="user-wrap">
							<div class="user-tit">
								<div class="tit">주문자 정보</div>
							</div>
							<hr>
							<%
								while (rs.next()) {
							%>
							<div class="user-infor">
								<table class="user-table">
									<tr>
										<th class="user-fr">보내는 분</th>
										<td class="user"><%=id%></td>
									</tr>
									<tr>
										<th class="phone-fr">휴대폰</th>
										<td class="phone"><%= rs.getString("phone")%></td>
									</tr>
								</table>
							</div>

						</div>
					</div>

					<div class="order-post">
						<div class="post-wrap">
							<div class="post-tit">
								<div class="tit">배송 정보</div>
							</div>
							<hr>
							<div class="post-infor">
								<table class="post-table">
									<tr>
										<th class="post-fr">배송지</th>
										<td class="post"><%= rs.getString("addr")%> <%= rs.getString("m_addr")%>
											<%= rs.getString("d_addr")%></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<%
							}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
                    %>

					<div class="order-pay">
						<div class="pay-wrap">
							<div class="pay-tit">
								<div class="tit">결제금액</div>
							</div>
							<hr>
							<%
								int postSell = 3000;
                        		Connection conn1 = null;
                        		PreparedStatement pstmt1 = null;
                        		ResultSet rs1 = null;
                        		
                        		String sql1 = "select * from cakeinfor where id = ?";
                        		boolean result1 = false;

                        		conn1 = JdbcUtil.getConnection(); // JDBC 드라이버 메모리 로딩, DB 연결
                        		try {
                        			pstmt1 = conn1.prepareStatement(sql1);
                        			pstmt1.setInt(1, cake);
                        			rs1 = pstmt1.executeQuery();
                        			while (rs1.next()) {
                        				%>
							<div class="pay-infor">
								<div class="goods">
									<div class="goods-fr one"><%= rs1.getInt("cell") %>원
									</div>
									<div class="goods-ba two">상품금액</div>
								</div>
								<div class="plus">+</div>
								<div class="postsell">
									<div class="postsell-fr one"><%= postSell %>원</div>
									<div class="postsell-ba two">배송비</div>
								</div>
								<div class="end">=</div>
								<div class="all-sell">
									<div class="all-sell-fr one"><%= rs1.getInt("cell") + postSell %></div>
									<div class="all-sell-ba two">최종 결제금액</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="payment">
					<button id="payment-button"><%= rs1.getInt("cell") + postSell %>원 결제하기</button>
				</div>
				<script>
		    // 테스트 키
		      var clientKey = 'test_ck_0Poxy1XQL8RKJLkGl7437nO5Wmlg'
		      // 토스 페이먼츠 연결키
		      var tossPayments = TossPayments(clientKey)
		      var button = document.getElementById('payment-button') // 결제하기 버튼
		   	// 클릭했을 때 발생하는 이벤트
		      button.addEventListener('click', function () {
		    	 // 사용자 정보
		        tossPayments.requestPayment('카드', {
		        	// 가격 // 이거 이상 건들지 말래
		          amount: 35000,
		          // 주문자 아이디
		          orderId: 'Si6Iw4eaPJ9X6shxjgkfU', // 건들지 말래 
		          // 주문 내역
		          orderName: 'Music is My Life...',
		          // 이름
		          customerName: '박토스', // 건들지 말래
		          // 성공하면 어디로 갈지(경로 설정)
		          successUrl: 'http://localhost:8090/orderOk.jsp',
		          // 실패하면 어디로 갈지(경로 설정)
		          failUrl: 'http://localhost:8090/fail',
		        })
		      })
		    </script>
		    <% 
                        			}
                        		} catch (SQLException e) {
                        			e.printStackTrace();
                        		} finally {
                        			JdbcUtil.close(conn1, pstmt1, rs1);
                        		}
                        	
                        		
                                %>
			</div>
		</div>
	</div>
	<%@ include file="./view/footer.jsp"%>
</body>
</html>