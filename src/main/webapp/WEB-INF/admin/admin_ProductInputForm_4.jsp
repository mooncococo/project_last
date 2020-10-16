<%@page import="admin.model.Category"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="admin_top_4.jsp" %>
<%@ include file = "common.jsp" %>
<% 
	 String code[] ={"Outer","Top","Blouse","Bottom","Dress","Skirt","Shoes","Bag","Acc"};
	 String Outer[] = {"JUMPER","MUSTANG","COAT","JACKET"};
	 String Top[] = {"TEE","KNIT","SWEATSHIRT&HOODY","STRIPE"};
	 String Blouse[] = {"BLOUSE","SHIRT"};
	 String Bottom[] = {"DENIM","SHORTS","COTTON&SLACKS"};
	 String Dress[] = {"MINI","LONG"};
	 String Skirt[] = {"MINI","LONG"};
	 String Shoes[] = {"ALL"};
	 String Bag[] = {"BACK","SHOULDER","ETC"};
	 String Acc[] = {"JEWELRY","HAT","MUFFLER&GLOVES","ETC"};

	// List<Category> lists = ( List<Category> )request.getAttribute("lists");

%>
	<!-- 
function select() {
	
	//alert("select");
	const selected = $("#selects option:selected").val()
	let shirt = "t-shirt";
	
	if(selected == "Outer"){
		console.log("들어옴")
		$("#selects2").append("<option value="+shirt+">"+shirt);
	}
	console.log(selected)
	
	
	$('#selects2 option').attr('selected', 'selected')
	//$(#selects2).empty();
 -->
<script type="text/javascript">
var f_selbox  = new Array('Outer','Top','Blouse','Bottom','Dress','Skirt','Shoes','Bag','Acc');
var s_selboxText = new Array();
s_selboxText[0] = new Array('JUMPER','MUSTANG','COAT','JACKET');
s_selboxText[1] = new Array("TEE","KNIT","SWEATSHIRT&HOODY","STRIPE");
s_selboxText[2] = new Array("BLOUSE","SHIRT");
s_selboxText[3] = new Array("DENIM","SHORTS","COTTON&SLACKS");
s_selboxText[4] = new Array("MINI","LONG");
s_selboxText[5] = new Array("MINI","LONG");
s_selboxText[6] = new Array("ALL");
s_selboxText[7] = new Array("BACK","SHOULDER","ETC");
s_selboxText[8] = new Array("JEWELRY","HAT","MUFFLER&GLOVES","ETC");

function init() {
	
	f_sel = document.myform.cate1;
	s_sel = document.myform.cate2;
	

	f_sel.options[0] = new Option("선택");
	s_sel.options[0] = new Option("선택");
	
	for(var i=0;i<f_selbox.length;i++) {
		f_sel.options[i+1] = new Option(f_selbox[i]);
	}
} //init
	

function firstChange() {
		
	//alert($("#cate1 option:selected").val());

		f_sel = document.myform.cate1;
		s_sel = document.myform.cate2;
		
		f_selIndex = f_sel.selectedIndex; // 선택:0  여성복:1	
	
	
		for(var i=s_sel.length-1;i>0;i--) {
			
			s_sel.options[i] = null;
			
			}
	
		
		for(var i=0;i<s_selboxText[f_selIndex-1].length;i++) {
			s_sel.options[i+1] = new Option(s_selboxText[f_selIndex-1][i]);
			
		}
		
	} //firstChange
	

	
	
</script>
WEB-INF\admin\product\ProductInputForm.jsp 입니다.<br>
<body onLoad="init()">
<form:form commandName="product" action="input.prd" method="post" enctype="multipart/form-data" name="myform">
<table border="1" >
	<tr>
		<td>카테고리</td>
		<td>
			<select name="pcode" id="cate1" onChange="firstChange()">
 			<!--<c:forEach items="" var="i" begin="0" end="9">   
					 <option value="${i }">${i} 
			</c:forEach> -->
			</select>	
			<form:errors cssClass="err" path="code" />
			<select name="pcate" id="cate2">
				<option value="">	
			</select>
			<form:errors cssClass="err" path="pcate" />
<%--
			<select name="code" class="cate1">
 			<c:forEach items="${lists }" var="lists" begin="0" end="${fn:length(lists) }">   
					 <option value="${lists.code }">${lists.code } 
			</c:forEach>
			</select>	
			
			 --%>		 	
				
  		</td>
	</tr>
	
	<tr>
		<td>상품명</td>
		<td>
			<input type="text" name="pname" value="">
			<form:errors cssClass="err" path="pname" />
		</td>
	</tr>
	
	<tr>
		<td>상품이미지</td>
		<td> 
			<input type="file" name="upload">
			<form:errors cssClass="err" path="pimage" />
		</td>
	</tr>
	
	<tr>
		<td>상품가격</td>
		<td>
			<input type="text" name="price" value="">원
			<form:errors cssClass="err" path="price" />
		</td>		
	</tr>
	
	<tr>
		<td>적립포인트</td>
		<td>
			<input type="text" name="point" value="">point
			<form:errors cssClass="err" path="point" />
		</td>
	</tr>
	
	<tr>
		<td>상품스펙</td>
		<td>
			<input type="radio" name="pspec" value="new">new 	
			<input type="radio" name="pspec" value="normal">normal 	
			<input type="radio" name="pspec" value="sale">sale 
			<form:errors cssClass="err" path="pspec" />
		</td>
	</tr>
	
	<tr>
		<td>비고</td>
		<td>
			<textarea rows="10" cols="39" maxlength="50" name="pnote"> pnote</textarea>
			<form:errors cssClass="err" path="pnote" />
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="상품등록">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form:form>
</body>





<%-- 
<!DOCTYPE HTML>
<html>
<head>
	<title>상품 추가 화면</title>
	<meta charset="UTF-8">
	<style type="text/css">
		.err{
		font-size: 9pt;
		color: red;
		font-weight: bold;
		}
	</style>
</head>
<body>
WEB-INF\admin\product\ProductInputForm.jsp 입니다.<br>
<form:form commandName="product" action="input.prd" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td>카테고리</td>
			<td>
				<select name="code" id="selects">
					<c:forEach var="cate" items="${lists }">
						<option value="${ cate.code}">${ cate.code}</option>
					</c:forEach>
				</select>
				
				<select name="pcate" id="selects2">
					<c:forEach var="cate" items="${lists }">
						<option value=""></option>
					</c:forEach>
				</select>
	  		</td>
		</tr>
		
		<tr>
			<td>상품명</td>
			<td>
				<input type="text" name="pname" value="">
				<form:errors cssClass="err" path="pname" />
				
			</td>
		</tr>
		
		<tr>
			<td>상품이미지</td>
			<td> 
				<input type="file" name="upload" id="upload" value="" >
				<form:errors cssClass="err" path="pimage" />
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
				<input type="radio" name="pspec" value="new">new 	
				<input type="radio" name="pspec" value="normal">normal 	
				<input type="radio" name="pspec" value="sale">sale
				<form:errors cssClass="err" path="pspec"/> 	
			</td>
		</tr>
		
		<tr>
			<td>비고</td>
			<td>
				<textarea rows="10" cols="39" maxlength="50" name="pnote">pnote</textarea>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="상품등록">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form:form>
</body>
</html>

 --%>