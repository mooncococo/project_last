<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- WEB-INF\admin\category\CateInputForm.jsp 입니다.<br> -->
<%@ include file ="admin_top_4.jsp" %>



<form action="input.cate" method="post" name="myform">
	<table border="1" width="350" align="center">
		<div align="center"><p> 카테고리 등록 </p></div>	
		<tr>
			<td align="center">	
				<b>카테고리 대분류</b>	
			</td>
			
			<td>	
				<input type="text" name="code">
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





