
<div id="Maturity3"></div>
<br/><br/>
<div id="Maturity2"></div>


<script>
	function getWall() {

		var getWallUrl = "../wall";

		$
				.post(
						getWallUrl,
						{},
						function(data, status) {
	
							var results = jQuery.parseJSON(data);

							var maturity3 = "<table><tr>";
							var maturity2 = "<table><tr>";
							$
									.each(
											results,
											function(key, val) {

												if (val.maturity == '3') {

													maturity3 += "<td><a href='" 
													+ val.vision + "' target=_blank>"
															+ val.ID
															+ "</a></td>";
												}

												if (val.maturity == '2') {

													maturity2 += "<tr><td><a href='" + val.vision + 
											"' target=_blank>"
															+ val.ID
															+ "</a></td>";
												}

											});

							maturity3 += "</tr></table>";
							maturity2 += "</tr></table>";

							$("#Maturity3").html(maturity3);
							$("#Maturity2").html(maturity2);
						});
	}
	getWall();
</script>





