package co.jumpschool;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jumpschool.utilities.Operations;
import co.jumpschool.utilities.URLUtilities;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.images.ImagesService;
import com.google.appengine.api.images.ImagesServiceFactory;

@SuppressWarnings("serial")
public class FileUploadServlet extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BlobstoreService blobstoreService = BlobstoreServiceFactory
				.getBlobstoreService();
		Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(request);
		List<BlobKey> keys = blobs.get("imageField");

		if (keys != null && keys.size() > 0) {

			BlobKey blobKey = keys.get(0);

			Key key = KeyFactory.createKey("roadmap",
					URLUtilities.decode(request.getParameter("name")));

			Entity entity = Operations.get(key);

			ImagesService imagesService = ImagesServiceFactory
					.getImagesService();

			entity.setProperty(request.getParameter("fieldName") + "BlobKey",
					blobKey.getKeyString());

			entity.setProperty(request.getParameter("fieldName"),
					imagesService.getServingUrl(blobKey));

			Operations.save(entity);
		}

		response.sendRedirect("/pages/main.jsp?upload=true&Name="
				+ URLUtilities.decode(request.getParameter("name")));
	}
}
