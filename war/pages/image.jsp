<div id="companyName"></div>
<br />

<div id="image"></div>

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

	var imageURL = '<%=request.getParameter("imageURL")%>';
	var imageTitle = '<%=request.getParameter("imageTitle")%>';
	var imageSource = '<%=request.getParameter("imageSource")%>';

	function showImage(imageURL, imageTitle, imageSource) {

		var image = "";
		if (imageURL != "" && imageURL != "undefined") {
			image = "<label>" + imageTitle
					+ ": <a href='"+imageURL+"' target=_blank>" + imageURL
					+ "</a></label>";
		} else {
			image = "<label>" + imageTitle + "</label>";
		}

		image += "<a href='"+imageSource+"=s1300' target=_blank>"
				+ "<img width=250 height=250 title='"+imageTitle+"' src='"
			+ imageSource + "=s250' /></a>";

		$("#image").html(image);

		$("#comments").load("../pages/comments.jsp",
				'companyname=' + companyname);
	}

	showImage(imageURL, imageTitle, imageSource);
</script>


