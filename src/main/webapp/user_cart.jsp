<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user_cart.jsp</title>
<style type="text/css">
	.user_cart_main{
		margin-top: 23vh;
		padding-right: 10vw;
		padding-left: 10vw;
	}
	
	
	
	h3 {
		text-align: center;
	}
	
	.cartlist{
		margin-top: 5vh;
	}
	
	.table img{
		width: 100px;
		height: 130px;
	}
	
	thead{
		text-align: center;
		background-color: #f8f8f8;
	}
	
	tbody {
		text-align: center;
	}
	
	
	.check_out{
		margin-top: 15vh;
	}
	
	
	.cbtn {
		width: 150px;
	
	}
	
	
</style>
</head>
<body>
	<%@include file="user_top.jsp" %>
	<div class="user_cart_main">
	
		<h3>SHOPPING CART</h3>
		<!-- 카트리스트 목록 -->
		<div class="cartlist">
			<table class="table">
	  			<thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">이미지</th>
				      <th scope="col">상품정보</th>
				      <th scope="col">판매가</th>
				      <th scope="col">수량</th>
				      <th scope="col">적립금</th>
				      <th scope="col">배송비</th>
				      <th scope="col">합계</th>
				      <th scope="col">선택</th>
				    </tr>
	  			</thead>
	  			<tbody>
				    <tr>
				      <th scope="row" style="vertical-align: middle;">1</th>
				      <td>
				      	<img src="<c:url value="/resources/images/test2.jpg"/>" />
				      </td>
				      <td style="vertical-align: middle;">무스탕</td>
				      <td style="vertical-align: middle;">￦30,000</td>
				      <td style="vertical-align: middle;">50</td>
				      <td style="vertical-align: middle;">300 point</td>
				      <td style="vertical-align: middle;">￦2,500</td>
				      <td style="vertical-align: middle;">￦32,500</td>
				      <td style="vertical-align: middle;">
				      	<button type="button" class="btn btn-light">주문하기</button>
				      	<button type="button" class="btn btn-light">삭제</button>
				      </td>
				    </tr>
	  			</tbody>
			</table>
		</div>
		
		
		<div class="check_out">
			<table class="table">
	  			<thead>
				    <tr>
				      <th scope="col">총 상품금액</th>
				      <th scope="col">총 배송비</th>
				      <th scope="col">결제 예정 금액</th>
				    </tr>
	  			</thead>
	  			<tbody>
				    <tr>
				      <th scope="row" style="vertical-align: middle;">￦80,000</th>
				      <td style="vertical-align: middle;">￦2,500</td>
				      <td style="vertical-align: middle;">￦82,500</td>
				    </tr>
				    <tr>
				    	<td colspan="3">
				    		<button type="button" class="btn btn-primary cbtn">상품주문</button>
				    		&nbsp;
				    		<button type="button" class="btn btn-secondary cbtn">쇼핑계속하기</button>
				    	</td>
				    </tr>
	  			</tbody>
			</table>
		</div>
	</div>	
</body>
</html>