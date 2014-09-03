<div id="companyName">

	<img src=../JumpSchoolLogo.jpg /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>
		<%=request.getParameter("companyname")%>
	</b><br /> <br />
</div>


<div id="company"></div>

<br />


<script>
var companyname = '<%=request.getParameter("companyname")%>';
var vision = '<%=request.getParameter("vision")%>';
var bmcanvasURL = '<%=request.getParameter("bmcanvasURL")%>';
var bmcanvasImage = '<%=request.getParameter("bmcanvasImage")%>';
var mainFeatureURL = '<%=request.getParameter("mainFeatureURL")%>';
var mainFeatureImage = '<%=request.getParameter("mainFeatureImage")%>';
var personaURL = '<%=request.getParameter("personaURL")%>';
var personaImage = '<%=request.getParameter("personaImage")%>';
var salescopyURL = '<%=request.getParameter("salescopyURL")%>';
var salescopyImage = '<%=request.getParameter("salescopyImage")%>';
var mvp = '<%=request.getParameter("mvp")%>';

	var company = "<label>Vision & Team: <a href='"+vision+"' target=_blank>"
			+ vision + "</a></label>";

	var bmcanvasPic = "";
	if (bmcanvasImage != 'null' && bmcanvasImage != ""
			&& bmcanvasImage != "undefined") {
		if (bmcanvasURL == 'null' || bmcanvasURL == "") {
			bmcanvasURL = "/serve?blob-key=" + bmcanvasImage;
		}
		bmcanvasPic = "<a href='"+bmcanvasURL+"' target=_blank>"
				+ "<img width=150 height=150 src='/serve?blob-key="
				+ bmcanvasImage + "' /></a>";
	}

	company += bmcanvasPic;

	var mainFeaturePic = "";
	if (mainFeatureImage != 'null' && mainFeatureImage != ""
			&& mainFeatureImage != "undefined") {
		if (mainFeatureURL == 'null' || mainFeatureURL == "") {

			mainFeatureURL = "/serve?blob-key=" + mainFeatureImage;
		}
		mainFeaturePic = "<a href='"+mainFeatureURL+"' target=_blank>"
				+ "<img width=150 height=150 src='/serve?blob-key="
				+ mainFeatureImage + "' /></a>";
	}
	company += mainFeaturePic + "<br/>";

	var personaPic = "";
	if (personaImage != 'null' && personaImage != ""
			&& personaImage != "undefined") {
		if (personaURL == 'null' || personaURL == "") {
			personaURL = "/serve?blob-key=" + personaImage;
		}
		personaPic = "<a href='"+personaURL+"' target=_blank>"
				+ "<img width=150 height=150 src='/serve?blob-key="
				+ personaImage + "' /></a>";
	}
	company += personaPic;

	var salescopyPic = "";
	if (salescopyImage != 'null' && salescopyImage != ""
			&& salescopyImage != "undefined") {
		if (salescopyURL == 'null' || salescopyURL == "") {
			salescopyURL = "/serve?blob-key=" + salescopyImage;
		}
		salescopyPic = "<a href='"+salescopyURL+"' target=_blank>"
				+ "<img width=150 height=150 src='/serve?blob-key="
				+ salescopyImage + "' /></a>";
	}
	company += salescopyPic;

	company += "<br/><label>Minimum Viable Product: <a href='"+mvp+"' target=_blank>"
			+ mvp + "</a></label>";

	$("#company").html(company);
</script>


