function getRoadmap() {

	var getRoadmapUrl = "getroadmap" + "?name="
			+ encodeURIComponent(getUrlParameter("Name"));

	$.post(getRoadmapUrl, {}, function(data, status) {

		var roadmap = jQuery.parseJSON(data);

		if (roadmap.vision != null && roadmap.vision != "") {
			$("#visionValue").html(
					"<a href='" + roadmap.vision + "' target=_blank>"
							+ roadmap.vision + "</a>");
			$("#inputVision").val(roadmap.vision);
			$("#inputVision").hide();
		}

		if (roadmap.mainfeature != null && roadmap.mainfeature != "") {
			$("#mainFeatureInput").hide();
			$("#mainFeatureValue").html(
					"<a href='" + roadmap.mainfeature + "' target=_blank>"
							+ roadmap.mainfeature + "</a>");
			$("#mainFeatureInput").val(roadmap.mainfeature);
		}

		if (roadmap.persona != null && roadmap.persona != "") {
			$("#personaInput").hide();
			$("#personaValue").html(
					"<a href='" + roadmap.persona + "' target=_blank>"
							+ roadmap.persona + "</a>");
			$("#personaInput").val(roadmap.persona);
		}

		if (roadmap.ecosystem != null && roadmap.ecosystem != "") {
			$("#ecosystemInput").hide();
			$("#ecosystemValue").html(
					"<a href='" + roadmap.ecosystem + "' target=_blank>"
							+ roadmap.ecosystem + "</a>");
			$("#ecosystemInput").val(roadmap.ecosystem);
		}

		if (roadmap.bmcanvas != null && roadmap.bmcanvas != "") {
			$("#bmcanvasInput").hide();
			$("#bmcanvasValue").html(
					"<a href='" + roadmap.bmcanvas + "' target=_blank>"
							+ roadmap.bmcanvas + "</a>");
			$("#bmcanvasInput").val(roadmap.bmcanvas);
		}

		if (roadmap.landingpage != null && roadmap.landingpage != "") {
			$("#landingpageInput").hide();
			$("#landingpageValue").html(
					"<a href='" + roadmap.landingpage + "' target=_blank>"
							+ roadmap.landingpage + "</a>");
			$("#landingpageInput").val(roadmap.landingpage);
		}

		if (roadmap.metrics != null && roadmap.metrics != "") {
			$("#metricsInput").hide();
			$("#metricsValue").html(
					"<a href='" + roadmap.metrics + "' target=_blank>"
							+ roadmap.metrics + "</a>");
			$("#metricsInput").val(roadmap.metrics);
		}

		if (roadmap.mvp != null && roadmap.mvp != "") {
			$("#mvpInput").hide();
			$("#mvpValue").html(
					"<a href='" + roadmap.mvp + "' target=_blank>"
							+ roadmap.mvp + "</a>");
			$("#mvpInput").val(roadmap.mvp);
		}

		if (roadmap.salescopy != null && roadmap.salescopy != "") {
			$("#salescopyInput").hide();
			$("#salescopyValue").html(
					"<a href='" + roadmap.salescopy + "' target=_blank>"
							+ roadmap.salescopy + "</a>");
			$("#salescopyInput").val(roadmap.salescopy);
		}

	});
}

function saveRoadmap() {

	var saveRoadmapUrl = "saveroadmap" + "?name="
			+ encodeURIComponent(getUrlParameter("Name")) + "&vision="
			+ encodeURIComponent($("#inputVision").val()) + "&mainfeature="
			+ encodeURIComponent($("#mainFeatureInput").val()) + "&persona="
			+ encodeURIComponent($("#personaInput").val()) + "&ecosystem="
			+ encodeURIComponent($("#ecosystemInput").val()) + "&bmcanvas="
			+ encodeURIComponent($("#bmcanvasInput").val()) + "&landingpage="
			+ encodeURIComponent($("#landingpageInput").val()) + "&metrics="
			+ encodeURIComponent($("#metricsInput").val()) + "&mvp="
			+ encodeURIComponent($("#mvpInput").val()) + "&salescopy="
			+ encodeURIComponent($("#salescopyInput").val());

	$.post(saveRoadmapUrl, {}, function(data, status) {

		// alert('Item saved on your Wish List. Thank you!');

	});
}
