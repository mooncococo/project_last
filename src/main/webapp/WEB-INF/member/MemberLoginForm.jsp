<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../user/user_top_4.jsp" %>
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
		margin-top: 15vh;
	
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

</style>


<form method="post" action="loginForm.me">
	<table class="table">
		<tr>
			<td align="center" id="title">LOGIN</td>
		</tr>
		<tr>
			<td><input class="form-control" type="text" name="mid" value="" placeholder="아이디" id="inputbox">
			<input class="form-control" type="password" name="mpw" value="" placeholder="비밀번호" id="inputbox"></td>
		</tr>
		  
		<tr>
			<td>
				<input type="submit" value="로그인" class="btn btn-secondary btn-lg btn-block" style="background:#1c313a; border:none; " >
				<!-- <input type="reset" value="취소"> -->
				<input type="button" value="회원가입" class="btn btn-secondary btn-lg btn-block" onClick="register()"  style="background:#78909c; border:none; ">
				<!-- <input type="button" value="회원목록보기"  onClick="memberList()"> -->   
			</td>
		</tr>
		<tr>    
			<td align="center">  
				<a href="">아이디 찾기</a> | <a href="">비밀번호 찾기</a>
			</td>
		</tr>
	</table>
</form>




