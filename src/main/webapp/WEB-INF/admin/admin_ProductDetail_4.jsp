<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
WEB-INF\admin\product\ProductDetail.jsp 입니다.<br>

<form action="detail.prd" method="post">
<table border="1">
	<tr>
		<td>상품명</td>
		<td></td>
	</tr>
	
	<tr>
		<td>사이즈</td>
		<td>
			<input type="text" name="psize" value="">
		</td>
	</tr>
	
	<tr>
		<td>색상</td>
		<td> 
			<input type="text" name="pcolor">
		</td>
	</tr>
	
	<tr>
		<td>재고</td>
		<td>
			<input type="text" name="pstock" value="">원
		</td>		
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="등록 후 리스트보기">
			<input type="reset" value="취소">
		</td>
	</tr>
</form>
</table>










<!-- <h3 style="text-align: center; margin-top: 10px;">Notice</h3>
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">First</th>
	      <th scope="col">Last</th>
	      <th scope="col">Handle</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">1</th>
	      <td>Mark</td>
	      <td>Otto</td>
	      <td>@mdo</td>
	    </tr>
	    <tr>
	      <th scope="row">2</th>
	      <td>Jacob</td>
	      <td>Thornton</td>
	      <td>@fat</td>
	    </tr>
	    <tr>
	      <th scope="row">3</th>
	      <td>Larry</td>
	      <td>the Bird</td>
	      <td>@twitter</td>
	    </tr>
	  </tbody>
	</table> -->
