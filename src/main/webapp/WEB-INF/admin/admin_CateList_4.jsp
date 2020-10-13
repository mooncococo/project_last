<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="admin_top_4.jsp" %>
<%@ include file = "common.jsp" %>
<script type="text/javascript">
	function insert(){
		location.href='input.cate'; 
	}
	function goUpdate(cnum,pageNumber,pageSize){
		location.href="update.cate?cnum="+cnum+"&pageNumber="+pageNumber+"&pageSize="+pageSize; 
	}
</script>

<!--  WEB-INF\admin\category\CateList.jsp 입니다.<br> -->

<form action="list.cate" method="get">
	<select name="whatColumn">
		<option value="all">전체 검색
		<option value="code">대분류
		<option value="cname">소분류
	</select>
	<input type="text" name="keyword" value="Jacket">
	<input type="submit" value="검색">
</form>

<table border="1">
	<tr>
		<th>번호</th>
		<th>카테고리 대분류</th>
		<th>카테고리 소분류</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>  
	
	<c:forEach var="cate" items="${ lists }"> 
	<tr>
		<td>${ cate.cnum }</td>
		<td>${ cate.code }</td>
		<td>${ cate.cname }</td>
		<td>
		<input type="button" value="수정" onClick="goUpdate('${cate.cnum }','${pageInfo.pageNumber}','${pageInfo.pageSize}')"/>
		</td>
		<td><a href="delete.cate?cnum=${cate.cnum }&pageNumber=${pageInfo.pageNumber}">삭제</a></td>
	</tr>
	
	</c:forEach>
	
	<tr>
		<td colspan="5" align="right">
			<input type="button" value="추가하기" onclick="insert()">
		</td>
	</tr>
	
</table>

${pageInfo.pagingHtml }