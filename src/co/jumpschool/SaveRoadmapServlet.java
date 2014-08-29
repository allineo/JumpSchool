package co.jumpschool;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jumpschool.utilities.CallbackUtilities;
import co.jumpschool.utilities.Operations;
import co.jumpschool.utilities.URLUtilities;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@SuppressWarnings("serial")
public class SaveRoadmapServlet extends HttpServlet {

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

		Key key = KeyFactory.createKey("roadmap",
				URLUtilities.decode(request.getParameter("name")));

		Entity entity = Operations.get(key);

		entity.setProperty("vision",
				URLUtilities.decode(request.getParameter("vision")));
		entity.setProperty("mainfeature",
				URLUtilities.decode(request.getParameter("mainfeature")));
		entity.setProperty("persona",
				URLUtilities.decode(request.getParameter("persona")));
		entity.setProperty("bmcanvas",
				URLUtilities.decode(request.getParameter("bmcanvas")));
		entity.setProperty("landingpage",
				URLUtilities.decode(request.getParameter("landingpage")));
		entity.setProperty("metrics",
				URLUtilities.decode(request.getParameter("metrics")));
		entity.setProperty("mvp",
				URLUtilities.decode(request.getParameter("mvp")));
		entity.setProperty("salescopy",
				URLUtilities.decode(request.getParameter("salescopy")));

		return Operations.save(entity);
	}

}
