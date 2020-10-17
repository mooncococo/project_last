<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../admin/admin_top_4.jsp" %>    
<%@ include file="common.jsp" %> 
<style type="text/css">
	.table{  
		width: 70%;
		margin: 0 auto;
		margin-top: 4vh; 
	}
	#top_form2{
		width: 70%;
		margin: 0 auto;
		margin-top: 4vh;   
	}
	#top_form1{
		width: 80%;
		margin: 0 auto;
		margin-top: 6vh;
	}
	th{
		text-align: center;
	}
	td{
		text-align: center;
	}
	#paging{
		width: 45%;
		margin: 0 auto;
		text-align: center;
		margin-top: 4vh;
	}
</style>
<script type="text/javascript">
	function insert(){
		location.href='registerForm.me'; 
	}
	function updateGo(mnum,pageNumber,pageSize){
		location.href="update.me?mnum="+mnum+"&pageNumber="+pageNumber+"&pageSize="+pageSize; 
	}
</script>       
<!-- member\MemberList.jsp-->

<div id="top_form1">
	<font color="gray" size="5" ><b>회원 관리</b></font>  
</div>

<form action="list.me" method="get" id="top_form2">
	<select name="whatColumn">
		<option value="all">전체 검색
		<option value="mname">이름
		<option value="addr1">도시
		<option value="birth1">태어난 년도
	</select>
	<input type="text" name="keyword">
	<input type="submit" value="검색">
</form>

<table align="center" width="40%" class="table">
<!-- 	<tr align="center">
		<td colspan="11" align="right" >
			<input type="button" value="회원추가" onclick="insert()">
		</td>
	</tr> -->
	
	<tr>
		<th>ID</th>
		<th>이름</th>
		<th>비번</th>
		<th>주소</th>
		<th>휴대폰 번호</th>
		<th>이메일</th>
		<th>생년월일</th>
		<th>포인트</th>
		<th>쿠폰보유량</th>
		<th>가입날짜</th>
		<th>수정 | 삭제</th>
	</tr>
	
	<c:forEach items="${lists }" var="member">
		<tr>
			<td>
				${member.mid }
			</td>
			
			<td>
				${member.mname }
			</td>
			
			<td>
				${member.mpw }
			</td>
			<td>
				${member.addr1 }  ${member.addr2 }
			</td>
			<td>
				${member.hp1 }-${member.hp2 }-${member.hp3 }
			</td>
			<td>
				${member.email1 }@${member.email2 } 
			</td>
			<td>
				${member.birth1 }/${member.birth2 }/${member.birth3 }
			</td>
			<td>
				${member.mpoint }
			</td>
			<td>
				${member.coupon }
			</td>
			<td>
				${member.regdate }
			</td>
			<td>
				<a href="update.me?mnum=${member.mnum }&pageNumber=${pageInfo.pageNumber}&pageSize=${pageInfo.pageSize}">수정</a>|
				<a href="delete.me?mnum=${member.mnum }">삭제</a>
			</td>
		</tr> 
	</c:forEach>
</table>

<div id="paging">
	${pageInfo.pagingHtml } 
</div>

