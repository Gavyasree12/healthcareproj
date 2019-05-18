
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Forgetpassserv
 */
@WebServlet("/Forgetpassserv")
public class Forgetpassserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forgetpassserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		 PrintWriter out = response.getWriter();
		 
		 try{
		String emailid=request.getParameter("emailid");
		String password=request.getParameter("password");
        String password1=request.getParameter("password1");
        
        if(password.contentEquals(password1))
        {
            
            
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
            String sql="update sathya.reg set password='"+password1+"' where userid='"+emailid+"'";
            PreparedStatement stat=con1.prepareStatement(sql);
            stat.executeUpdate();
            request.getRequestDispatcher("Login.jsp").include(request,response);
            out.println("<html><body>");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('you are successfully changed the password');");
            out.println("</script>");
            out.println("</body></html>");
        }
        else
        {
            out.println("<html><body>");
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Invalid User name and password');");
             out.println("</script>");
             out.println("</body></html>");         
                
        }
	 }catch(Exception e)
     {
         e.printStackTrace();
     }
	}

}


