package com.chainsys.crs.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.crs.services.DepartmentsServices;

@WebServlet("/UserDepartmentServlet")
public class UserDepartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserDepartmentServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DepartmentsServices departmentServices = new DepartmentsServices();
		try {
			List<String> departmentList = new ArrayList<String>();
			departmentList = departmentServices.displayDepartments();
			{
				request.setAttribute("DEPARTMENTS", departmentList);
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("userlistdept.jsp");
				requestdispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
