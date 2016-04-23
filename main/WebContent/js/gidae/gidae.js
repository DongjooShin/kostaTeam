window.onload = function () {
	
		$.ajax({
			url: 'data/managementFee.jsp',
			type: 'post',
			dataType: 'json',
			success: successHandler,
			error:function(){
				alert('데이터가없음');
			}
		});
		function successHandler(data) {
			alert('dddd')
		};
}
;