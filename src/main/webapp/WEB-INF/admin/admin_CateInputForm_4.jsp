<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- WEB-INF\admin\category\CateInputForm.jsp 입니다.<br> -->
<%@ include file ="admin_top_4.jsp" %>
<%@ include file ="common.jsp" %>
<% 
	String code[] ={"Outer","Top","Blouse","Bottom","Dress","Skirt","Shoes","Bag","Acc"};

%>
<style type="text/css">
	.table{
		width: 25%;
		margin: 0 auto;
		margin-top: 15vh;
	}
	
	.table th{
		text-align: center;
	}
</style>

<form action="input.cate" method="post" name="myform">
	<table class="table">
		<tr>
			<th colspan="2">카테고리 등록</th>
		</tr>
		<tr>
			<td align="center">	
				<b>카테고리 대분류</b>	
			</td>
			
			<td>
				<select name="code">
			<c:forEach items="<%=code%>" var="i" begin="0" end="8">   
					 <option value="${i }">${i } 
					
					<!-- <option value="Outer">Outer 
					<option value="Top">Top 
					<option value="Blouse">Blouse 
					<option value="Bottom">Bottom 
					<option value="Dress">Dress 
					<option value="Skirt">Skirt 
					<option value="Shoes">Shoes 
					<option value="Bag">Bag 
					<option value="Acc">Acc -->
			</c:forEach>		 
				</select>
			</td>
		</tr>
		
		<tr>
			<td align="center">	
				<b>카테고리 소분류</b>	
			</td>
			
			<td>	
				<input type="text" name="cname">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="등록">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
	</form>	





