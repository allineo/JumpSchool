package co.jumpschool;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jumpschool.utilities.CallbackUtilities;
import co.jumpschool.utilities.Operations;
import co.jumpschool.utilities.URLUtilities;

import com.google.appengine.api.datastore.Entity;

@SuppressWarnings("serial")
public class SaveMetricsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		// response.getWriter().println(save(request));
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		response.getWriter().println(save(request));
	}

	private String save(HttpServletRequest request) {

		String answer = null;

		// if (JsonpfyProperties.authenticate(request)) {

		String itemId = saveData(request);

		answer = CallbackUtilities.getCallback(
				request.getParameter("callback"), itemId);

		// }
		return answer;
	}

	private String saveData(HttpServletRequest request) {

		Entity entity = new Entity("metrics", URLUtilities.decode(request.getParameter("name")));

		entity.setProperty("didntStart",
				URLUtilities.decode(request.getParameter("didntStart")));
		entity.setProperty("focusedVision",
				URLUtilities.decode(request.getParameter("focusedVision")));
		entity.setProperty("reachedCustomers",
				URLUtilities.decode(request.getParameter("reachedCustomers")));
		entity.setProperty("positiveReply",
				URLUtilities.decode(request.getParameter("positiveReply")));
		entity.setProperty("signUps",
				URLUtilities.decode(request.getParameter("signUps")));
		entity.setProperty("firstUsers",
				URLUtilities.decode(request.getParameter("firstUsers")));
		entity.setProperty("paid",
				URLUtilities.decode(request.getParameter("paid")));
		entity.setProperty("loyalUsers",
				URLUtilities.decode(request.getParameter("loyalUsers")));
		entity.setProperty("profit",
				URLUtilities.decode(request.getParameter("profit")));
		entity.setProperty("satisfied",
				URLUtilities.decode(request.getParameter("satisfied")));
		entity.setProperty("referred",
				URLUtilities.decode(request.getParameter("referred")));
		entity.setProperty("copy",
				URLUtilities.decode(request.getParameter("copy")));
		entity.setProperty("bootstrapped",
				URLUtilities.decode(request.getParameter("bootstrapped")));
		entity.setProperty("fundRaising",
				URLUtilities.decode(request.getParameter("fundRaising")));

		return Operations.save(entity);
	}

}
