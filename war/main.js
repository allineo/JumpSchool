
function getUrlParameter(urlParameterName) {

	if (urlParameterName = (new RegExp('[?&]'
			+ encodeURIComponent(urlParameterName) + '=([^&]*)'))
			.exec(location.search)) {
			 
		return decodeURIComponent(urlParameterName[1]);
			}
}