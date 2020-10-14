<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="admin_top_4.jsp" %>
WEB-INF\admin\product\ProductList.jsp 입니다.<br>

<form action="post" enctype="multipart/form-data">
<p align="center">상품 리스트(재고관리)</p>	
<table border="1" align="center">
	<tr>
		<th>이미지</th>
		<th>코드</th>
		<th>스펙</th>
		<th>가격</th>
		<th>적립포인트</th>
		<th>사이즈</th>
		<th>색상</th>
		<th>재고</th>
		<th>수정|삭제</th>
	</tr>	
	
	<tr>
		<td>이미지</td>
		<td>코드</td>
		<td>스펙</td>
		<td>가격</td>
		<td>적립포인트</td>
		<td>사이즈</td>
		<td>색상</td>
		<td>재고</td>
		<td>
		<a href="update.prd?">수정</a> | <a href="delete.prd?">삭제</a></td>
	</tr>



</table>
</form>
${pageInfo.pagingHtml }
