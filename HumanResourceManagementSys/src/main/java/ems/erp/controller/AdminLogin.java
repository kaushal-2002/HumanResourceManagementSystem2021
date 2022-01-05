package ems.erp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ems.erp.beans.UserAdmin;
import ems.erp.model.AdminLoginModel;
import ems.erp.util.CBEView;
import ems.erp.util.MYDb;
import ems.erp.util.ServletUtility;

/**
 * Servlet implementation class AdminLogin
 */
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		String utype = request.getParameter("uType");
		System.out.println("UserType: "+utype);
		
		
		UserAdmin user = new UserAdmin();
		user.setUname(uname);
		user.setPassword(password);
//		if(utype.equalsIgnoreCase("manager")) {
//			user.setDesignation(utype);
//			
//			String result = AdminLoginModel.verifyManagerLogin(user);
//			if(result.equalsIgnoreCase("sucess")) {
//			HttpSession session = request.getSession();
//			session.setAttribute("managerUser", "manager");
//			
//			request.getRequestDispatcher(CBEView.Manager_Home).forward(request, response);
//			}else{
//				request.setAttribute("invalid", "Invalid username or password");
//				request.getRequestDispatcher(CBEView.EMP_LOGIN1).forward(request, response);
//			}
//
//		}
		
		//Admin and user login.......................
		
		if(utype.equalsIgnoreCase("admin")) {
		String result = AdminLoginModel.verifyLogin(user);
		if(result.equalsIgnoreCase("sucess")) {
			HttpSession session = request.getSession();
			session.setAttribute("adminUser", uname);
			
			request.getRequestDispatcher(CBEView.ADMIN_HOME).forward(request, response);

		}else{
			request.setAttribute("invalid", "Invalid username or password");
			request.getRequestDispatcher(CBEView.EMP_LOGIN1).forward(request, response);
		}
		
		}else if(utype.equalsIgnoreCase("employee")) {
			//User login
			String s1 = AdminLoginModel.verifyEmpLogin(user);
			System.out.println(s1);
			if(s1.equalsIgnoreCase("sucess")) {
				HttpSession session = request.getSession();
				session.setAttribute("empUser", uname);
				
				request.getRequestDispatcher(CBEView.Emp).forward(request, response);

			}else{
				request.setAttribute("invalid", "Invalid username or password");
				request.getRequestDispatcher(CBEView.EMP_LOGIN1).forward(request, response);
			}
			
		}
		
		
	}

}
