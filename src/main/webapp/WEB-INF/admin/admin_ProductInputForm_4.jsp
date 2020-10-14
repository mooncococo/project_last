<%@page import="admin.model.Category"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="admin_top_4.jsp" %>
<%@ include file = "common.jsp" %>
<script type="text/javascript">
/* function select() {
	//alert("select");
	const selected = $("#selects option:selected").val()
	let shirt = "t-shirt";
	
	if(selected == "Outer"){
		console.log("들어옴")
		$("#selects2").append("<option value="+shirt+">"+shirt);
	}
	console.log(selected)	
	
} */
</script>
<% 
	/* String code[] ={"Outer","Top","Blouse","Bottom","Dress","Skirt","Shoes","Bag","Acc"};
	List<Category> lists = (List<Category>)request.getAttribute("lists");
	out.println(lists.size());
	out.println(lists.get(0).getCname());
	out.println(lists.get(1).getCname());
	out.println(lists.get(2).getCname()); */

%>

WEB-INF\admin\product\ProductInputForm.jsp 입니다.<br>
<form action="input.prd" method="post" enctype="multipart/form-data">
<table border="1">
	<tr>
		<td>카테고리</td>
		<td>
			<select name="code" onChange="select()" id="selects">
			<c:forEach items="${lists }" var="lists" begin="0" end="${fn:length(lists) }">   
					 <option value="${lists.code }">${lists.code } 
			</c:forEach>		 
			</select>	
			<select name="pcate" id="selects2">
				<%-- <%
					if(code[0] == "Outer"){
						out.print("<option value="+lists.get(0).getCname()+">"+lists.get(0).getCname());
					}else if(code[1] == "Top"){
						out.print("<option value="+lists.get(2).getCname()+">"+lists.get(2).getCname());
					}
				%> --%>
				
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
</table>
</form>
