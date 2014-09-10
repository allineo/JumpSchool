
<div id="companyName"></div>


<table>


	<tr>
		<td rowspan=2 align=center width=55><font size=1>Mat <br>Level
		</font> <br /> <b>5</b></td>
		<td width=180>Fund Raising</td>
		<td width=30>
			<div id="fundRaisingBox" style="background-color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
	<tr>
		<td width=180>Bootstrapped</td>
		<td width=30>
			<div id="bootstrappedBox" style="background-color: #0000FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
</table>

<table style="border-top: thin solid #E8E8E8">

	<tr>
		<td rowspan=2 align=center width=55><font size=1>Mat <br>Level
		</font> <br /> <b>4</b></td>
		<td width=180>Copy</td>
		<td width=30>
			<div id="copyBox" style="background-color: #0099FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
	<tr>
		<td width=180>Referred</td>
		<td width=30>
			<div id="referredBox" style="background-color: #00CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
</table>

<table style="border-top: thin solid #E8E8E8">
	<tr>
		<td rowspan=2 align=center width=55><font size=1>Mat <br>Level
		</font> <br /> <b>3</b></td>
		<td width=180>Satisfied</td>
		<td width=30>
			<div id="satisfiedBox" style="background-color: #33FFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
	<tr>
		<td>Profit</td>
		<td width=30>
			<div id="profitBox" style="background-color: #99FF00;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
</table>

<table style="border-top: thin solid #E8E8E8">
	<tr>
		<td rowspan=3 align=center width=55><font size=1>Mat <br>Level
		</font> <br /> <b>2</b></td>
		<td width=180>Loyal Users</td>
		<td width=30>
			<div id="loyalUsersBox" style="background-color: #CCFF66;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>

	<tr>
		<td>First Payers</td>
		<td width=30>
			<div id="paidBox" style="background-color: #FFFF00;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>

	<tr>
		<td>First Users</td>
		<td width=30>
			<div id="firstUsersBox" style="background-color: #FFFFAA;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
</table>

<table style="border-top: thin solid #E8E8E8">
	<tr>
		<td rowspan=5 align=center width=55><font size=1>Mat <br>Level
		</font> <br /> <b>1</b></td>
		<td width=180>Sign-ups/Pre-orders</td>
		<td width=30>
			<div id="signUpsBox" style="background-color: #FFCC00;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
	<tr>
		<td>Positive Reply</td>
		<td width=30>
			<div id="positiveReplyBox" style="background-color: #FFCC99;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
	<tr>
		<td>Reached Customers</td>
		<td width=30>
			<div id="reachedCustomersBox" style="background-color: #FF6600;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
	<tr>
		<td>Have a focused Vision</td>
		<td width=30>
			<div id="focusedVisionBox" style="background-color: #FF0000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>
	<tr>
		<td>Have an Idea</td>
		<td width=30>
			<div id="didntStartBox" style="background-color: #CC0000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		</td>
	</tr>

</table>




