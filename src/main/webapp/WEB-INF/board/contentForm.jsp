<%@page import="board.model.BoardDao"%>
<%@page import="board.model.BoardBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.table td, .table th {
    padding: .75rem;
    vertical-align: middle;
    border-top: 1px solid #dee2e6;
}
</style>
content.jsp
<br>


	글내용 보기

		<table class="table" width="400" align="center" cellspacing="0">
			 <tbody>
			<tr> 
				<td width="125" align="center">글번호</td>
				<td width="125" align="center">${bean.num }</td>
				<td width="125" align="center">조회수</td>
				<td width="125" align="center">${bean.readcount }</td>

			</tr>
			<tr>
				<td width="125" align="center">작성자</td>
				<td width="125" align="center">${bean.writer }</td>
				<td width="125" align="center">작성일</td>
				<td width="125" align="center">${bean.regdate }
			</tr>
			<tr>
				<td width="125" align="center">글제목</td>
				<td colspan="3" align="center">${bean.subject }</td>


			</tr>
			<tr>
				<td width="125" height="350" align="center">글내용
				</td>
				<td colspan="3">${bean.content }</td>
			</tr>
<form action="content.bd" method="post">
<input type="hidden" name="cnum" value="${bean.num }">	
<input type="hidden" name="num" value="${bean.num }">	

			<tr>
				<td>이름<br><input type="text" name="cname" value=""></td>
				<td colspan="2"><textarea rows="8" cols="200" name="crecom"></textarea>
				</td>
				<td align="right"><input type="submit" value="등록하기"></td>
			</tr>
</form>
			<tr>
				<td>이름<br><input type="text" name="cname"
					value="${boardComments.cname }" disabled></td>
				<td colspan="2"><textarea rows="8" cols="200" name="crecom" disabled>${boardComments.crecom }</textarea>
				</td> 
				<td align="right"><input type="submit" value="등록하기"></td>
			</tr>

			<tr>
				<td colspan=4 align="center" height="30">
					<input type="button" value="글수정"
					onClick="location.href='update.bd?num=${bean.num }'">
					<input type="button" value="글삭제"
					onClick="location.href='reply.bd?num=${bean.num }&ref=${bean.ref }&re_level=${bean.relevel }&re_step=${bean.restep }'">
					<input type="button" value="목록보기"
					onClick="location.href='read.bd?num=${bean.num}'">
				</td>
			</tr>

		</tbody>
		</table>
	