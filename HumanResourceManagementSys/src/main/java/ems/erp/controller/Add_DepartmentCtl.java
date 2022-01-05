package ems.erp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ems.erp.beans.Admin;
import ems.erp.model.AdminLoginModel;
import ems.erp.util.CBEView;

/**
 * Servlet implementation class Add_DepartmentCtl
 */
public class Add_DepartmentCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_DepartmentCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher(CBEView.Add_Department_JSP).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String dname = request.getParameter("dname");
	
	
        String s1 = AdminLoginModel.AddDepartment(dname);
        
    	if (s1.equalsIgnoreCase("sucess")) {
			request.setAttribute("msg", "Department is Added sucessfully");
			request.getRequestDispatcher(CBEView.Add_Department_JSP).forward(request, response);
		}
	}

}
