

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Doctorchangeserv")
public class Doctorchangeserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Doctorchangeserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	//new changes
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out = response.getWriter();
		 try{
	        String userid=request.getParameter("userid");
	        String cpass=request.getParameter("cpass");
	        String password1=request.getParameter("password1");
	        String password=request.getParameter("password");
	        if(userid!=null)
	        {
	        	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	            Statement stmt = con.createStatement();
	            ResultSet rs =stmt.executeQuery("select * from bhaskar.Doctdet where userid='"+userid+"' and password='"+cpass+"' ");	
	        
	        if(password1.contentEquals(password))
	        {
	            
	            
	            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	            Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	            String sql="update bhaskar.doctdet set password='"+password1+"' where userid='"+userid+"' ";
	            PreparedStatement stat=con1.prepareStatement(sql);
	            stat.executeUpdate();
	            request.getRequestDispatcher("Doctorsignin.jsp").include(request,response);
	            
	        }}
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

	


