<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user_company.jsp</title>
<style type="text/css">

	.user_company_div{
		margin-top: 23vh;
		padding-right: 10vw;
		padding-left: 10vw; 
	}
	
	
	.user_comapny_mimg{
		position: relative;
		overflow: hidden;
		height: 40vh;
	}

</style>
</head>
<body>
	<%@include file="user_top.jsp" %>
	
	
	
	<div class="user_company_div">
		<div class="user_comapny_mimg">
			<img src="<c:url value="/resources/images/회사소개이미지.jpg"/>" />
		</div>
		
		<div>
			<p>
				<h1>비전</h1>
				사랑,용기,존중
			</p>
		</div>
	</div>
	

</body>
</html>