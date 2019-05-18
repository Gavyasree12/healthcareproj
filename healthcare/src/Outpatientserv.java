

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Outpatientserv
 */
@WebServlet("/Outpatientserv")
public class Outpatientserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Outpatientserv() {
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
		try{
            System.out.println("hai");
            PrintWriter out = response.getWriter();

            String symptoms = request.getParameter("symptoms");

            String docname = request.getParameter("docname");

            String  appdate= request.getParameter("appdate");

            String  apptime= request.getParameter("apptime");

            String docdesc= request.getParameter("docdesc");
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
           

        
        Statement stmt = con.createStatement();
        ResultSet rs =stmt.executeQuery("select status from sathya.datatab where fname='"+docname+"' and appdate='"+appdate+"' and apptime='"+apptime+"'");
        System.out.println("hello");
        String va="";
        while(rs.next())
        {
        	  va=rs.getString(1);
             System.out.println(va);	
        
        }
        if(va.equals("booked"))
        {
        	out.println("<html><body>");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Doctor Already Booked Please choose some other time');");
            out.println("</script>");
            out.println("</body></html>"); 
            request.getRequestDispatcher("outpatient.jsp").include(request,response);
            
        }
        else
        {
        	request.getRequestDispatcher("Paypatient.jsp").include(request,response);	
        
        
        	HttpSession sessio=request.getSession(false);  
        	 if(sessio!=null){  
        	 String name=(String)sessio.getAttribute("userid");  
        	 
        Random random=new Random();
        int rand=random.nextInt(999);
        String appid="App"+rand;
        String sql="insert into sathya.outpatient values(?,?,?,?,?,?,?)";
        PreparedStatement stat=con.prepareStatement(sql);
        System.out.println(appid);
        stat.setString(1, symptoms);
        stat.setString(2, docname);    
        stat.setString(3, appdate);
        stat.setString(4, apptime);
        stat.setString(5, docdesc);
        stat.setString(6, appid);
        stat.setString(7, name);
        stat.executeUpdate();
        String sql1="insert into sathya.datatab values(?,?,?,?)";
        PreparedStatement sta=con.prepareStatement(sql1);
       
        sta.setString(1, docname);    
        sta.setString(2, appdate);
        sta.setString(3, apptime);
        sta.setString(4, "booked");
        sta.executeUpdate();
        out.println("<html><body>");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('hhii');");
        out.println("</script>");
        out.println("</body></html>"); 
        
        }
                 
        }}catch(Exception e)
        {
            e.printStackTrace();
        }    
    }}


		
	


