package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.employee;
import services.employeeService;


@WebServlet("/deleteEmp")
public class deleteEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public deleteEmp() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		employee emp = new employee();
		emp.setEmployeeid(request.getParameter("employeeid"));
		
		
		employeeService service = new employeeService();
		service.deleteEmp(emp);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminEmployee");
				
		dispatcher.forward(request, response);
	}

}
