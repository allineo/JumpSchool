function saveRoadmap(value) {
  alert(value);
}

$(document).on("pageinit", function(event) {

	$("#vision").change(function() {
	  saveRoadmap($("#vision").val());
	});
	
	$("#mainfeature").change(function() {
		saveRoadmap($("#mainfeature").val());
	});
	
	$("#persona").change(function() {
		saveRoadmap($("#persona").val());
	});
	
	$("#ecosystem").change(function() {
		saveRoadmap($("#ecosystem").val());
	});
	
  $("#bmcanvas").change(function() {
		saveRoadmap($("#bmcanvas").val());
	});
	
	$("#landingpage").change(function() {
		saveRoadmap($("#landingpage").val());
	});
	
	$("#mvp").change(function() {
		saveRoadmap($("#mvp").val());
	});	
});
