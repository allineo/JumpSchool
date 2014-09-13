package co.jumpschool;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;

@SuppressWarnings("serial")
public class Serve extends HttpServlet {
	private BlobstoreService blobstoreService = BlobstoreServiceFactory
			.getBlobstoreService();

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		BlobKey blobKey = new BlobKey(req.getParameter("blob-key"));

		/*
		 * if (req.getParameter("thumbnail") != null) {
		 * 
		 * ImagesService imagesService = ImagesServiceFactory
		 * .getImagesService();
		 * 
		 * String test = imagesService.getServingUrl(blobKey,10,false);
		 * 
		 * Image oldImage = ImagesServiceFactory.makeImageFromBlob(blobKey); /*
		 * Transform resize = ImagesServiceFactory.makeResize(50, 50);
		 * 
		 * Image newImage = imagesService.applyTransform(resize, oldImage);
		 * 
		 * newImage.
		 * 
		 * new BlobstoreInputStream(blobkey);
		 * 
		 * blobKey = newImage.getBlobKey(); }
		 */

		blobstoreService.serve(blobKey, resp);
	}
}