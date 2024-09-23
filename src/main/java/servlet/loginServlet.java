package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.loginModel;
import services.loginDao;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private loginDao logindao;
       
 
    public loginServlet() {
        super();
        
    }
     public void init(){
    	 
    	 logindao = new loginDao();
        
     }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String type = request.getParameter("type");
        
        loginModel loginmodel = new loginModel();
        loginmodel.setUserName(userName);
        loginmodel.setPassword(password);
        loginmodel.setType(type);

        try {
            if (logindao.validate(loginmodel)) {
                
                response.sendRedirect("ViewVehicleService.jsp");
            } else {
                HttpSession session = request.getSession();
               
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
		
		
		
