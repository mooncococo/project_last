<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- WEB-INF\admin\category\CateInputForm.jsp 입니다.<br> -->
<%@ include file ="admin_top_4.jsp" %>
<%@ include file = "common.jsp" %>

<form:form commandName="category" action="update.cate" method="post" name="myform">
<input type="hidden" name="cnum" value="${ category.cnum }">
<input type="hidden" name=pageNumber value="${pageNumber }">
<input type="hidden" name=pageSize value="${pageSize }">	
	<table border="1" width="350" align="center">
		<div align="center"><p> 카테고리 수정 </p></div>	
		<tr>
			<td align="center">	
				<b>카테고리 대분류</b>	
			</td>
			
			<td>	
				<input type="text" name="code" value="${ category.code }">
				<form:errors cssClass="err" path="code"/>
			</td>
		</tr>
		
		<tr>
			<td align="center">	
				<b>카테고리 소분류</b>	
			</td>
			
			<td>	
				<input type="text" name="cname" value="${ category.cname }">
				<form:errors cssClass="err" path="cname"/>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수정">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
	</form:form>	





