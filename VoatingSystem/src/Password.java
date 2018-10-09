
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Password")

public class Password extends HttpServlet {

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
       
           String voter_card_number = request.getParameter("voter_card_number");
           
           MyDb db = new MyDb();
           Connection con = db.getCon();
           System.out.println("hi aseesh");
            
           try {
                Statement stmt = con.createStatement();
                
               ResultSet rs1= stmt.executeQuery("select voter_card_number from temp_voter_card_number where voter_card_number = '"+voter_card_number+"'");
               if(rs1.next())
               {
                 response.sendRedirect("votercheck.jsp?name="+voter_card_number);
               out.println("You already voted........"+rs1.getString("voter_card_number"));
               System.out.println(voter_card_number);
               }else
               {
               
                ResultSet rs =   stmt.executeQuery("select uid,contact from voter_register where voter_card_number = '"+voter_card_number+"'");
                if(rs.next()){
                    String contact = rs.getString("contact");
                    response.sendRedirect("password.jsp?con="+contact);
                    out.println(contact);
                    System.out.println(contact);
                }else{
                    out.println("Please enter valid card number");
                }
               }
            } catch (SQLException ex) {
               
            }
           
           
           
           
          
        }
    }

    

