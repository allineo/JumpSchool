


$(document).on(
		"pageinit",
		function(event) {
		  
		  $("#main").load("../pages/accelerometer.html");
		//  $("#main").load("../pages/roadmap.html");
		  
		  $("#accelerometerMenu").click(function() {
			  $("#main").load("../pages/accelerometer.html");
			});
			
			$("#roadmapMenu").click(function() {
			  $("#main").load("../pages/roadmap.html");
			});

		});
		
		




