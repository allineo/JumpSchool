
<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>

<%
	BlobstoreService blobstoreService = BlobstoreServiceFactory
			.getBlobstoreService();
%>


<input type=hidden name=maturity id=maturity value=0 />

<div data-role="fieldcontain" style="border-width: 0;">
	<label for="inputVision" style="background-color: lightgray"><a
		href="#popupVision" data-rel="popup" data-transition="pop"
		title="Learn more">Big Vision</a>:</label>
	<textarea name="inputVision" id="inputVision"
		placeholder="Big Vision (Your F6S account URL)" value="" rows=1
		class="ui-corner-all"></textarea>
	<div id="visionValue"></div>
</div>

<div data-role="fieldcontain" style="border-width: 0;">

	<label for="maineFeatureInput" style="background-color: lightgray"><a
		href="#popupMainFeature" data-rel="popup" data-transition="pop"
		title="Learn more">Main Feature</a>:</label>

	<div id="mainFeatureField">
		<textarea rows=1 name="mainFeatureInput" id="mainFeatureInput"
			placeholder="Your Main Feature Sketching" value=""></textarea>
		<form method="post"
			action='<%=blobstoreService.createUploadUrl("/upload")%>'
			enctype="multipart/form-data" data-ajax="false">
			<input type=hidden name=name id=mainFeatureImageName value= /> <input
				type=hidden name=fieldName id=fieldName value=mainFeatureImage /> <input
				name="imageField" type="file" id="imageField" accept="image/*"
				capture /> <input type="submit" value="Send" name="submit"
				class="btn">
		</form>
	</div>
	<div id="mainFeatureValue"></div>

</div>


<div data-role="fieldcontain" style="border-width: 0;">
	<label for="personaInput" style="background-color: lightgray"><a
		href="#popupPersona" data-rel="popup" data-transition="pop"
		title="Learn more">Persona/Empathy Map</a>:</label>

	<div id="personaField">
		<textarea rows=1 name="personaInput" id="personaInput"
			placeholder="Your Persona/Empathy Map URL" value=""></textarea>
		<form method="post"
			action='<%=blobstoreService.createUploadUrl("/upload")%>'
			enctype="multipart/form-data" data-ajax="false">
			<input type=hidden name=name id=personaImageName value= /> <input
				type=hidden name=fieldName id=fieldName value=personaImage /> <input
				name="imageField" type="file" id="imageField" accept="image/*"
				capture /> <input type="submit" value="Send" name="submit"
				class="btn">
		</form>
	</div>
	<div id="personaValue"></div>
</div>

<div data-role="fieldcontain" style="border-width: 0;">
	<label for="landingpageInput" style="background-color: lightgray"><a
		href="#popupLandingPage" data-rel="popup" data-transition="pop"
		title="Learn more">Landing Page</a>:</label>
	<textarea name="landingpageInput" id="landingpageInput"
		placeholder="Your Landing Page URL" value=""></textarea>
	<div id="landingpageValue"></div>
</div>

<div data-role="fieldcontain" style="border-width: 0;">
	<label for="mvpInput" style="background-color: lightgray"><a
		href="#popupMvp" data-rel="popup" data-transition="pop"
		title="Learn more">Min Viable Product</a>:</label>
	<textarea name="mvpInput" id="mvpInput"
		placeholder="Your Minimum Viable Product URL" value=""></textarea>
	<div id="mvpValue"></div>
</div>

<div data-role="fieldcontain" style="border-width: 0;">
	<label for="metricsInput" style="background-color: lightgray"><a
		href="#popupMetrics" data-rel="popup" data-transition="pop"
		title="Learn more">Customer Interviews & Metrics</a>:</label>
	<textarea name="metricsInput" id="metricsInput"
		placeholder="Your Customer Interviews and Metrics Worksheet" value=""></textarea>
	<div id="metricsValue"></div>
</div>

<div data-role="fieldcontain" style="border-width: 0;">
	<label for="bmcanvasInput" style="background-color: lightgray"><a
		href="#popupBMCanvas" data-rel="popup" data-transition="pop"
		title="Learn more">Biz Model Canvas</a>:</label>
	<textarea name="bmcanvasInput" id="bmcanvasInput"
		placeholder="Your Business Model Canvas URL" value=""></textarea>
	<div id="bmcanvasValue"></div>
