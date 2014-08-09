
function getUrlParameter(urlParameterName) {
 alert(location.search);
	if (urlParameterName = (new RegExp('[?&]'
			+ encodeURIComponent(urlParameterName) + '=([^&]*)'))
			.exec(location.search)) {
			 
		return decodeURIComponent(urlParameterName[1]);
			}
}