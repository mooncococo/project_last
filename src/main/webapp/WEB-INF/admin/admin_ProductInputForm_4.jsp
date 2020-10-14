<%@page import="admin.model.Category"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="admin_top_4.jsp" %>
<%@ include file = "common.jsp" %>
<script>
/*function select() {
	
	//alert("select");
	const selected = $("#selects option:selected").val()
	let shirt = "t-shirt";
	
	if(selected == "Outer"){
		console.log("들어옴")
		$("#selects2").append("<option value="+shirt+">"+shirt);
	}
	console.log(selected)	
	
} */

//컨트롤러에서 데이터 받기
var jsonData = JSON.parse('${lists}');
console.log(jsonData);

var cate1Arr = new Array();
var cate1Obj = new Object();

//1차 분류 셀렉트 박스에 삽입할 데이터 준비
for(var i = 0; i < jsonData.length; i++) {

if(jsonData[i].level == "0") {
cate1Obj = new Object();  //초기화
cate1Obj.code = jsonData[i].code;
cate1Obj.cname = jsonData[i].cname;
cate1Arr.push(cate1Obj);
}
}

//1차 분류 셀렉트 박스에 데이터 삽입
var cate1Select = $("select.cate1")

for(var i = 0; i < cate1Arr.length; i++) {
cate1Select.append("<option value='" + cate1Arr[i].code + "'>"
   + cate1Arr[i].cname + "</option>"); 
}

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
			<select name="code" class="cate1">
				<option value="">전체</option>
			<%-- <c:forEach items="${lists }" var="lists" begin="0" end="${fn:length(lists) }">   
					 <option value="${lists.code }">${lists.code } 
			</c:forEach> --%>		 
			</select>	
			<select name="pcate" class="cate2">
				<%-- <%
					if(code[0] == "Outer"){
						out.print("<option value="+lists.get(0).getCname()+">"+lists.get(0).getCname());
					}else if(code[1] == "Top"){
						out.print("<option value="+lists.get(2).getCname()+">"+lists.get(2).getCname());
					}
				%> --%>
				<option value="">전체</option>
				
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