<script>
	ga('send', 'screenview', {
		'screenName' : 'Accelerometer'
	});
	
	var companyname = '<%=request.getParameter("companyname")%>';

	$("#companyName")
			.html(
					"<img src=../JumpSchoolLogo.jpg />"
							+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><a href=# onclick=loadCompany();>"
							+ companyname + "</a></b><br/>");
	
	function loadCompany() {
		$("#main").load("../pages/company.jsp", "companyname=" + companyname);
	}

	var fundRaisingColor = true;
	$("#fundRaisingBox").click(function() {
		if (fundRaisingColor) {
			$("#fundRaisingBox").css('background-color', '#E8E8E8');
			fundRaisingColor = false;
		} else {
			$("#fundRaisingBox").css('background-color', '#000000');
			fundRaisingColor = true;
		}
		saveMetrics();
	});

	var bootstrappedColor = true;
	$("#bootstrappedBox").click(function() {
		if (bootstrappedColor) {
			$("#bootstrappedBox").css('background-color', '#E8E8E8');
			bootstrappedColor = false;
		} else {
			$("#bootstrappedBox").css('background-color', '#0000FF');
			bootstrappedColor = true;
		}
		saveMetrics();
	});

	var copyColor = false;
	$("#copyBox").click(function() {
		if (copyColor) {
			$("#copyBox").css('background-color', '#E8E8E8');
			copyColor = false;
		} else {
			$("#copyBox").css('background-color', '#0099FF');
			copyColor = true;
		}
		saveMetrics();
	});

	var referredColor = false;
	$("#referredBox").click(function() {
		if (referredColor) {
			$("#referredBox").css('background-color', '#E8E8E8');
			referredColor = false;
		} else {
			$("#referredBox").css('background-color', '#00CCFF');
			referredColor = true;
		}
		saveMetrics();
	});

	var satisfiedColor = false;
	$("#satisfiedBox").click(function() {
		if (satisfiedColor) {
			$("#satisfiedBox").css('background-color', '#E8E8E8');
			satisfiedColor = false;
		} else {
			$("#satisfiedBox").css('background-color', '#33FFFF');
			satisfiedColor = true;
		}
		saveMetrics();
	});

	var profitColor = false;
	$("#profitBox").click(function() {
		if (profitColor) {
			$("#profitBox").css('background-color', '#E8E8E8');
			profitColor = false;
		} else {
			$("#profitBox").css('background-color', '#99FF00');
			profitColor = true;
		}
		saveMetrics();
	});

	var loyalUsersColor = false;
	$("#loyalUsersBox").click(function() {
		if (loyalUsersColor) {
			$("#loyalUsersBox").css('background-color', '#E8E8E8');
			loyalUsersColor = false;
		} else {
			$("#loyalUsersBox").css('background-color', '#CCFF66');
			loyalUsersColor = true;
		}
		saveMetrics();
	});

	var paidColor = false;
	$("#paidBox").click(function() {
		if (paidColor) {
			$("#paidBox").css('background-color', '#E8E8E8');
			paidColor = false;
		} else {
			$("#paidBox").css('background-color', '#FFFF00');
			paidColor = true;
		}
		saveMetrics();
	});

	var firstUsersColor = false;
	$("#firstUsersBox").click(function() {
		if (firstUsersColor) {
			$("#firstUsersBox").css('background-color', '#E8E8E8');
			firstUsersColor = false;
		} else {
			$("#firstUsersBox").css('background-color', '#FFFFAA');
			firstUsersColor = true;
		}
		saveMetrics();
	});

	var signUpsColor = false;
	$("#signUpsBox").click(function() {
		if (signUpsColor) {
			$("#signUpsBox").css('background-color', '#E8E8E8');
			signUpsColor = false;
		} else {
			$("#signUpsBox").css('background-color', '#FFCC00');
			signUpsColor = true;
		}
		saveMetrics();
	});

	var positiveReplyColor = false;
	$("#positiveReplyBox").click(function() {
		if (positiveReplyColor) {
			$("#positiveReplyBox").css('background-color', '#E8E8E8');
			positiveReplyColor = false;
		} else {
			$("#positiveReplyBox").css('background-color', '#FFCC99');
			positiveReplyColor = true;
		}
		saveMetrics();
	});

	var reachedCustomersColor = false;
	$("#reachedCustomersBox").click(function() {
		if (reachedCustomersColor) {
			$("#reachedCustomersBox").css('background-color', '#E8E8E8');
			reachedCustomersColor = false;
		} else {
			$("#reachedCustomersBox").css('background-color', '#FF6600');
			reachedCustomersColor = true;
		}
		saveMetrics();
	});

	var focusedVisionColor = false;
	$("#focusedVisionBox").click(function() {
		if (focusedVisionColor) {
			$("#focusedVisionBox").css('background-color', '#E8E8E8');
			focusedVisionColor = false;
		} else {
			$("#focusedVisionBox").css('background-color', '#FF0000');
			focusedVisionColor = true;
		}
		saveMetrics();
	});

	var didntStartColor = false;
	$("#didntStartBox").click(function() {
		if (didntStartColor) {
			$("#didntStartBox").css('background-color', '#E8E8E8');
			didntStartColor = false;
		} else {
			$("#didntStartBox").css('background-color', '#CC0000');
			didntStartColor = true;
		}
		saveMetrics();
	});

	function getMetrics() {

		var getMetricsUrl = "../getmetrics?name=" + companyname;

		$
				.post(getMetricsUrl, {},
						function(data, status) {

							var metrics = jQuery.parseJSON(data);

							if (metrics.didntStart != null
									&& metrics.didntStart != ""
									&& metrics.didntStart != "false"
									&& metrics.didntStart != false) {
								$("#didntStartBox").css('background-color',
										'#CC0000');
								didntStartColor = true;
							} else {
								$("#didntStartBox").css('background-color',
										'#CC0000');
								didntStartColor = false;
							}

							if (metrics.focusedVision != null
									&& metrics.focusedVision != ""
									&& metrics.focusedVision != "false"
									&& metrics.focusedVision != false) {
								$("#focusedVisionBox").css('background-color',
										'#FF0000');
								focusedVisionColor = true;
							} else {
								$("#focusedVisionBox").css('background-color',
										'#E8E8E8');
								focusedVisionColor = false;
							}

							if (metrics.reachedCustomers != null
									&& metrics.reachedCustomers != ""
									&& metrics.reachedCustomers != "false"
									&& metrics.reachedCustomers != false) {
								$("#reachedCustomersBox").css(
										'background-color', '#FF6600');
								reachedCustomersColor = true;
							} else {
								$("#reachedCustomersBox").css(
										'background-color', '#E8E8E8');
								reachedCustomersColor = false;
							}

							if (metrics.positiveReply != null
									&& metrics.positiveReply != ""
									&& metrics.positiveReply != "false"
									&& metrics.positiveReply != false) {
								$("#positiveReplyBox").css('background-color',
										'#FFCC99');
								positiveReplyColor = true;
							} else {
								$("#positiveReplyBox").css('background-color',
										'#E8E8E8');
								positiveReplyColor = false;
							}

							if (metrics.signUps != null
									&& metrics.signUps != ""
									&& metrics.signUps != "false"
									&& metrics.signUps != false) {
								$("#signUpsBox").css('background-color',
										'#FFCC00');
								signUpsColor = true;
							} else {
								$("#signUpsBox").css('background-color',
										'#E8E8E8');
								signUpsColor = false;
							}

							if (metrics.firstUsers != null
									&& metrics.firstUsers != ""
									&& metrics.firstUsers != "false"
									&& metrics.firstUsers != false) {
								$("#firstUsersBox").css('background-color',
										'#FFFFAA');
								firstUsersColor = true;
							} else {
								$("#firstUsersBox").css('background-color',
										'#E8E8E8');
								firstUsersColor = false;
							}

							if (metrics.paid != null && metrics.paid != ""
									&& metrics.paid != "false"
									&& metrics.paid != false) {
								$("#paidBox")
										.css('background-color', '#FFFF00');
								paidColor = true;
							} else {
								$("#paidBox")
										.css('background-color', '#E8E8E8');
								paidColor = false;
							}

							if (metrics.loyalUsers != null
									&& metrics.loyalUsers != ""
									&& metrics.loyalUsers != "false"
									&& metrics.loyalUsers != false) {
								$("#loyalUsersBox").css('background-color',
										'#CCFF66');
								loyalUsersColor = true;
							} else {
								$("#loyalUsersBox").css('background-color',
										'#E8E8E8');
								loyalUsersColor = false;
							}

							if (metrics.satisfied != null
									&& metrics.satisfied != ""
									&& metrics.satisfied != "false"
									&& metrics.satisfied != false) {
								$("#satisfiedBox").css('background-color',
										'#33FFFF');
								satisfiedColor = true;
							} else {
								$("#satisfiedBox").css('background-color',
										'#E8E8E8');
								satisfiedColor = false;
							}

							if (metrics.profit != null && metrics.profit != ""
									&& metrics.profit != "false"
									&& metrics.profit != false) {
								$("#profitBox").css('background-color',
										'#99FF00');
								profitColor = true;
							} else {
								$("#profitBox").css('background-color',
										'#E8E8E8');
								profitColor = false;
							}

							if (metrics.referred != null
									&& metrics.referred != ""
									&& metrics.referred != "false"
									&& metrics.referred != false) {
								$("#referredBox").css('background-color',
										'#00CCFF');
								referredColor = true;
							} else {
								$("#referredBox").css('background-color',
										'#E8E8E8');
								referredColor = false;
							}

							if (metrics.copy != null && metrics.copy != ""
									&& metrics.copy != "false"
									&& metrics.copy != false) {
								$("#copyBox")
										.css('background-color', '#0099FF');
								copyColor = true;
							} else {
								$("#copyBox")
										.css('background-color', '#E8E8E8');
								copyColor = false;
							}

							if (metrics.bootstrapped != null
									&& metrics.bootstrapped != ""
									&& metrics.bootstrapped != "false"
									&& metrics.bootstrapped != false) {
								$("#bootstrappedBox").css('background-color',
										'#0000FF');
								bootstrappedColor = true;
							} else {
								$("#bootstrappedBox").css('background-color',
										'#E8E8E8');
								bootstrappedColor = false;
							}

							if (metrics.fundRaising != null
									&& metrics.fundRaising != ""
									&& metrics.fundRaising != "false"
									&& metrics.fundRaising != false) {
								$("#fundRaisingBox").css('background-color',
										'#000000');
								fundRaisingColor = true;
							} else {
								$("#fundRaisingBox").css('background-color',
										'#E8E8E8');
								fundRaisingColor = false;
							}

						});
	}

	function saveMetrics() {

		var saveMetricsUrl = "../savemetrics" + "?name=" + companyname
				+ "&didntStart=" + encodeURIComponent(didntStartColor)
				+ "&focusedVision=" + encodeURIComponent(focusedVisionColor)
				+ "&reachedCustomers="
				+ encodeURIComponent(reachedCustomersColor) + "&positiveReply="
				+ encodeURIComponent(positiveReplyColor) + "&signUps="
				+ encodeURIComponent(signUpsColor) + "&firstUsers="
				+ encodeURIComponent(firstUsersColor) + "&paid="
				+ encodeURIComponent(paidColor) + "&loyalUsers="
				+ encodeURIComponent(loyalUsersColor) + "&profit="
				+ encodeURIComponent(profitColor) + "&satisfied="
				+ encodeURIComponent(satisfiedColor) + "&referred="
				+ encodeURIComponent(referredColor) + "&copy="
				+ encodeURIComponent(copyColor) + "&bootstrapped="
				+ encodeURIComponent(bootstrappedColor) + "&fundRaising="
				+ encodeURIComponent(fundRaisingColor);

		$.post(saveMetricsUrl, {}, function(data, status) {

			// alert('Item saved on your Wish List. Thank you!');

		});
	}

	if (getUrlParameter('Name') != null && getUrlParameter('Name') != '') {

		getMetrics();
	}
</script>
