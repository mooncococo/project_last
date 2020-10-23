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
   #selectSize{
         
   }
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

   $(document).ready(function(){
      <%-- location.href="detailsize.userdetail?pnum="+ <%= request.getParameter("pnum") %> +"&pcolor=" + pcolor;  --%>
      /* let pcolor = $("#selectColor option:selected").val();
      let optionlen = $("#selectColor option").length;
      
      for(let i=0; i<optionlen; i++){
            if($("#selectColor option").eq(i).val().includes(pcolor)){
                 $('#selectColor option').eq(i).attr("selected","selected")
              }
        } */
        
      $("#selectColor").change(function(){
         let index = $("#selectColor option:selected").text();
         let pnums = $('input[name="pnum"]').val()
         let list_size = $('input[name="lists_size"]').val()

         console.log(index);
         console.log(pnums);
         console.log(list_size);
         $.ajax({
               type : "get",
               url : "detailsize.userdetail",

               data : ({
                  pcolor : index,
                  pnum : pnums
               }),
               dataType: 'text',              
               success : function(data) {
                   showempinfo(data);
                   console.log("통신성공");
               },
               error : function(){
               console.log("통신실패");
            }
           });
         function showempinfo(data){
            console.log("data:"+data)
            var slice = data.split(",");
            console.log(slice)
               //console.log("드러옴")
               $('#selectColor option').eq(index).attr("selected","selected")
               $('#selectSize').empty();
               $('#selectSize').append("<option>선택")
               for(let i=0; i<slice.length-1;i++){
                  $('#selectSize').append("<option>"+slice[i])
               }

         }//showempinfo
            
       })  
      
      
   })
   
   
          
       function popupStock(pnum){
         //alert(pnum);
         
         //location.href="detaillist2.detail";  
         
         var url = "popupStock.jsp?pnum="+pnum;         
         //console.log(url);
         var name = "popupStock";
         var options = 'width=500, height=600, top=250, left=700, resizable=no, scrollbars=no, location=no';
         window.open(url,name, options); 
         
      }//popupStock
      
      
      let result = "";
   function showResult(){
      let pcolor = $("#selectColor option:selected").val(); 
      let psize = $("#selectSize option:selected").val();
      let price = ${product.price };
      
      //console.log(pcolor+","+psize); 
      console.log(result); 
      if( result.includes(pcolor+","+psize) ){
         alert('이미 선택되어 있는 옵션입니다');
      }
      else{
           $('#resultTable').append("<tr><td>"+pcolor+"/"+psize+"</td><td>"+
                 "<input type=text name='amount' value=1>"+
                 "<input type=button value='△' onClick='countUp()'>"+
                 "<input type=button value='▽' onClick='countDown()'>"
                 +"</td><td>"+price+"won"+"</td></tr>")
      }   
        
      result += pcolor+","+psize+"/";
   }
   
   
   function countUp(){   
      alert('up');
   }
   
   function countDown(){
      alert('down');
   }



</script>
</head>
<body>
  <%@include file="user_top_4.jsp"%>
   
   <div class="user_content">
      <!-- 유저 컨텐트 내용 -->
      <div class="card mb-3" style="max-width: 85vw;"> 
            <input type="hidden" name="pnum" value="${product.pnum }">
            <input type="hidden" name="lists_size" value="${sizeLists.get(0).psize }">
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
                  
<!--  <form>
<input type=text name=amount value=1>
<input type=button value='△' onClick='javascript:this.form.amount.value++;'>
<input type=button value='▽' onClick='javascript:this.form.amount.value--;'>
</form> -->  
                     
                     <div class="span_area">
                        <p>재고 확인 :</p> 
                        <p>COLOR :</p> 
                        <p>SIZE :</p>
                     </div>
                     <form>
                        <%-- <input type="hidden" name="pcolor" value="${colorLists.color }"> --%>
                     </form>

                     <div class="select_area">
                        <p>
                           <input type="button" value="실시간재고 확인하기" onclick="popupStock(${product.pnum })"/>
                        </p>
                        <p>
                        <select name="selectColor" id="selectColor">
                        <option>선택</option>
                           <c:forEach var="bean" items="${ colorLists }"> 
                              <option><c:out value="${bean.pcolor }" /></option>                              
                           </c:forEach>                           
                        </select>
                        </p>
                        <p>
                        <select id="selectSize" onChange="showResult()">
                           <option class="choi" >선택</option>                                                      
                        </select>
                        </p>
                     </div>
                     
                  </div>   
                  <div class="product_result">
                    <table class="table" id="resultTable">
                       <tr>
                          <td>상세</td>
                          <td>수량</td>
                          <td>금액</td>
                       </tr>
                    </table>
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