<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user_productDetail.jsp</title>
<style type="text/css">
	.user_content {
		padding-left: 15vw;
		padding-right: 15vw;
		padding-top: 5vh;
	}
	
	#btn{
		border: 1px solid #000;
		width: 16vw;
	}
	
	#card-body{
		padding-left: 100px;
		padding-right: 100px;
	
	}
	.card-text{margin-top:15%}
	.span_area, .select_area{float:left; width:50%}
	.select_area select{height:39px; width:70%}
	.span_area p{
		font-size: 26px;
	}
	.product_result, .buy_btn{float:left; width:100%}
	.card-title{text-align:left;}
	
	.price-text{
		padding-top: 15px;
	}
	.price-text span{
		font-size: 30px;
	}
</style>
</head>
<body>
	<%@include file="user_top.jsp"%>

	<div class="user_content">
		<!-- 유저 컨텐트 내용 -->
		<div class="card mb-3" style="max-width: 85vw;"> 
			<div class="row no-gutters">
				<div class="col-md-4"> 
					<img src="http://www.merryaround.co.kr/web/product/big/202010/3bb9f35f8f4c8f8b0f9dbe43204add56.webp" class="card-img" alt="...">
				</div>
				<div class="col-md-8">
					<div class="card-body" id="card-body">
						<h2 class="card-title">
							<B>상품 이름 나오게 하세요</B>
						</h2>
						
						<div class="price-text">
							<span>
								￦20,000
							</span>
						</div>
						
						<div class="card-text">
							
							<div class="span_area">
								<p>COLOR :</p> 
								<p>SIZE :</p>
							</div>
							

							<div class="select_area">
								<p>
								<select>
									<option>red</option>										
									<option>black</option>										
									<option>green</option>										
								</select>
								</p>
								
								<p>
								<select>
									<option>s</option>										
									<option>m</option>										
									<option>x</option>										
									<option>xl</option>										
									<option>xxl</option>										
								</select>
								</p>
							</div>
							
						</div>	
						<div class="product_result">
							<p>주문이 추가 되게 하세요.</p>
						</div>
						
						
						
					<div class="buy_btn">
						<button type="button" class="btn btn-light" id="btn">BUY IT NOW</button>
						<button type="button" class="btn btn-light" id="btn" style="margin-left: 20px;">ADD TO CART</button>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>