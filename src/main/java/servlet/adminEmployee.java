package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.employee;
import services.employeeService;


@WebServlet("/adminEmployee")
public class adminEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public adminEmployee() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		employeeService serivce = new employeeService();
		employee emp = new employee();
		
		emp.setEmployeeid(request.getParameter("employeeid"));
		emp.setEmail(request.getParameter("email"));
		emp.setName(request.getParameter("name"));
		emp.setPhone(request.getParameter("phone"));
		emp.setDepartment(request.getParameter("department"));
		emp.setSalary(request.getParameter("salary"));
		
		serivce.updateEmp(emp);
		
		ArrayList<employee> employee = serivce.getAllEmployee();
 		
		request.setAttribute("employee",employee);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminTable.jsp");
		
		dispatcher.forward(request, response);
	}

}