</div>

<div data-role="fieldcontain" style="border-width: 0;">
	<label for="salescopyInput" style="background-color: lightgray"><a
		href="#popupSalesCopy" data-rel="popup" data-transition="pop"
		title="Learn more">Sales Copy</a>:</label>
	<textarea name="salescopyInput" id="salescopyInput"
		placeholder="Your Sales Copy URL" value=""></textarea>
	<div id="salescopyValue"></div>
</div>



<script>
	ga('send', 'screenview', {
		'screenName' : 'Roadmap'
	});

	$("#mainFeatureImageName").val(getUrlParameter("Name"));
	$("#personaImageName").val(getUrlParameter("Name"));

	$("#visionValue").click(function() {
		$("#visionValue").hide();
		$("#inputVision").show();
		$("#inputVision").focus();
	});
	$("#inputVision").change(function() {
		saveRoadmap();
	});
	$("#inputVision").blur(
			function() {
				if ($('#inputVision').val() != null
						&& $('#inputVision').val() != "") {
					$("#visionValue").html(
							"<blockquote><font size=1><a href='"
									+ $('#inputVision').val()
									+ "' target='_blank'>"
									+ $('#inputVision').val()
									+ "</a></font></blockquote>");
					$('#inputVision').hide();
					$('#visionValue').show();
				}
			});

	$("#mainFeatureValue").click(function() {
		$("#mainFeatureValue").hide();
		$("#mainFeatureField").show();
		$("#mainFeatureInput").focus();
	});
	$("#mainFeatureInput").change(function() {
		saveRoadmap();
	});
	$("#mainFeatureField").blur(
			function() {
				if ($('#mainFeatureInput').val() != null
						&& $('#mainFeatureInput').val() != "") {
					$("#mainFeatureValue").html(
							"<blockquote><font size=1><a href='"
									+ $('#mainFeatureInput').val()
									+ "' target='_blank'>"
									+ $('#mainFeatureInput').val()
									+ "</a></font></blockquote>");
					$('#mainFeatureField').hide();
					$('#mainFeatureValue').show();
				}
			});

	$("#personaValue").click(function() {
		$("#personaValue").hide();
		$("#personaField").show();
		$("#personaInput").focus();
	});
	$("#personaInput").change(function() {
		saveRoadmap();
	});
	$("#personaInput").blur(
			function() {
				if ($('#personaInput').val() != null
						&& $('#personaInput').val() != "") {
					$("#personaValue").html(
							"<blockquote><font size=1><a href='"
									+ $('#personaInput').val()
									+ "' target='_blank'>"
									+ $('#personaInput').val()
									+ "</a></font></blockquote>");
					$('#personaField').hide();
					$('#personaValue').show();
				}
			});

	$("#bmcanvasValue").click(function() {
		$("#bmcanvasValue").hide();
		$("#bmcanvasInput").show();
		$("#bmcanvasInput").focus();
	});
	$("#bmcanvasInput").change(function() {
		saveRoadmap();
	});
	$("#bmcanvasInput").blur(
			function() {
				if ($('#bmcanvasInput').val() != null
						&& $('#bmcanvasInput').val() != "") {
					$("#bmcanvasValue").html(
							"<blockquote><font size=1><a href='"
									+ $('#bmcanvasInput').val()
									+ "' target='_blank'>"
									+ $('#bmcanvasInput').val()
									+ "</a></font></blockquote>");
					$('#bmcanvasInput').hide();
					$('#bmcanvasValue').show();
				}
			});

	$("#landingpageValue").click(function() {
		$("#landingpageValue").hide();
		$("#landingpageInput").show();
		$("#landingpageInput").focus();
	});
	$("#landingpageInput").change(function() {
		saveRoadmap();
	});
	$("#landingpageInput").blur(
			function() {
				if ($('#landingpageInput').val() != null
						&& $('#landingpageInput').val() != "") {
					$("#landingpageValue").html(
							"<blockquote><font size=1><a href='"
									+ $('#landingpageInput').val()
									+ "' target='_blank'>"
									+ $('#landingpageInput').val()
									+ "</a></font></blockquote>");
					$('#landingpageInput').hide();
					$('#landingpageValue').show();
				}
			});

	$("#metricsValue").click(function() {
		$("#metricsValue").hide();
		$("#metricsInput").show();
		$("#metricsInput").focus();
	});
	$("#metricsInput").change(function() {
		saveRoadmap();
	});
	$("#metricsInput").blur(
			function() {
				if ($('#metricsInput').val() != null
						&& $('#metricsInput').val() != "") {
					$("#metricsValue").html(
							"<blockquote><font size=1><a href='"
									+ $('#metricsInput').val()
									+ "' target='_blank'>"
									+ $('#metricsInput').val()
									+ "</a></font></blockquote>");
					$('#metricsInput').hide();
					$('#metricsValue').show();
				}
			});

	$("#mvpValue").click(function() {
		$("#mvpValue").hide();
		$("#mvpInput").show();
		$("#mvpInput").focus();
	});
	$("#mvpInput").change(function() {
		saveRoadmap();
	});
	$("#mvpInput")
			.blur(
					function() {
						if ($('#mvpInput').val() != null
								&& $('#mvpInput').val() != "") {
							$("#mvpValue").html(
									"<blockquote><font size=1><a href='"
											+ $('#mvpInput').val()
											+ "' target='_blank'>"
											+ $('#mvpInput').val()
											+ "</a></font></blockquote>");
							$('#mvpInput').hide();
							$('#mvpValue').show();
						}
					});

	$("#salescopyValue").click(function() {
		$("#salescopyValue").hide();
		$("#salescopyInput").show();
		$("#salescopyInput").focus();
	});
	$("#salescopyInput").change(function() {
		saveRoadmap();
	});
	$("#salescopyInput").blur(
			function() {
				if ($('#salescopyInput').val() != null
						&& $('#salescopyInput').val() != "") {
					$("#salescopyValue").html(
							"<blockquote><font size=1><a href='"
									+ $('#salescopyInput').val()
									+ "' target='_blank'>"
									+ $('#salescopyInput').val()
									+ "</a></font></blockquote>");
					$('#salescopyInput').hide();
					$('#salescopyValue').show();
				}
			});

	$("#popupVision").load("../pages/contents/vision.html");
	$("#popupMainFeature").load("../pages/contents/mainfeature.html");
	$("#popupPersona").load("../pages/contents/persona.html");
	$("#popupLandingPage").load("../pages/contents/landingpage.html");
	$("#popupBMCanvas").load("../pages/contents/bmcanvas.html");
	$("#popupMetrics").load("../pages/contents/metrics.html");
	$("#popupMvp").load("../pages/contents/mvp.html");
	$("#popupSalesCopy").load("../pages/contents/salescopy.html");

	function getRoadmap() {

		var getRoadmapUrl = "../getroadmap" + "?name="
				+ encodeURIComponent(getUrlParameter("Name"));

		$
				.post(
						getRoadmapUrl,
						{},
						function(data, status) {

							var roadmap = jQuery.parseJSON(data);

							if (roadmap.vision != null && roadmap.vision != "") {
								$("#visionValue").html(
										"<blockquote><font size=1><a href='" + roadmap.vision + "' target=_blank>"
												+ roadmap.vision
												+ "</a></font></blockquote>");
								$("#inputVision").val(roadmap.vision);
								$("#inputVision").hide();
							}

							if (roadmap.mainfeature == null) {
								roadmap.mainfeature = "";
							}
							if ((roadmap.mainfeature != null && roadmap.mainfeature != "")
									|| (roadmap.mainFeatureImage != null && roadmap.mainFeatureImage != "")) {
								$("#mainFeatureField").hide();
								$("#mainFeatureValue")
										.html(
												"&nbsp;&nbsp;&nbsp;<font size=1><a href='" + roadmap.mainfeature + "' target=_blank>"
														+ roadmap.mainfeature
														+ "</a></font> <img width=100 height=70 src='/serve?blob-key="
														+ roadmap.mainFeatureImage
														+ "' />");
								$("#mainFeatureInput").val(roadmap.mainfeature);
							}

							if (roadmap.persona == null) {
								roadmap.persona = "";
							}
							if ((roadmap.persona != "")
									|| (roadmap.personaImage != null && roadmap.personaImage != "")) {

								$("#personaField").hide();
								$("#personaValue")
										.html(
												"&nbsp;&nbsp;&nbsp;<font size=1><a href='" + roadmap.persona + "' target=_blank>"
														+ roadmap.persona
														+ "</a></font><img width=100 height=70 src='/serve?blob-key="
														+ roadmap.personaImage
														+ "' />");
								$("#personaInput").val(roadmap.persona);
							}

							if (roadmap.bmcanvas != null
									&& roadmap.bmcanvas != "") {
								$("#bmcanvasInput").hide();
								$("#bmcanvasValue").html(
										"<blockquote><font size=1><a href='" + roadmap.bmcanvas + "' target=_blank>"
												+ roadmap.bmcanvas
												+ "</a></font></blockquote>");
								$("#bmcanvasInput").val(roadmap.bmcanvas);
							}

							if (roadmap.landingpage != null
									&& roadmap.landingpage != "") {
								$("#landingpageInput").hide();
								$("#landingpageValue").html(
										"<blockquote><font size=1><a href='" + roadmap.landingpage + "' target=_blank>"
												+ roadmap.landingpage
												+ "</a></font></blockquote>");
								$("#landingpageInput").val(roadmap.landingpage);
							}

							if (roadmap.metrics != null
									&& roadmap.metrics != "") {
								$("#metricsInput").hide();
								$("#metricsValue").html(
										"<blockquote><font size=1><a href='" + roadmap.metrics + "' target=_blank>"
												+ roadmap.metrics
												+ "</a></font></blockquote>");
								$("#metricsInput").val(roadmap.metrics);
							}

							if (roadmap.mvp != null && roadmap.mvp != "") {
								$("#mvpInput").hide();
								$("#mvpValue").html(
										"<blockquote><font size=1><a href='" + roadmap.mvp + "' target=_blank>"
												+ roadmap.mvp
												+ "</a></font></blockquote>");
								$("#mvpInput").val(roadmap.mvp);
							}

							if (roadmap.salescopy != null
									&& roadmap.salescopy != "") {
								$("#salescopyInput").hide();
								$("#salescopyValue").html(
										"<blockquote><font size=1><a href='" + roadmap.salescopy + "' target=_blank>"
												+ roadmap.salescopy
												+ "</a></font></blockquote>");
								$("#salescopyInput").val(roadmap.salescopy);
							}

							if (roadmap.maturity != null
									&& roadmap.maturity != "") {
								$("#maturity").val(roadmap.maturity);
							}
						});
	}

	function saveRoadmap() {

		var saveRoadmapUrl = "../saveroadmap" + "?name="
				+ encodeURIComponent(getUrlParameter("Name")) + "&vision="
				+ encodeURIComponent($("#inputVision").val()) + "&mainfeature="
				+ encodeURIComponent($("#mainFeatureInput").val())
				+ "&persona=" + encodeURIComponent($("#personaInput").val())
				+ "&bmcanvas=" + encodeURIComponent($("#bmcanvasInput").val())
				+ "&landingpage="
				+ encodeURIComponent($("#landingpageInput").val())
				+ "&metrics=" + encodeURIComponent($("#metricsInput").val())
				+ "&mvp=" + encodeURIComponent($("#mvpInput").val())
				+ "&salescopy="
				+ encodeURIComponent($("#salescopyInput").val()) + "&maturity="
				+ encodeURIComponent($("#maturity").val());

		$.post(saveRoadmapUrl, {}, function(data, status) {

			// alert('Item saved on your Wish List. Thank you!');

		});
	}

	if (getUrlParameter('Name') != null && getUrlParameter('Name') != '') {

		getRoadmap();
	}
</script>





