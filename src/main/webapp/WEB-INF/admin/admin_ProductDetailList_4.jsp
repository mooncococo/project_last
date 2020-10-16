<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="admin_top_4.jsp" %>
<%@ include file = "common.jsp" %>
<script>
	function list() {
		location.href = "admin_ProductList_4.jsp";
	} 
	
	
</script>
<%

	String pnum = request.getParameter("pnum");
	String pcode = request.getParameter("pcode");
	String psize = request.getParameter("psize");
	out.println("pnum = "+pnum);
	out.println("pcode = "+pcode);
	out.println("psize = "+psize);
%>
WEB-INF\admin\product\ProductDetailList_4.jsp 입니다.<br>
<form action="detaillist.detail" method="get">
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
		<td>번호</td>		
		<td>상품번호</td>		
		<td>상품코드</td>
		<td>상품명</td>
		<td>사이즈</td>
		<td>색상</td>
		<td>재고</td>
		<td>수정 | 삭제</td>
	</tr>
	<c:forEach items="${lists }" var="detail">
	<tr>
		<td>${detail.dnum }</td>
		<td>${detail.pnum }</td>
		<td>${detail.pcode }</td>
		<td>${detail.pname }</td>
		<td>${detail.psize }</td>
		<td>${detail.pcolor}</td>
		<td>${detail.pstock }</td>
		<td>
			<a href="update.detail?dnum=${detail.dnum }&pageNumber=${pageInfo.pageNumber}&pageSize=${pageInfo.pageSize}">수정</a> |
			<a href="delete.detail?dnum=${detail.dnum }&pageNumber=${pageInfo.pageNumber}">삭제</a>
		</td>
	</tr>
</c:forEach>	
	
	
</table>
${pageInfo.pagingHtml }