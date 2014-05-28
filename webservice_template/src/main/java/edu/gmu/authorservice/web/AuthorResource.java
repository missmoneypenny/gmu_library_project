package edu.gmu.authorservice.web;

import edu.gmu.authorservice.dao.AuthorDao;
import edu.gmu.authorservice.dao.InMemoryAuthorDao;
import edu.gmu.authorservice.model.Author;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Application;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import java.util.logging.Logger;
import java.util.Collection;

@Path("/")
public class AuthorResource {

    private static final Logger logger = Logger.getLogger(AuthorResource.class.getName());

    private AuthorDao _authorDao;

    public AuthorResource(@Context Application app) throws Exception {
        _authorDao = (AuthorDao) app.getProperties().get("authorDao");
        logger.info("Using AuthorDao implementation " + _authorDao.getClass().getSimpleName());
    }

    // This is a sample method. You can verify your server is working by
    // opening a browser and navigating to http://localhost:8080/gmulibrary/test
    // You should see the text "This is the result. Success!" in your browser.
    @Path("/test")
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String test() {
        logger.info("Handling test request");
        return "This is the result. Success!";
    }
    @Path("/authors.json")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Collection<Author> getAll(){
        return _authorDao.getAllAuthors();
    }

    @Path("/authors/{authorid}.json")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Author getAuthor(@PathParam("authorid") Integer id){
        return _authorDao.getAuthor(id);
    }
}
