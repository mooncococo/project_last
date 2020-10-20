<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> /WEB-INF/user/user_productDetail.jsp</title>
<style type="text/css">
   .user_content {
	   margin-top: 200px;
      padding-left: 15vw;
      padding-right: 15vw;
      padding-top: 5vh;
   }
   
   #btn{
      border: 1px solid #000;
      width: 16vw;
   }
   
   #card-body{
      padding-left: 100px;
      padding-right: 100px;
   
   }
   .card-text{margin-top:15%}
   .span_area, .select_area{float:left; width:50%}
   .select_area select{height:39px; width:70%}
   .span_area p{
      font-size: 26px;
   }
   .product_result, .buy_btn{float:left; width:100%}
   .card-title{text-align:left;}
   
   .price-text{
      padding-top: 8px;
   }
   .price-text span{
      font-size: 20px;
   }
</style>

<script type="text/javascript" src="<c:url value="../../resources/js/jquery.js"/>"></script>
<script type="text/javascript">
	$("selectColor").change(function(){
		alert(1);
	}) 
	  

</script>
</head>
<body>
  <%@include file="user_top_4.jsp"%>

   <div class="user_content">
      <!-- 유저 컨텐트 내용 -->
      <div class="card mb-3" style="max-width: 85vw;"> 
         <div class="row no-gutters">
            <div class="col-md-4"> 
                <img src="<%=request.getContextPath() %>/resources/${product.pimage }" class="card-img" alt="..." >
            </div>
            <div class="col-md-8">
               <div class="card-body" id="card-body">
                  <h4 class="card-title">
                     <B>${product.pname }</B>
                  </h4>
                  <div class="pnote-text">
                     <span>
                        	${product.pnote }  
                     </span>
                    
                  </div>
                  
                  <div class="price-text">
                     <span>
                        	￦${product.price }  
                     </span>
                  </div>
                  
                  <div class="card-text">
                     
                     <div class="span_area">
                        <p>COLOR :</p> 
                        <p>SIZE :</p>
                     </div>
                     

                     <div class="select_area">
                        <p>
                        <select name="selectColor" onclick="getSize()">
                        	<c:forEach var="bean" items="${ colorLists }"> 
	                           <option><c:out value="${bean.pcolor }" /></option>                              
                           </c:forEach>                           
                        </select>
                        </p>
                        
                        <p>
                        <select>
                           <option>s</option>                              
                           <option>m</option>                              
                           <option>x</option>                              
                           <option>xl</option>                              
                           <option>xxl</option>                              
                        </select>
                        </p>
                     </div>
                     
                  </div>   
                  <div class="product_result">
                     <p>주문이 추가 되게 하세요.</p>
                  </div>
                  
                  
                  
               <div class="buy_btn">
                  <button type="button" class="btn btn-light" id="btn">BUY IT NOW</button>
                  <button type="button" class="btn btn-light" id="btn" style="margin-left: 20px;">ADD TO CART</button>
               </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>