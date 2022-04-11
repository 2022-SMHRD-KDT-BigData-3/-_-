(function() {
	$(".btnNavi").click(function() {
		$(this).css("color","#7fad39");
		$( 'button' ).not( this ).css( 'color', '#1c1c1c');
		$.ajax({
			url: 'gridServiceCon'
			, type: 'GET'
			, data: { test: $(this).val() }
			, dataType: 'json'
			, contentType: "application/json;charset=UTF-8"
			, success: function(data) {
				$("#pagingView").text("");
				$("#comName").text(data[0].fdCom);
				$("#listSize").text(data.length);
				let url = `<a href="${data[0].url}"><button style="margin-top: 8px" id="url">구매처 바로가기</button></a>`;
				$("#shopping").append(url);
				for (let i = 0; i < data.length; i++) {

					let tag = `<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<img class="product__item__pic set-bg" src="${data[i].imgUrl}">
											
										
										<div class="product__item__text">
											<h6>
												<a href="shop-details.jsp?fdnum=${data[i].fdNum}">${data[i].fdName}</a>
											</h6>
										</div>
									</div>
								</div>`;


					$("#pagingView").append(tag)
				}


			}, error: function(err) {
				console.log(err);
			}
		});

	});


}());