function getRoadmap() {

	var getRoadmapUrl = "getroadmap" + "?name="
			+ encodeURIComponent(getUrlParameter("Name"));

	$.post(getRoadmapUrl, {}, function(data, status) {

		var roadmap = jQuery.parseJSON(data);

		$("#vision").val(roadmap.vision);
		$("#mainfeature").val(roadmap.mainfeature);
		$("#persona").val(roadmap.persona);
		$("#ecosystem").val(roadmap.ecosystem);
		$("#bmcanvas").val(roadmap.bmcanvas);
		$("#landingpage").val(roadmap.landingpage);
		$("#metrics").val(roadmap.metrics);
		$("#mvp").val(roadmap.mvp);
		$("#salescopy").val(roadmap.salescopy);

	});
}

function saveRoadmap() {

	var saveRoadmapUrl = "saveroadmap" + "?name="
			+ encodeURIComponent(getUrlParameter("Name")) + "&vision="
			+ encodeURIComponent($("#vision").val()) + "&mainfeature="
			+ encodeURIComponent($("#mainfeature").val()) + "&persona="
			+ encodeURIComponent($("#persona").val()) + "&ecosystem="
			+ encodeURIComponent($("#ecosystem").val()) + "&bmcanvas="
			+ encodeURIComponent($("#bmcanvas").val()) + "&landingpage="
			+ encodeURIComponent($("#landingpage").val()) + "&metrics="
			+ encodeURIComponent($("#metrics").val()) + "&mvp="
			+ encodeURIComponent($("#mvp").val()) + "&salescopy="
			+ encodeURIComponent($("#salescopy").val());

	$.post(saveRoadmapUrl, {}, function(data, status) {

		// alert('Item saved on your Wish List. Thank you!');

	});
}

$(document).on("pageinit", function(event) {

	$("#vision").change(function() {
		saveRoadmap();
	});

	$("#mainfeature").change(function() {
		saveRoadmap();
	});

	$("#persona").change(function() {
		saveRoadmap();
	});

	$("#ecosystem").change(function() {
		saveRoadmap();
	});

	$("#bmcanvas").change(function() {
		saveRoadmap();
	});

	$("#landingpage").change(function() {
		saveRoadmap();
	});

	$("#metrics").change(function() {
		saveRoadmap();
	});

	$("#mvp").change(function() {
		saveRoadmap();
	});

	$("#salescopy").change(function() {
		saveRoadmap();
	});

	if (getUrlParameter('Name') != null && getUrlParameter('Name') != '') {
		getRoadmap();
	}

});
