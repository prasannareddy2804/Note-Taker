package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import org.hibernate.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entities.Note;
import com.helper.FactoryProvider;
import org.hibernate.Transaction;

//import jakarta.transaction.Transaction;


@WebServlet("/SaveNoteServlet1")
public class SaveNoteServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveNoteServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//title , content fetch
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Note note = new Note(title, content, new Date());
			//prints in console
			//System.out.println(note.getId() + " :"  + note.getTitle());
			//hibernate:save()
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(note);
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style = 'text-align: center'>Note is added successfully</h1>");
			out.println("<h1 style = 'text-align: center'><a href = 'all_notes.jsp'>View all notes</a></h1>");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
