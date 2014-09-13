<!DOCTYPE html>

<html>
<head>
<title>Jump School App</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.3/jquery.mobile.structure-1.4.3.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.3/jquery.mobile-1.4.3.min.js"></script>
<link rel="stylesheet" href="../themes/test.min.css" />
<link rel="stylesheet" href="../themes/jquery.mobile.icons.min.css" />


<script src="../javascript/utilities.js"></script>


<!-- Google Analytics -->
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');

	ga('create', 'UA-54197830-1', {
		'userId' : getUrlParameter("Name")
	});
	ga('send', 'pageview');
</script>
<!-- End Google Analytics -->

</head>

<body>

	<div data-role="page">

		<div data-role="header">
			<div data-role="navbar">
				<ul>
					<li><a id="accelerometerMenu" href="#">Accelerometer</a></li>
					<li><a id="roadmapMenu" href="#">Roadmap</a></li>
					<li><a id="meMenu" href="#">Feedback</a></li>
					<li><a id="wallMenu" href="#">Wall</a></li>
				</ul>
			</div>
		</div>


		<div id=main role="main" class="ui-content"></div>

		<div data-role="popup" id="popupVision" name="popupVision"></div>
		<div data-role="popup" id="popupMainFeature" name="popupMainFeature"></div>
		<div data-role="popup" id="popupPersona" name="popupPersona"></div>
		<div data-role="popup" id="popupBMCanvas" name="popupBMCanvas"></div>
		<div data-role="popup" id="popupLandingPage" name="popupLandingPage"></div>
		<div data-role="popup" id="popupMetrics" name="popupMetrics"></div>
		<div data-role="popup" id="popupMvp" name="popupMvp"></div>
		<div data-role="popup" id="popupSalesCopy" name="popupSalesCopy"></div>

	</div>

	<script>
		$(document)
				.on(
						"pageinit",
						function(event) {

							$("#meMenu")
									.click(
											function() {
												$("#main")
														.load(
																"../pages/company.jsp",
																"companyname="
																		+ encodeURIComponent(getUrlParameter("Name")));
											});

							$("#accelerometerMenu")
									.click(
											function() {
												$("#main")
														.load(
																"../pages/accelerometer.jsp",
																"companyname="
																		+ encodeURIComponent(getUrlParameter("Name")));
											});
							$("#roadmapMenu").click(function() {
								$("#main").load("../pages/roadmap.jsp");
							});

							$("#wallMenu").click(function() {
								$("#main").load("../pages/wall.html");
							});

							if (getUrlParameter("upload")) {
								$("#roadmapMenu").addClass("ui-btn-active");
								$("#main").load("../pages/roadmap.jsp");
							} else {
								$("#accelerometerMenu").addClass(
										"ui-btn-active");
								$("#main")
										.load(
												"../pages/accelerometer.jsp",
												"companyname="
														+ encodeURIComponent(getUrlParameter("Name")));
							}

							$("#buttonAdd").click(function() {
								window.location.href = "../pages/getname.html";
							});
						});
	</script>

</body>
</html>

