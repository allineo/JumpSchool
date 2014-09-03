
<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>

<%
	BlobstoreService blobstoreService = BlobstoreServiceFactory
			.getBlobstoreService();
%>

<div id="companyName"></div>


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
	<input type=hidden id=mainFeatureImageKey value= />
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
	<input type=hidden id=personaImageKey value= />
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

	<div id="bmcanvasField">
		<textarea name="bmcanvasInput" id="bmcanvasInput"
			placeholder="Your Business Model Canvas URL" value=""></textarea>
		<form method="post"
			action='<%=blobstoreService.createUploadUrl("/upload")%>'
			enctype="multipart/form-data" data-ajax="false">
			<input type=hidden name=name id=bmcanvasImageName value= /> <input
				type=hidden name=fieldName id=fieldName value=bmcanvasImage /> <input
				name="imageField" type="file" id="imageField" accept="image/*"
				capture /> <input type="submit" value="Send" name="submit"
				class="btn">
		</form>
	</div>
	<div id="bmcanvasValue"></div>
	<input type=hidden id=bmcanvasImageKey value= />
</div>

<div data-role="fieldcontain" style="border-width: 0;">
	<label for="salescopyInput" style="background-color: lightgray"><a
		href="#popupSalesCopy" data-rel="popup" data-transition="pop"
		title="Learn more">Sales Copy</a>:</label>

	<div id="salescopyField">
		<textarea name="salescopyInput" id="salescopyInput"
			placeholder="Your Sales Copy URL" value=""></textarea>
		<form method="post"
			action='<%=blobstoreService.createUploadUrl("/upload")%>'
			enctype="multipart/form-data" data-ajax="false">
			<input type=hidden name=name id=salescopyImageName value= /> <input
				type=hidden name=fieldName id=fieldName value=salescopyImage /> <input
				name="imageField" type="file" id="imageField" accept="image/*"
				capture /> <input type="submit" value="Send" name="submit"
				class="btn">
		</form>
	</div>
	<div id="salescopyValue"></div>
	<input type=hidden id=salescopyImageKey value= />
</div>



