$(function(){
	$.jqplot('graph', [[['101동', 50], ['102동', 22], ['103동', 38], ['104동', 30]]], {
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
});