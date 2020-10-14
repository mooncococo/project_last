<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<!-- BootstrapCDN 부트스트랩 필요하면  아래 코드 복사해서 사용하기-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<!-- 여기까지  -->
<style type="text/css">
	.top{
		height:18vh;  
		text-align: center;
		padding-top: 7vh;
		font-weight: bold;
		font-size: 2em;
		width: 80%;
		margin: 0 auto;
		
		/* padding-right: 10vw;
		padding-left: 10vw; */
		position: relative;
		overflow: hidden;
	/* 	background-color: #efe4d2; */
	} 
	
	.nav-color{
		/* background: #fff3e0; */
	}
	 
	.nav-item{
		font-weight: bold;
		margin-left: 40px;
	}
	.icon{
		position:absolute;
		bottom:0;
		right:0;
		
	}
	.icon img{
		width: 30px; 
		height: 30px; 
		float: right;
	}
	
	.icon a{
		
	}
</style>
</head>
<body>
	<!-- 사용자페이지 top부분 임포트 해서 사용  -->
	
	<%
		String viewLogin = request.getContextPath() + "/loginForm.me";
	%>
	
	<div class = "top">
		<p>Sorority</p>
		<div class="icon">
			<a href="#"><img src="<c:url value="/resources/images/로그아웃수정후.png"/>"/></a>
			<a href="#"><img src="<c:url value="/resources/images/주문내역.png"/>"/></a>
			<a href="#"><img src="<c:url value="/resources/images/장바구니.png"/>"/></a>
			<a href="<%=viewLogin%>"><img src="<c:url value="/resources/images/로그인,회원.png"/>"/></a>
		</div>
	</div>  
		
	
	
	
<nav class="navbar navbar-expand navbar-light nav-color" style="padding-right: 10vw;
		padding-left: 10vw; ">

  <a class="navbar-brand" href="#">Sorority</a>
 
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto"> 
      <li class="nav-item active">
        <a class="nav-link" href="#">Best <span class="sr-only">(current)</span></a><!-- 랭킹도 같이 -->
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Outer</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Top</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Blouse</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Bottom</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Dress</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Skirt</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">Shoes</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">Bag</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">Acc</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          contact us
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         <a class="dropdown-item" href="#">회사소개</a>
          <a class="dropdown-item" href="#">공지사항</a>
          <a class="dropdown-item" href="#">문의사항</a>
          <a class="dropdown-item" href="#">오시는 길</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div> 
</nav>




</body>
</html>