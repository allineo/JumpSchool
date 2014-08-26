package co.jumpschool;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jumpschool.utilities.CallbackUtilities;
import co.jumpschool.utilities.Operations;
import co.jumpschool.utilities.URLUtilities;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.labs.repackaged.org.json.JSONObject;

@SuppressWarnings("serial")
public class GetMetricsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		// response.getWriter().println(list(request));
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		response.getWriter().println(list(request));
	}

	private String list(HttpServletRequest request) {

		String answer = null;

		// if (JsonpfyProperties.authenticate(request)) {

		JSONObject entities = getData(URLUtilities.decode(request
				.getParameter("name")));

		answer = CallbackUtilities.getCallback(
				request.getParameter("callback"), entities.toString());

		// }

		return answer;
	}

	private JSONObject getData(String name) {

		Key key = KeyFactory.createKey("metrics", name);

		return Operations.jsonGet(key);
	}

}
