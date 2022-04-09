(function(){
	
		 $(".btnNavi").click(function(){
		
		 $.ajax({
	         url : 'gridServiceCon'
	         ,type : 'GET'
	         ,data : {test : $(this).val()}
	         ,dataType : 'json'
	         ,contentType : "application/json;charset=UTF-8"
	         ,success : function(data) {
	           	$("#pagingView").text("");
	           	$("#comName").text(data[0].fdCom);
	           	$("#listSize").text(data.length);
	           	for(let i = 0; i < data.length; i++){
	           		
					/*let tag = `<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="${data[i].imgUrl}">
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__item__text">
											<h6>
												<a href="#">${data[i].fdName}</a>
											</h6>
										</div>
									</div>
								</div>`;*/
					let tag = `<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<img class="product__item__pic set-bg" src="${data[i].imgUrl}">
											
										
										<div class="product__item__text">
											<h6>
												<a href="product-details.jsp">${data[i].fdName}</a>
											</h6>
										</div>
									</div>
								</div>`;
						
					
	           		$("#pagingView").append(tag)
	           	}
	           	
	        	
	         },error : function(err) {
	              console.log(err);
	         }
	      });
		 
	 });
	

}());