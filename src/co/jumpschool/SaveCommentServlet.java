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
public class SaveCommentServlet extends HttpServlet {

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

		Entity entity = new Entity("comments");

		entity.setProperty("companyname",
				URLUtilities.decode(request.getParameter("name")));
		entity.setProperty("commentname",
				URLUtilities.decode(request.getParameter("commentname")));
		entity.setProperty("text",
				URLUtilities.decode(request.getParameter("text")));

		return Operations.save(entity);
	}

}
