<div id="companyName"></div>
<br />

<div id="company"></div>

<br />
<hr />
<br />

<div id="comments"></div>


<script>
var companyname = '<%=request.getParameter("companyname")%>';

	$("#companyName")
			.html(
					"<img src=../JumpSchoolLogo.jpg />"
							+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><a href=# onclick='loadCompany();'>"
							+ companyname + "</a></b><br/>");

	function loadCompany() {
		$("#main").load("../pages/company.jsp", "companyname=" + companyname);
	}

	function getRoadmap() {

		var getRoadmapUrl = "../getroadmap?name=" + companyname;

		$
				.post(
						getRoadmapUrl,
						{},
						function(data, status) {

							var roadmap = jQuery.parseJSON(data);

							var company = "<label>Vision & Team: <a href='"+roadmap.vision+"' target=_blank>"
									+ roadmap.vision + "</a></label>";

							var bmcanvasPic = "";
							if (roadmap.bmcanvasImage != 'null'
									&& roadmap.bmcanvasImage != ""
									&& roadmap.bmcanvasImage != "undefined") {
								bmcanvasURL = roadmap.bmcanvas;
								if (bmcanvasURL == 'null' || bmcanvasURL == "") {
									bmcanvasURL = roadmap.bmcanvasImage;
								}
								bmcanvasPic = "<a href='"+bmcanvasURL+"' target=_blank>"
										+ "<img width=130 height=130 title='Business Model Canvas' src='"
			+ roadmap.bmcanvasImage + "=s150' /></a>";
							}

							company += bmcanvasPic;

							var mainFeaturePic = "";
							if (roadmap.mainFeatureImage != 'null'
									&& roadmap.mainFeatureImage != ""
									&& roadmap.mainFeatureImage != "undefined") {
								mainFeatureURL = roadmap.mainFeature;
								if (mainFeatureURL == 'null'
										|| mainFeatureURL == "") {

									mainFeatureURL = roadmap.mainFeatureImage;
								}
								mainFeaturePic = "<a href='"+mainFeatureURL+"' target=_blank>"
										+ "<img width=130 height=130 title='Main Feature' src='"
			+ roadmap.mainFeatureImage + "=s150' /></a>";
							}
							company += mainFeaturePic + "<br/>";

							var personaPic = "";
							if (roadmap.personaImage != 'null'
									&& roadmap.personaImage != ""
									&& roadmap.personaImage != "undefined") {
								personaURL = roadmap.persona;
								if (personaURL == 'null' || personaURL == "") {
									personaURL = roadmap.personaImage;
								}
								personaPic = "<a href='"+personaURL+"' target=_blank>"
										+ "<img width=130 height=130 title='Persona' src='"
			+ roadmap.personaImage + "=s150' /></a>";
							}
							company += personaPic;

							var salescopyPic = "";
							if (roadmap.salescopyImage != 'null'
									&& roadmap.salescopyImage != ""
									&& roadmap.salescopyImage != "undefined") {
								salescopyURL = roadmap.salescopy;
								if (salescopyURL == 'null'
										|| salescopyURL == "") {
									salescopyURL = roadmap.salescopyImage;
								}
								salescopyPic = "<a href='"+salescopyURL+"' target=_blank>"
										+ "<img width=130 height=130 title='Copywriting' src='"
			+ roadmap.salescopyImage + "=s150' /></a>";
							}
							company += salescopyPic;

							company += "<br/><label>Minimum Viable Product: <a href='"+roadmap.mvp+"' target=_blank>"
									+ roadmap.mvp + "</a></label>";

							company += "<label><a href=# onclick='openAcceleremoter(\""
									+ roadmap.ID
									+ "\");'>Accelerometer</a></label>";

							$("#company").html(company);

							$("#comments").load("../pages/comments.jsp",
									'companyname=' + companyname);

						});
	}

	getRoadmap();

	function openAcceleremoter(companyname) {

		$("#main").load("../pages/accelerometer.jsp",
				"companyname=" + companyname);
	}
</script>


