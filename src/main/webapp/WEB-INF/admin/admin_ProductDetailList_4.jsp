<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="admin_top_4.jsp" %>
<%@ include file = "common.jsp" %>
<script>
	function insert() {
		location.href = "detail.prd";
	} 
	
	
</script>

WEB-INF\admin\product\ProductDetailList_4.jsp 입니다.<br>
<form action="detailList.detail" method="get">
	<select name="whatColumn">
		<option value="all">전체 검색
		<option value="pnum">상품번호
		<option value="pname">상품이름
	</select>
	<input type="text" name="keyword" value="1001">
	<input type="submit" value="검색">
</form>
<table border="1">
	<tr>
		<td>상품번호</td>		
		<td>상품코드</td>
		<td>상품명</td>
		<td>사이즈</td>
		<td>색상</td>
		<td>재고</td>
	</tr>
	<c:forEach items="${lists }" var="detail">
	<tr>
		<td>${detail.pnum }</td>
		<td>${detail.pcode }</td>
		<td>${detail.pname }</td>
		<td>${detail.psize }</td>
		<td>${detail.pcolor}</td>
		<td>${detail.pstock }</td>
	</tr>
</c:forEach>	
	
	
	<tr>
		<td colspan="6" align="right">
			<input type="button" value="추가하기" onClick="inset()">
		
		</td>
	</tr>
</table>

${pageInfo.pagingHtml }