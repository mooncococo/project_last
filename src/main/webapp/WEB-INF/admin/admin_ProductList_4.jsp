<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="admin_top_4.jsp" %>
<%@ include file = "common.jsp" %>
WEB-INF\admin\product\ProductList.jsp 입니다.<br>

<form action="list.prd" method="get">
	<select name="whatColumn">
		<option value="all">전체 검색
		<option value="pnum">상품번호
		<option value="pname">상품이름
	</select>
	<input type="text" name="keyword" value="Jacket">
	<input type="submit" value="검색">
</form>

<form action="post" enctype="multipart/form-data">
<p align="center">상품 리스트(재고관리)</p>	
<table border="1" align="center">
	<tr>
		<th>상품번호</th>
		<th>상품이름</th>
		<th>이미지</th>
		<th>코드</th>
		<th>스펙</th>
		<th>가격</th>
		<th>적립포인트</th>
		<th>수정|삭제</th>
	</tr>	
	
	<c:forEach var="prd" items="${ list }"> 
	<tr>
		<td>${prd.pnum }</td>
		<td>
			<a href="detail.detail?pnum=${prd.pnum }">${prd.pname }</a>
		</td>
		<td>${prd.pimage }</td>
		<td>${prd.pcode }</td>
		<td>${prd.pspec }</td>
		<td>${prd.price }</td>
		<td>${prd.point }</td>
		<td>
		<a href="update.prd?pnum=${prd.pnum }&pageNumber=${pageInfo.pageNumber}&pageSize=${pageInfo.pageSize}">수정</a> | 
		<a href="delete.prd?pnum=${prd.pnum }&pageNumber=${pageInfo.pageNumber}">삭제</a></td>
	</tr>
	</c:forEach>


</table>
</form>
${pageInfo.pagingHtml }