<script>
	ga('send', 'screenview', {
		'screenName' : 'Roadmap'
	});

	$("#companyName").html(
			"<img src=../JumpSchoolLogo.jpg />"
					+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>"
					+ getUrlParameter("Name") + "</b><br/>");

	$("#mainFeatureImageName").val(getUrlParameter("Name"));
	$("#personaImageName").val(getUrlParameter("Name"));
	$("#bmcanvasImageName").val(getUrlParameter("Name"));
	$("#salescopyImageName").val(getUrlParameter("Name"));

	function toggleFields(field) {

		if (field != 'mainFeature') {

			if (($('#mainFeatureInput').val() != null && $('#mainFeatureInput')
					.val() != "")
					|| ($('#mainFeatureImageKey').val() != null
							&& $('#mainFeatureImageKey').val() != "" && $(
							'#mainFeatureImageKey').val() != "/")) {

				mainfeaturePic = "";
				if ($('#mainFeatureImageKey').val() != null
						&& $('#mainFeatureImageKey').val() != ""
						&& $('#mainFeatureImageKey').val() != "/") {
					mainfeaturePic = "<img width=100 height=70 src='/serve?blob-key="
							+ $("#mainFeatureImageKey").val() + "' />";
				}

				$("#mainFeatureValue").html(
						"&nbsp;&nbsp;&nbsp;<font size=1><a href='"
								+ $('#mainFeatureInput').val()
								+ "' target='_blank'>"
								+ $('#mainFeatureInput').val() + "</a></font>"
								+ mainfeaturePic);

				$("#mainFeatureField").hide();
				$("#mainFeatureValue").show();
			}

		}

		if (field != 'persona') {

			if (($('#personaInput').val() != null && $('#personaInput').val() != "")
					|| ($('#personaImageKey').val() != null
							&& $('#personaImageKey').val() != "" && $(
							'#personaImageKey').val() != "/")) {

				personaPic = "";
				if ($('#personaImageKey').val() != null
						&& $('#personaImageKey').val() != ""
						&& $('#personaImageKey').val() != "/") {
					personaPic = "<img width=100 height=70 src='/serve?blob-key="
							+ $("#personaImageKey").val() + "' />";
				}

				$("#personaValue").html(
						"&nbsp;&nbsp;&nbsp;<font size=1><a href='"
								+ $("#personaInput").val() + "' target=_blank>"
								+ $("#personaInput").val() + "</a></font> "
								+ personaPic);

				$("#personaField").hide();
				$("#personaValue").show();
			}

		}

		if (field != 'bmcanvas') {

			if (($('#bmcanvasInput').val() != null && $('#bmcanvasInput').val() != "")
					|| ($('#bmcanvasImageKey').val() != null
							&& $('#bmcanvasImageKey').val() != "" && $(
							'#bmcanvasImageKey').val() != "/")) {

				bmcanvasPic = "";
				if ($('#bmcanvasImageKey').val() != null
						&& $('#bmcanvasImageKey').val() != ""
						&& $('#bmcanvasImageKey').val() != "/") {
					bmcanvasPic = "<img width=100 height=70 src='/serve?blob-key="
							+ $("#bmcanvasImageKey").val() + "' />";
				}

				$("#bmcanvasValue").html(
						"&nbsp;&nbsp;&nbsp;<font size=1><a href='"
								+ $("#bmcanvasInput").val()
								+ "' target=_blank>"
								+ $("#bmcanvasInput").val() + "</a></font> "
								+ bmcanvasPic);

				$("#bmcanvasField").hide();
				$("#bmcanvasValue").show();
			}

		}

		if (field != 'salescopy') {

			if (($('#salescopyInput').val() != null && $('#salescopyInput')
					.val() != "")
					|| ($('#salescopyImageKey').val() != null
							&& $('#salescopyImageKey').val() != "" && $(
							'#salescopyImageKey').val() != "/")) {

				salescopyPic = "";
				if ($('#salescopyImageKey').val() != null
						&& $('#salescopyImageKey').val() != ""
						&& $('#salescopyImageKey').val() != "/") {
					salescopyPic = "<img width=100 height=70 src='/serve?blob-key="
							+ $("#salescopyImageKey").val() + "' />";
				}

				$("#salescopyValue").html(
						"&nbsp;&nbsp;&nbsp;<font size=1><a href='"
								+ $("#salescopyInput").val()
								+ "' target=_blank>"
								+ $("#salescopyInput").val() + "</a></font> "
								+ salescopyPic);

				$("#salescopyField").hide();
				$("#salescopyValue").show();
			}
		}
	}

	$("#visionValue").click(function() {
		toggleFields('');
		$("#visionValue").hide();
		$("#inputVision").show();
		$("#inputVision").focus();
	});

	$("#inputVision").click(function() {
		toggleFields('');
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
		toggleFields('mainFeature');
		$("#mainFeatureValue").hide();
		$("#mainFeatureField").show();
		$("#mainFeatureInput").focus();
	});

	$("#mainFeatureInput").click(function() {
		toggleFields('mainFeature');
	});
	$("#mainFeatureInput").change(function() {
		saveRoadmap();
	});

	$("#personaValue").click(function() {
		toggleFields('persona');
		$("#personaValue").hide();
		$("#personaField").show();
		$("#personaInput").focus();
	});

	$("#personaInput").click(function() {
		toggleFields('persona');
	});
	$("#personaInput").change(function() {
		saveRoadmap();
	});

	$("#bmcanvasValue").click(function() {
		toggleFields('bmcanvas');
		$("#bmcanvasValue").hide();
		$("#bmcanvasField").show();
		$("#bmcanvasInput").focus();
	});

	$("#bmcanvasInput").click(function() {
		toggleFields('bmcanvas');
	});
	$("#bmcanvasInput").change(function() {
		saveRoadmap();
	});

	$("#metricsValue").click(function() {
		toggleFields('');
		$("#metricsValue").hide();
		$("#metricsInput").show();
		$("#metricsInput").focus();
	});

	$("#metricsInput").click(function() {
		toggleFields('');
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
		toggleFields('');
		$("#mvpValue").hide();
		$("#mvpInput").show();
		$("#mvpInput").focus();
	});

	$("#mvpInput").click(function() {
		toggleFields('');
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
		toggleFields('salescopy');
		$("#salescopyValue").hide();
		$("#salescopyField").show();
		$("#salescopyInput").focus();
	});

	$("#salescopyInput").click(function() {
		toggleFields('salescopy');
	});
	$("#salescopyInput").change(function() {
		saveRoadmap();
	});

	$("#popupVision").load("../pages/contents/vision.html");
	$("#popupMainFeature").load("../pages/contents/mainfeature.html");
	$("#popupPersona").load("../pages/contents/persona.html");
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

								var mainfeaturePic = "";
								if (roadmap.mainFeatureImage != null
										&& roadmap.mainFeatureImage != "") {
									mainfeaturePic = "<img width=100 height=70 src='/serve?blob-key="
											+ roadmap.mainFeatureImage + "' />";
									$("#mainFeatureImageKey").val(
											roadmap.mainFeatureImage);
								}
								$("#mainFeatureValue")
										.html(
												"&nbsp;&nbsp;&nbsp;<font size=1><a href='" + roadmap.mainfeature + "' target=_blank>"
														+ roadmap.mainfeature
														+ "</a></font> "
														+ mainfeaturePic);

								$("#mainFeatureInput").val(roadmap.mainfeature);
							}

							if (roadmap.persona == null) {
								roadmap.persona = "";
							}
							if ((roadmap.persona != "")
									|| (roadmap.personaImage != null && roadmap.personaImage != "")) {

								$("#personaField").hide();

								var personaPic = "";
								if (roadmap.personaImage != null
										&& roadmap.personaImage != "") {
									personaPic = "<img width=100 height=70 src='/serve?blob-key="
											+ roadmap.personaImage + "' />";
									$("#personaImageKey").val(
											roadmap.personaImage);
								}
								$("#personaValue")
										.html(
												"&nbsp;&nbsp;&nbsp;<font size=1><a href='" + roadmap.persona + "' target=_blank>"
														+ roadmap.persona
														+ "</a></font> "
														+ personaPic);
								$("#personaInput").val(roadmap.persona);
							}

							if (roadmap.bmcanvas == null) {
								roadmap.bmcanvas = "";
							}
							if ((roadmap.bmcanvas != "")
									|| (roadmap.bmcanvasImage != null && roadmap.bmcanvasImage != "")) {
								$("#bmcanvasField").hide();

								var bmcanvasPic = "";
								if (roadmap.bmcanvasImage != null
										&& roadmap.bmcanvasImage != "") {
									bmcanvasPic = "<img width=100 height=70 src='/serve?blob-key="
											+ roadmap.bmcanvasImage + "' />";
									$("#bmcanvasImageKey").val(
											roadmap.bmcanvasImage);
								}

								$("#bmcanvasValue")
										.html(
												"&nbsp;&nbsp;&nbsp;<font size=1><a href='" 
								+ roadmap.bmcanvas + "' target=_blank>"
														+ roadmap.bmcanvas
														+ "</a></font> "
														+ bmcanvasPic);
								$("#bmcanvasInput").val(roadmap.bmcanvas);
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

							if (roadmap.salescopy == null) {
								roadmap.salescopy = "";
							}
							if ((roadmap.salescopy != "")
									|| (roadmap.salescopyImage != null && roadmap.salescopyImage != "")) {

								$("#salescopyField").hide();

								var salescopyPic = "";
								if (roadmap.salescopyImage != null
										&& roadmap.salescopyImage != "") {
									salescopyPic = "<img width=100 height=70 src='/serve?blob-key="
											+ roadmap.salescopyImage + "' />";
									$("#salescopyImageKey").val(
											roadmap.salecopyImage);
								}

								$("#salescopyValue")
										.html(
												"&nbsp;&nbsp;&nbsp;<font size=1><a href='"
								+ roadmap.salescopy + "' target=_blank>"
														+ roadmap.salescopy
														+ "</a></font> "
														+ salescopyPic);
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





