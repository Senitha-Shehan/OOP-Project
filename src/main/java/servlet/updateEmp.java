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


@WebServlet("/updateEmp")
public class updateEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public updateEmp() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		employee emp = new employee();
		System.out.println(request.getParameter("deparment"));
		emp.setEmployeeid(request.getParameter("employeeid"));
		emp.setName(request.getParameter("name"));
		emp.setEmail(request.getParameter("email"));
		emp.setPhone(request.getParameter("phone"));
		emp.setDepartment(request.getParameter("deparment"));
		emp.setSalary(request.getParameter("salary"));
		
		employeeService service = new employeeService();
		
		
		service.updateEmp(emp);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminTable.jsp");
		
		dispatcher.forward(request, response);
	}

}
