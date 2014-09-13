

<div data-role="fieldcontain" style="border-width: 0;">
	<label for="commentName">Your Name:</label> <input type=text
		name="commentName" id="commentName" placeholder="Enter your name here"
		value="" class="ui-corner-all" /><br /> <label for="commentText">Your
		Feedback:</label>
	<textarea name="commentText" id="commentText"
		placeholder="Enter your comments here" value="" rows=3 cols=50
		class="ui-corner-all"></textarea>
	<button class='ui-btn ui-btn-inline ui-btn-b ui-mini' id='buttonSend'
		onclick='saveComment();'>Send</button>
</div>

<br />
<div id="commentsSession"></div>




<script>
	ga('send', 'screenview', {
		'screenName' : 'Comments'
	});

	var yourName = getUrlParameter("Name");
	if (yourName !="" && yourName !="undefined") {
		$("#commentName").val(yourName);
	}
	
	var companyname = '<%=request.getParameter("companyname")%>';

	function listComments() {

		var getUrl = "../listcomments?name=" + companyname;

		$.post(getUrl, {}, function(data, status) {

			var results = jQuery.parseJSON(data);

			var commentList = '';
			$.each(results,
					function(key, val) {

						commentList += '<font size=1><label>['
								+ timestampToDate(val.timestamp) + '] <b>'
								+ val.commentname + '</b>: ' + val.text
								+ '</label></font>';
					});

			$("#commentsSession").html(commentList);
		});
	}

	function saveComment() {

		var saveUrl = "../savecomment?name=" + companyname + "&commentname="
				+ encodeURIComponent($("#commentName").val()) + "&text="
				+ encodeURIComponent($("#commentText").val());

		$.post(saveUrl, {}, function(data, status) {

			listComments();
			$("#commentText").val("");

		});
	}

	listComments();
</script>





