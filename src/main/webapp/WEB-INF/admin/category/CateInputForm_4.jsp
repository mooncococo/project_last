<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
WEB-INF\admin\CateInputForm.jsp 입니다.<br>



<form action="" method="post" name="myform">
	<table border="1" width="350" align="center">
		<caption valign="top"><b>카테고리 등록</b></caption>	
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





