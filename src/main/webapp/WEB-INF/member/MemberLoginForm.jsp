<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../user/user_top.jsp" %>
<script type="text/javascript">
	function register(){
		location.href="registerForm.me"; // => MemberRegisterController.java
	}
	
	function memberList(){
		location.href="list.me";
	}
</script>

<style type="text/css">
	.table{
		width: 25%;
		margin: 0 auto;
<<<<<<< HEAD
		margin-top: 30vh;
<<<<<<< HEAD
	
=======
>>>>>>> d04e373e7425418b863b4924db661de1789e3505
=======
		margin-top: 20vh;
>>>>>>> 7dfddfec0d9f93cefc3b6fbbf0dd7535b417cd3f
	}
	
	.btn{
		border: 1px solid black;
	}
	
	#title{
		font-weight: bold;
		font-size: 20px;
		color: gray; 
	}
	
	#inputbox{
		height: 48px;
		margin-bottom: 10px;
	}
}
</style>

<form method="post" action="loginForm.me">
	<table class="table">
		<tr>
			<td align="center">
				<font size="5" color="#616161"><b>L O G I N</b></font>    
			</td>
		</tr>
		<tr>
			<td><input class="form-control" type="text" name="mid" value="${mid }" placeholder="아이디" id="inputbox">
			<input class="form-control" type="password" name="mpw" value="" placeholder="비밀번호" id="inputbox"></td>
		</tr>
		  
		<tr>
			<td>
				<input type="submit" value="로그인" class="btn btn-secondary btn-lg btn-block" style="background:#373737; border:none; " >
				<!-- <input type="reset" value="취소"> -->
				<input type="button" value="회원가입" class="btn btn-secondary btn-lg btn-block" onClick="register()"  style="background:#8e8e8e; border:none; ">
				<!-- <input type="button" value="회원목록보기"  onClick="memberList()"> -->   
			</td>
		</tr>
		<tr>    
			<td align="center">  
				<a href="<%=request.getContextPath() + "/findId.me"%>">아이디 찾기</a> | 
				<a href="<%=request.getContextPath() + "/findPw.me"%>">비밀번호 찾기</a>
			</td>
		</tr>
	</table>
</form>

