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
public class CreateRoadmapServlet extends HttpServlet {

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

		Key key = KeyFactory.createKey("metrics",
				URLUtilities.decode(request.getParameter("name")));
		Entity entity = Operations.get(key);

		if (entity.getProperty("didntStart") == null) {
			entity.setProperty("didntStart", "true");

			Operations.save(entity);
		}

		key = KeyFactory.createKey("roadmap",
				URLUtilities.decode(request.getParameter("name")));

		entity = Operations.get(key);

		if (entity.getProperty("maturity") == null) {
			entity.setProperty("maturity","1");
			
			Operations.save(entity);
		}

		return "";
	}

}
