$(document).on(
		"pageinit",
		function(event) {

			$("#visionValue").click(function() {
				$("#visionValue").hide();
				$("#inputVision").show();
			});
			$("#inputVision").change(function() {
				saveRoadmap();
			});
			$("#inputVision").blur(
					function() {
						if ($('#inputVision').val() != null
								&& $('#inputVision').val() != "") {
							$("#visionValue").html(
									"<a href='" + $('#inputVision').val()
											+ "'>" + $('#inputVision').val()
											+ "</a>");
							$('#inputVision').hide();
							$('#visionValue').show();
						}
					});

			$("#mainFeatureValue").click(function() {
				$("#mainFeatureValue").hide();
				$("#mainFeatureInput").show();
			});
			$("#mainFeatureInput").change(function() {
				saveRoadmap();
			});
			$("#mainFeatureInput").blur(
					function() {
						if ($('#mainFeatureInput').val() != null
								&& $('#mainFeatureInput').val() != "") {
							$("#mainFeatureValue").html(
									"<a href='" + $('#mainFeatureInput').val()
											+ "'>"
											+ $('#mainFeatureInput').val()
											+ "</a>");
							$('#mainFeatureInput').hide();
							$('#mainFeatureValue').show();
						}
					});

			$("#personaValue").click(function() {
				$("#personaValue").hide();
				$("#personaInput").show();
			});
			$("#personaInput").change(function() {
				saveRoadmap();
			});
			$("#personaInput").blur(
					function() {
						if ($('#personaInput').val() != null
								&& $('#personaInput').val() != "") {
							$("#personaValue").html(
									"<a href='" + $('#personaInput').val()
											+ "'>" + $('#personaInput').val()
											+ "</a>");
							$('#personaInput').hide();
							$('#personaValue').show();
						}
					});

			$("#ecosystemValue").click(function() {
				$("#ecosystemValue").hide();
				$("#ecosystemInput").show();
			});
			$("#ecosystemInput").change(function() {
				saveRoadmap();
			});
			$("#ecosystemInput").blur(
					function() {
						if ($('#ecosystemInput').val() != null
								&& $('#ecosystemInput').val() != "") {
							$("#ecosystemValue").html(
									"<a href='" + $('#ecosystemInput').val()
											+ "'>" + $('#ecosystemInput').val()
											+ "</a>");
							$('#ecosystemInput').hide();
							$('#ecosystemValue').show();
						}
					});

			$("#bmcanvasValue").click(function() {
				$("#bmcanvasValue").hide();
				$("#bmcanvasInput").show();
			});
			$("#bmcanvasInput").change(function() {
				saveRoadmap();
			});
			$("#bmcanvasInput").blur(
					function() {
						if ($('#bmcanvasInput').val() != null
								&& $('#bmcanvasInput').val() != "") {
							$("#bmcanvasValue").html(
									"<a href='" + $('#bmcanvasInput').val()
											+ "'>" + $('#bmcanvasInput').val()
											+ "</a>");
							$('#bmcanvasInput').hide();
							$('#bmcanvasValue').show();
						}
					});

			$("#landingpageValue").click(function() {
				$("#landingpageValue").hide();
				$("#landingpageInput").show();
			});
			$("#landingpageInput").change(function() {
				saveRoadmap();
			});
			$("#landingpageInput").blur(
					function() {
						if ($('#landingpageInput').val() != null
								&& $('#landingpageInput').val() != "") {
							$("#landingpageValue").html(
									"<a href='" + $('#landingpageInput').val()
											+ "'>"
											+ $('#landingpageInput').val()
											+ "</a>");
							$('#landingpageInput').hide();
							$('#landingpageValue').show();
						}
					});

			$("#metricsValue").click(function() {
				$("#metricsValue").hide();
				$("#metricsInput").show();
			});
			$("#metricsInput").change(function() {
				saveRoadmap();
			});
			$("#metricsInput").blur(
					function() {
						if ($('#metricsInput').val() != null
								&& $('#metricsInput').val() != "") {
							$("#metricsValue").html(
									"<a href='" + $('#metricsInput').val()
											+ "'>" + $('#metricsInput').val()
											+ "</a>");
							$('#metricsInput').hide();
							$('#metricsValue').show();
						}
					});

			$("#mvpValue").click(function() {
				$("#mvpValue").hide();
				$("#mvpInput").show();
			});
			$("#mvpInput").change(function() {
				saveRoadmap();
			});
			$("#mvpInput").blur(
					function() {
						if ($('#mvpInput').val() != null
								&& $('#mvpInput').val() != "") {
							$("#mvpValue").html(
									"<a href='" + $('#mvpInput').val() + "'>"
											+ $('#mvpInput').val() + "</a>");
							$('#mvpInput').hide();
							$('#mvpValue').show();
						}
					});

			$("#salescopyValue").click(function() {
				$("#salescopyValue").hide();
				$("#salescopyInput").show();
			});
			$("#salescopyInput").change(function() {
				saveRoadmap();
			});
			$("#salescopyInput").blur(
					function() {
						if ($('#salescopyInput').val() != null
								&& $('#salescopyInput').val() != "") {
							$("#salescopyValue").html(
									"<a href='" + $('#salescopyInput').val()
											+ "'>" + $('#salescopyInput').val()
											+ "</a>");
							$('#salescopyInput').hide();
							$('#salescopyValue').show();
						}
					});

			if (getUrlParameter('Name') != null
					&& getUrlParameter('Name') != '') {
				getRoadmap();
			}

			$("#popupVision").load("pages/vision.html");
			$("#popupMainFeature").load("pages/mainfeature.html");
			$("#popupPersona").load("pages/persona.html");
			$("#popupEcosystem").load("pages/ecosystem.html");
			$("#popupLandingPage").load("pages/landingpage.html");
			$("#popupBMCanvas").load("pages/bmcanvas.html");
			$("#popupMetrics").load("pages/metrics.html");
			$("#popupMvp").load("pages/mvp.html");
			$("#popupSalesCopy").load("pages/salescopy.html");

		});
