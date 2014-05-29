package edu.gmu.authorservice.dao;
import org.sqlite.SQLiteDataSource;
import edu.gmu.authorservice.model.Author;

import javax.activation.DataSource;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Collection;
import java.util.List;

public class InMemoryAuthorDao implements AuthorDao {

    @Override
    public Author getAuthor(Integer id) {
        String dbUrl= "jdbc:sqlite:db/authors.db";
        SQLiteDataSource dataSource= (SQLiteDataSource) SQLiteHelper.getDataSource(dbUrl);
        try (Connection conn= dataSource.getConnection()){
            Statement stmt= conn.createStatement();
            ResultSet author= stmt.executeQuery("select * from authors where id=" + id);
            while (author.next()){
                Integer aid= author.getInt("id");
                String name=author.getString("name");
                String dob= author.getString("dob");
                String nationality= author.getString("nationality");
                Author t=new Author(aid,name,dob,nationality,"","","");
                return t;
            }
        } catch (Exception e){

        }
        return null; // TODO - implement me!
    }

    @Override
    public Collection<Author> getAllAuthors() {
        String dbUrl= "jdbc:sqlite:db/authors.db";
        SQLiteDataSource dataSource= (SQLiteDataSource) SQLiteHelper.getDataSource(dbUrl);
        try (Connection conn= dataSource.getConnection()){
            Statement stmt= conn.createStatement();
            List<Author> authors = new ArrayList<>();
            ResultSet author= stmt.executeQuery("select * from authors");
            while (author.next()){
                Integer aid= author.getInt("id");
                String name=author.getString("name");
                String dob= author.getString("dob");
                String nationality= author.getString("nationality");
                authors.add(new Author(aid,name,dob,nationality,"","",""));

            }
            return authors;
        } catch (Exception e){

        }
        return null; // TODO - implement me!
    }
}
