<%@page import="board.model.BoardDao"%>
<%@page import="board.model.BoardBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<script>
	/* 
	 $(document).ready(function(){
	 console.log('들어옴당')
	 })

	

	 function plus() {
	 let cname = $('input[name=cname]').val()
	 let crecom = $('textarea').val()
	 let cnum = $('input[name=cnum]').val()
	
	 location.href = "insert.com?cname="+cname+"&crecom="+crecom+"&cnum="+cnum;
	 } */
</script>
<style type="text/css">
body {
	width: 100%;
	text-align: center;
}

table {
	margin: 0 auto;
}
.content {
	margin-top: 20vh;
}
</style>

<%
	if(session.getAttribute("loginInfo2").equals("admin")){
%>
<body>
	<%@ include file="../admin/admin_top_4.jsp"%>
	<div>
	<h1><p align="center">글 내용보기</p></h1>
	<form action="content.bd" method="post">
	<input type="hidden" name="num" value="${bean.num }">
	<input type="hidden" name="ccnum" value="${bean.num }">
	
		<table class="table">
			 <tbody>
			<tr> 
				<td align="center">글번호</td>
				<td align="center">${bean.num }</td>
				<td align="center">조회수</td>
				<td align="center">${bean.readcount }</td>

			</tr>
			<tr>
				<td align="center">작성자</td>
				<td align="center">${bean.writer }</td>
				<td align="center">작성일</td>
				<td align="center">${bean.regdate }
			</tr>
			<tr>
				<td align="center">글제목</td>
				<td colspan="3" align="center">${bean.subject }</td>


			</tr>
			<tr>
				<td height="350" align="center" >글내용
				</td>
				<td colspan="3" align="center">${bean.content }</td>
			</tr>  

	
	

			<tr>
				<td><br><br><p align="center">이름</p><input type="text" name="cname" value="" vertical-align="middle"></td>
				<td colspan="2"><textarea rows="8" cols="200" name="crecom"></textarea>
				</td>
				<td align="right"><br><br><br><input type="submit" value="등록하기"></td>
			</tr>

			<tr>    
				<td><br><br><p align="center">이름</p><input type="text" name="cname"
					value="${boardComments.cname }" disabled></td>
				<td colspan="3"><textarea rows="8" cols="200" name="crecom" disabled>${boardComments.crecom }</textarea>
				</td> 
				
			</tr>

			<tr>
				<td colspan=4 align="center" height="30">
					<input type="button" value="글수정"
					onClick="location.href='update.bd?num=${bean.num }'">
					<input type="button" value="글삭제"
					onClick="location.href='delete.bd?num=${bean.num}'"> 
					<input type="button" value="목록보기"
					onClick="location.href='read.bd?num=${bean.num}'">
				</td>
			</tr>

		</tbody>
		</table>
		</form>
	</div>
	</body>
	<%
	} else {
	%>	
	<body>
		<%@ include file="../user/user_top_4.jsp"%>
		<div class="content">
		<h1><p align="center">글 내용보기</p></h1>
		<form action="content.bd" method="post">
			<input type="hidden" name="num" value="${bean.num }">
	<input type="hidden" name="ccnum" value="${bean.num }">
			<table class="table">
			
			 <tbody>
			<tr> 
				<td align="center">글번호</td>
				<td align="center">${bean.num }</td>
				<td align="center">조회수</td>
				<td align="center">${bean.readcount }</td>

			</tr>
			<tr>
				<td align="center">작성자</td>
				<td align="center">${bean.writer }</td>
				<td align="center">작성일</td>
				<td align="center">${bean.regdate }
			</tr>
			<tr>
				<td align="center">글제목</td>
				<td colspan="3" align="center">${bean.subject }</td>


			</tr>
			<tr>
				<td height="350" align="center">글내용
				</td>
				<td colspan="3" align="center">${bean.content }</td>
			</tr>  

<input type="hidden" name="cnum" value="${bean.num }">	
<input type="hidden" name="num" value="${bean.num }">	

			<tr>
				<td><br><br><p align="center">이름</p><input type="text" name="cname" value="" vertical-align="middle"></td>
				<td colspan="2"><textarea rows="8" cols="200" name="crecom"></textarea>
				</td>
				<td align="right"><br><br><br><input type="submit" value="등록하기"></td>
			</tr>

			<tr>
				<td><br><br><p align="center">이름</p><input type="text" name="cname"
					value="${boardComments.cname }" disabled></td>
				<td colspan="3"><textarea rows="8" cols="200" name="crecom" disabled>${boardComments.crecom }</textarea>
				</td> 
				
			</tr>
 
			<tr>
				<td colspan=4 align="center" height="30">
					<input type="button" value="글수정"
					onClick="location.href='update.bd?num=${bean.num }'">
 
					<input type="button" value="목록보기"
					onClick="location.href='read.bd?num=${bean.num}'">
				</td>
			</tr>

		</tbody>
		</table>
		</form>
		</div>
	</body>
	<%
	}
	%>	