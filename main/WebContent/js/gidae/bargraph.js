
$(function(){
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
		$.jqplot('graph', [[['mf_gasAmount', data[0].mf_gasAmount], ['102동', 22], ['103동', 38], ['104동', 30]]], {
			title: '우리아파트임 ㅎㅎ',
			series:[{renderer:$.jqplot.BarRenderer}],
			axes: {
				xaxis: {
					renderer: $.jqplot.CategoryAxisRenderer,
					label: "동이름"
				},
				yaxis: {
					label: ""
				}
			}
		});
	};
});


