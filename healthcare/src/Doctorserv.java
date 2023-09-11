

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Doctorserv")
public class Doctorserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Doctorserv() {
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
		PrintWriter out=response.getWriter();
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String gender=request.getParameter("gender");
		String spec=request.getParameter("spec");
		String exp=request.getParameter("exp");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String addr=request.getParameter("addr");
		try{
		Random random=new Random();
		int rand=random.nextInt(999);
		String password=fname.substring(0,2)+lname.substring(lname.length()-2,lname.length())+phone.substring(0,1)+phone.substring(2,3)+phone.substring(4,5)+phone.substring(6,7)+phone.substring(8,9);

		String userid=fname.toUpperCase()+rand;
		System.out.println(userid+" "+password);
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		String sql="insert into sathya.doctdet values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement stat=con.prepareStatement(sql);
		stat.setString(1, fname);
		stat.setString(2, lname);	
		stat.setString(3, gender);
		stat.setString(4, spec);
		stat.setString(5, exp);
		stat.setString(6, phone);
		stat.setString(7, email);
		stat.setString(8, addr);
		stat.setString(9, userid);
		stat.setString(10, password);
		stat.executeUpdate();
		request.getRequestDispatcher("Docchange.jsp").include(request,response);        
        out.println("<html><body>");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('User Id : "+userid+"');");
        out.println("alert('Password :"+password+"');");
        out.println("</script>");
        out.println("</body></html>"); 
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
	}



	}

