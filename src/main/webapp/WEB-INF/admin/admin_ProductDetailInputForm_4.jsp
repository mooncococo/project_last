<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="admin_top_4.jsp" %>
<%@ include file ="common.jsp" %>
WEB-INF\admin\product\ProductDetailInputForm_4.jsp 입니다.<br>

<form action="detail.detail" method="post">
<input type="hidden" name="pnum" value="${product.pnum }">
<input type="hidden" name="pcode" value="${product.pcode }">
<table border="1">
	<tr>
		<td>상품명</td>
		<td><input type="text" name="pname" value="${product.pname }"></td>
	</tr>
	
	<tr>
		<td>사이즈</td>
		<td>
			<input type="text" name="psize" value="">
		</td>
	</tr>
	
	<tr>
		<td>색상</td>
		<td> 
			<input type="text" name="pcolor" value="">
		</td>
	</tr>
	
	<tr>
		<td>재고</td>
		<td>
			<input type="text" name="pstock" value="">개
		</td>		
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="등록 후 리스트보기">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>

