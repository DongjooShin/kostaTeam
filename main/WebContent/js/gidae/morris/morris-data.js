// Morris.js Charts sample data for SB Admin template

$(function() {

		
	$.ajax({
		url: 'data/selectPublicmanage.jsp',
		type: 'post',
		dataType: 'json',
		success: successHandler,
		error:function(){
			alert('데이터가없음');
		}
	});
	function successHandler(data) {
		   Morris.Line({
		        // ID of the element in which to draw the chart.
		        element: 'morris-line-chart',
		        // Chart data records -- each entry in this array corresponds to a point on
		        // the chart.
		        data: [{
		        	d: data[0].pm_publicFeeNo,
		            관리비: data[0].pm_clean+data[0].pm_general+data[0].pm_maintain+data[0].pm_liftMaintain+data[0].pm_security +data[0].
                    pm_foodWaste +data[0].pm_fireInsurance +data[0].pm_commission +data[0].pm_meeting +data[0].pm_publicElectric +data[0].pm_liftElectric +data[0].
                    pm_TVFee +data[0].pm_disinfection
		        }, {
		        	d: data[1].pm_publicFeeNo,
		        	관리비:data[1].pm_clean+data[1].pm_general+data[1].pm_maintain+data[1].pm_liftMaintain+data[1].pm_security +data[1].
                    pm_foodWaste +data[1].pm_fireInsurance +data[1].pm_commission +data[1].pm_meeting +data[1].pm_publicElectric +data[1].pm_liftElectric +data[1].
                    pm_TVFee +data[1].pm_disinfection
		        }, {
		        	d: data[2].pm_publicFeeNo,
		            관리비: data[2].pm_clean+data[2].pm_general+data[2].pm_maintain+data[2].pm_liftMaintain+data[2].pm_security +data[2].
                    pm_foodWaste +data[2].pm_fireInsurance +data[2].pm_commission +data[2].pm_meeting +data[2].pm_publicElectric +data[2].pm_liftElectric +data[2].
                    pm_TVFee +data[2].pm_disinfection
		        }, {
		        	d: data[3].pm_publicFeeNo,
		            관리비: data[3].pm_clean+data[3].pm_general+data[3].pm_maintain+data[3].pm_liftMaintain+data[3].pm_security +data[3].
                    pm_foodWaste +data[3].pm_fireInsurance +data[3].pm_commission +data[3].pm_meeting +data[3].pm_publicElectric +data[3].pm_liftElectric +data[3].
                    pm_TVFee +data[3].pm_disinfection
		        }, {
		        	d: data[4].pm_publicFeeNo,
		            관리비: data[4].pm_clean+data[4].pm_general+data[4].pm_maintain+data[4].pm_liftMaintain+data[4].pm_security +data[4].
                    pm_foodWaste +data[4].pm_fireInsurance +data[4].pm_commission +data[4].pm_meeting +data[4].pm_publicElectric +data[4].pm_liftElectric +data[4].
                    pm_TVFee +data[4].pm_disinfection
		        } ],
		        // The name of the data record attribute that contains x-visitss.
		        xkey: 'd',
		        // A list of names of data record attributes that contain y-visitss.
		        ykeys: ['관리비'],
		        // Labels for the ykeys -- will be displayed when you hover over the
		        // chart.
		        labels: ['연도별관리비'],
		        // Disables line smoothing
		        smooth: false,
		        resize: true
		    });
	};

    // Line Chart
 

    // Bar Chart


});
