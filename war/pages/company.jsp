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
								bmcanvasPic = "<a href='javascript:void(0)' onclick=\"openImage('"
										+ roadmap.ID
										+ "','"
										+ bmcanvasURL
										+ "','Business Model Canvas','"
										+ roadmap.bmcanvasImage
										+ "');\">"
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
										|| mainFeatureURL == ""
										|| mainFeatureURL == "undefined") {

									mainFeatureURL = roadmap.mainFeatureImage;
								}
								mainFeaturePic = "<a href='javascript:void(0)' onclick=\"openImage('"
										+ roadmap.ID
										+ "','"
										+ mainFeatureURL
										+ "','Main Feature','"
										+ roadmap.mainFeatureImage
										+ "');\">"
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
								personaPic = "<a href='javascript:void(0)' onclick=\"openImage('"
										+ roadmap.ID
										+ "','"
										+ personaURL
										+ "','Persona Map','"
										+ roadmap.personaImage
										+ "');\">"
										+ "<img width=130 height=130 title='Persona Map' src='"
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
								salescopyPic = "<a href='javascript:void(0)' onclick=\"openImage('"
										+ roadmap.ID
										+ "','"
										+ salescopyURL
										+ "','Copywriting','"
										+ roadmap.salescopyImage
										+ "');\">"
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

	function openImage(companyname, imageURL, imageTitle, imageSource) {

		$("#main").load(
				"../pages/image.jsp",
				"companyname=" + companyname + "&imageURL=" + imageURL
						+ "&imageTitle=" + imageTitle + "&imageSource="
						+ imageSource);
	}
</script>


