<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="admin_top_4.jsp" %>
<%@ include file = "common.jsp" %>
WEB-INF\admin\product\ProductInputForm.jsp 입니다.<br>

<form action="input.prd" method="post" enctype="multipart/form-data">
<table border="1">
	<tr>
		<td>카테고리</td>
		<td>
			<select name="pcate">
				<c:forEach var="cate" items="${lists }">
					<option value="${ cate.code}">${ cate.code}</option>
				</c:forEach>
			</select>
			
			<select name="pcate_t">
				<c:forEach var="cate" items="${lists }">
					<option value="${ cate.cname}">${ cate.cname}</option>
				</c:forEach>
			</select>
  		</td>
	</tr>
	
	<tr>
		<td>상품명</td>
		<td>
			<input type="text" name="pname" value="">
			
		</td>
	</tr>
	
	<tr>
		<td>상품이미지</td>
		<td> 
			<input type="file" name="pimage">
		</td>
	</tr>
	
	<tr>
		<td>상품가격</td>
		<td>
			<input type="text" name="price" value="">원
		</td>		
	</tr>
	
	<tr>
		<td>적립포인트</td>
		<td>
			<input type="text" name="point" value="">point
		</td>
	</tr>
	
	<tr>
		<td>상품스펙</td>
		<td>
			<input type="checkbox" name="pspec" value="new">new 	
			<input type="checkbox" name="pspec" value="normal">normal 	
			<input type="checkbox" name="pspec" value="sale">sale 	
		</td>
	</tr>
	
	<tr>
		<td>비고</td>
		<td>
			<textarea rows="10" cols="39" maxlength="50"> pnote</textarea>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="상품등록">
			<input type="reset" value="취소">
		</td>
	</tr>
</form>
</table>
