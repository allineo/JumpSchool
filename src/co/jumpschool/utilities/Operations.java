package co.jumpschool.utilities;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.labs.repackaged.org.json.JSONArray;
import com.google.appengine.labs.repackaged.org.json.JSONObject;

public class Operations {

	public static JSONArray jsonQuery(final Query q) {

		return jsonQuery(q, null);
	}

	public static JSONObject jsonGet(final Key key) {

		JSONObject jsonresult = new JSONObject();

		jsonresult = ConvertEntityToJson.getJson(get(key), null);

		return jsonresult;
	}

	public static Entity get(final Key key) {

		DatastoreService datastore = DatastoreServiceFactory
				.getDatastoreService();

		Entity result = new Entity(key);

		try {
			result = datastore.get(key);

		} catch (EntityNotFoundException e) {

			e.printStackTrace();
		}

		return result;
	}

	public static JSONArray jsonQuery(final Query q, final String returnField) {

		JSONArray jsonArray = new JSONArray();

		DatastoreService datastore = DatastoreServiceFactory
				.getDatastoreService();

		PreparedQuery pq = datastore.prepare(q);

		for (Entity result : pq.asIterable()) {

			jsonArray.put(ConvertEntityToJson.getJson(result, returnField));
		}

		return jsonArray;
	}

	public static String save(Entity entity) {

		DatastoreService datastore = DatastoreServiceFactory
				.getDatastoreService();

		datastore.put(entity);

		String id = entity.getKey().getName();

		if (id == null) {
			id = Long.toString(entity.getKey().getId());
		}
		return id;
	}
}
