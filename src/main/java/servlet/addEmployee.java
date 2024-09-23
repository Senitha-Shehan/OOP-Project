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

@WebServlet("/addEmployee")
public class addEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addEmployee() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		employee emp = new employee();
		
		emp.setEmployeeid(request.getParameter("employeeid"));
		emp.setEmail(request.getParameter("email"));
		emp.setName(request.getParameter("name"));
		emp.setPhone(request.getParameter("phone"));
		emp.setDepartment(request.getParameter("department"));
		emp.setSalary(request.getParameter("salary"));
		
		employeeService empService = new employeeService();
		empService.regEmployee(emp);
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");		
		
		
		dispatcher.forward(request, response);
		
	}

}
