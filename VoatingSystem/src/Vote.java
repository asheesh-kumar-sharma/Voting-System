

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Vote")
public class Vote extends HttpServlet {
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	
        response.setContentType("text/html");
        String voter_card_number = request.getParameter("voter_card_number");
        String parties = request.getParameter("parties");
        PrintWriter out = response.getWriter();
  
           
          MyDb db = new MyDb();
          Connection con = db.getCon();
            try {
                Statement stmt = con.createStatement();
                
                stmt.executeUpdate("insert into temp_voter_card_number(voter_card_number)values('"+voter_card_number+"')");
                stmt.executeUpdate("insert into vote(voter_card_number,partie)values ('"+voter_card_number+"','"+parties+"')");
              
                response.sendRedirect("index.jsp");
                
            } catch (SQLException ex) {
            }
          
        }
	
	}

