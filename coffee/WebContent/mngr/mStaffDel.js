$(document).ready(function() {

	$("#delete").click(function() {
		
		var query = {
				stf_code : $("#radio_id").val()
		}
		
		$.ajax({
			type : "POST",
			url : "/coffee/mStaffDel.do",
			data : query,
			success : function(data) {
				window.location.href = "/coffee/mStaffSelDel.do";
			}
		});
	});
	
});