package co.jumpschool;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jumpschool.utilities.CallbackUtilities;
import co.jumpschool.utilities.Operations;

import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.labs.repackaged.org.json.JSONArray;

@SuppressWarnings("serial")
public class ListWallServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		response.getWriter().println(list(request));
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		response.getWriter().println(list(request));
	}

	private String list(HttpServletRequest request) {

		String answer = null;

		// if (JsonpfyProperties.authenticate(request)) {

		JSONArray entities = listData();

		answer = CallbackUtilities.getCallback(
				request.getParameter("callback"), entities.toString());

		// }

		return answer;
	}

	private JSONArray listData() {

		Query query = new Query("roadmap");

		query.setFilter(new FilterPredicate("maturity",
				FilterOperator.GREATER_THAN_OR_EQUAL, "2"));
		return Operations.jsonQuery(query);
	}

}