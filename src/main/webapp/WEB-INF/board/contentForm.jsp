<%@page import="board.model.BoardDao"%>
<%@page import="board.model.BoardBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="color.jsp"%>
<%@ include file="../admin/admin_top_4.jsp"%>
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
</style>
content.jsp
<br>
<body bgcolor="<%=bodyback_c%>">


	글내용 보기

	
	

		<table border="1" width="450" align="center" cellspacing="0">
			<tr>
				<td width="125" align="center" bgcolor="<%=value_c%>">글번호</td>
				<td width="125" align="center">${bean.num }</td>
				<td width="125" align="center" bgcolor="<%=value_c%>">조회수</td>
				<td width="125" align="center">${bean.readcount }</td>

			</tr>
			<tr>
				<td width="125" align="center" bgcolor="<%=value_c%>">작성자</td>
				<td width="125" align="center">${bean.writer }</td>
				<td width="125" align="center" bgcolor="<%=value_c%>">작성일</td>
				<td width="125" align="center">${bean.regdate }
			</tr>
			<tr>
				<td width="125" align="center" bgcolor="<%=value_c%>">글제목</td>
				<td colspan="3" align="center">${bean.subject }</td>


			</tr>
			<tr>
				<td width="125" height="500" align="center" bgcolor="<%=value_c%>">글내용
				</td>
				<td colspan="3">${bean.content }</td>
			</tr>
<form action="content.bd" method="post">
<input type="hidden" name="cnum" value="${bean.num }">	
<input type="hidden" name="num" value="${bean.num }">	

			<tr>
				<td>이름&nbsp;<input type="text" name="cname" value=""></td>
				<td colspan="2"><textarea rows="10" cols="10" name="crecom"></textarea>
				</td>
				<td><input type="submit" value="등록하기"></td>
			</tr>
</form>
			<tr>
				<td>이름&nbsp;<input type="text" name="cname"
					value="${boardComments.cname }"></td>
				<td colspan="2"><textarea rows="10" cols="10" name="crecom">${boardComments.crecom }</textarea>
				</td>
				<td><input type="text" value='<fmt:formatDate pattern="yyyy-MM-dd" value="${boardComments.cdate }"/>' ></td>
			</tr>

			<tr>
				<td colspan=4 align="center" height="30" bgcolor="<%=value_c%>">
					<input type="button" value="글수정"
					onClick="location.href='update.bd?num=${bean.num }'">
					<input type="button" value="글삭제"
					onClick="location.href='delete.bd?num=${bean.num}'"> 
					<input type="button" value="답글쓰기"
					onClick="location.href='reply.bd?num=${bean.num }&ref=${bean.ref }&re_level=${bean.relevel }&re_step=${bean.restep }'">
					<input type="button" value="목록보기"
					onClick="location.href='read.bd?num=${bean.num}'">
				</td>
			</tr>


		</table>
	