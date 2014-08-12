$(document).on(
		"pageinit",
		function(event) {

			$("#visionValue").click(function() {
				$("#visionValue").hide();
				$("#inputVision").show();
			});
			$("#inputVision").change(
					function() {
						saveRoadmap();
						$("#visionValue").html(
								"<a href='" + $('#inputVision').val() + "'>"
										+ $('#inputVision').val() + "</a>");
						$('#inputVision').hide();
						$('#visionValue').show();
					});

			$("#mainFeatureValue").click(function() {
				$("#mainFeatureValue").hide();
				$("#mainFeatureInput").show();
			});
			$("#mainFeatureInput").change(
					function() {
						saveRoadmap();
						$("#mainFeatureValue").html(
								"<a href='" + $('#mainFeatureInput').val()
										+ "'>" + $('#mainFeatureInput').val()
										+ "</a>");
						$('#mainFeatureInput').hide();
						$('#mainFeatureValue').show();
					});

			$("#personaValue").click(function() {
				$("#personaValue").hide();
				$("#personaInput").show();
			});
			$("#personaInput").change(
					function() {
						saveRoadmap();
						$("#personaValue").html(
								"<a href='" + $('#personaInput').val() + "'>"
										+ $('#personaInput').val() + "</a>");
						$('#personaInput').hide();
						$('#personaValue').show();
					});

			$("#ecosystemValue").click(function() {
				$("#ecosystemValue").hide();
				$("#ecosystemInput").show();
			});
			$("#ecosystemInput").change(
					function() {
						saveRoadmap();
						$("#ecosystemValue").html(
								"<a href='" + $('#ecosystemInput').val() + "'>"
										+ $('#ecosystemInput').val() + "</a>");
						$('#ecosystemInput').hide();
						$('#ecosystemValue').show();
					});	
			
			$("#bmcanvasValue").click(function() {
				$("#bmcanvasValue").hide();
				$("#bmcanvasInput").show();
			});
			$("#bmcanvasInput").change(
					function() {
						saveRoadmap();
						$("#bmcanvasValue").html(
								"<a href='" + $('#bmcanvasInput').val() + "'>"
										+ $('#bmcanvasInput').val() + "</a>");
						$('#bmcanvasInput').hide();
						$('#bmcanvasValue').show();
					});
			
			$("#landingpageValue").click(function() {
				$("#landingpageValue").hide();
				$("#landingpageInput").show();
			});
			$("#landingpageInput").change(
					function() {
						saveRoadmap();
						$("#landingpageValue").html(
								"<a href='" + $('#landingpageInput').val() + "'>"
										+ $('#landingpageInput').val() + "</a>");
						$('#landingpageInput').hide();
						$('#landingpageValue').show();
					});
			
			$("#metricsValue").click(function() {
				$("#metricsValue").hide();
				$("#metricsInput").show();
			});
			$("#metricsInput").change(
					function() {
						saveRoadmap();
						$("#metricsValue").html(
								"<a href='" + $('#metricsInput').val() + "'>"
										+ $('#metricsInput').val() + "</a>");
						$('#metricsInput').hide();
						$('#metricsValue').show();
					});

			$("#mvpValue").click(function() {
				$("#mvpValue").hide();
				$("#mvpInput").show();
			});
			$("#mvpInput").change(
					function() {
						saveRoadmap();
						$("#mvpValue").html(
								"<a href='" + $('#mvpInput').val() + "'>"
										+ $('#mvpInput').val() + "</a>");
						$('#mvpInput').hide();
						$('#mvpValue').show();
					});

			$("#salescopyValue").click(function() {
				$("#salescopyValue").hide();
				$("#salescopyInput").show();
			});
			$("#salescopyInput").change(
					function() {
						saveRoadmap();
						$("#salescopyValue").html(
								"<a href='" + $('#salescopyInput').val() + "'>"
										+ $('#salescopyInput').val() + "</a>");
						$('#salescopyInput').hide();
						$('#salescopyValue').show();
					});
			

			if (getUrlParameter('Name') != null
					&& getUrlParameter('Name') != '') {
				getRoadmap();
			}

			$("#popupVision").load("pages/vision.html");
			$("#popupMainFeature").load("pages/mainfeature.html");

		});
