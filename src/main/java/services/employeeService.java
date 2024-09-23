package services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import model.employee;
import utils.DBConnect;

public class employeeService {
	
	public void regEmployee(employee emp) {
		
		try {
			
			String query = "insert into employee values ('"+emp.getEmployeeid()+"','"+emp.getEmail()+"','"+emp.getName()+"','"+emp.getPhone()+"','"+emp.getDepartment()+"','"+emp.getSalary()+"')";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	}
	
	public ArrayList<employee> getAllEmployee(){
		
		try {
			
			ArrayList<employee> listEmp = new ArrayList<employee>();
			
			String query = "select * from employee";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				
				employee emp = new employee();
				
				emp.setEmployeeid(rs.getString("employeeid"));
				emp.setEmail(rs.getString("email"));
				emp.setName(rs.getString("name"));
				emp.setPhone(rs.getString("phone"));
				emp.setDepartment(rs.getString("Department"));
				emp.setSalary(rs.getString("salary"));

				listEmp.add(emp);
			}
			
			return listEmp;
			
		} catch (Exception e) {
			
			e.printStackTrace();
			return null;
			
		}
		
	}
	
	public void deleteEmp(employee emp) {
		try {
			
			String query = "Delete from employee where employeeid = '"+emp.getEmployeeid()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
	}
	
	public void updateEmp(employee emp) {
	    try {
	        String query = "UPDATE employee SET employeeid = ?, email = ?, name = ?, phone = ?, department = ?, salary = ? WHERE employeeid = ?";
	        PreparedStatement statement = DBConnect.getConnection().prepareStatement(query);
	        statement.setString(1, emp.getEmployeeid());
	        statement.setString(2, emp.getEmail());
	        statement.setString(3, emp.getName());
	       
	        statement.setString(4, emp.getPhone());
	        statement.setString(5, emp.getDepartment());
	        statement.setString(6, emp.getSalary());
	        statement.setString(7, emp.getEmployeeid());
	        System.out.println(statement);
	        statement.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}


}
