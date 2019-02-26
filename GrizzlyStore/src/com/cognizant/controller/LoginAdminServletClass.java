package com.cognizant.controller;
import com.cognizant.helper.ConnectionManager;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;


import com.cognizant.helper.ConnectionManager;

/**
 * Servlet implementation class LoginAdminServletClass
 */
@WebServlet(name = "LoginAdminServlet", urlPatterns = { "/loginadmin" })
public class LoginAdminServletClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ConnectionManager manager=new ConnectionManager();
	private static int count=0;
    /**
     * Default constructor. 
     */
    public LoginAdminServletClass() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection connection=manager.openConnection();
		int admin=Integer.parseInt(request.getParameter("admin"));
		
		try {
			PreparedStatement statement=
					connection.prepareStatement("select * from cust_auth "
							+ "where admin=?");
			statement.setInt(1,admin);
			ResultSet resultSet=statement.executeQuery();
			boolean loginResult=false;
			while(resultSet.next()){
				loginResult=true;
			}
			if(count<=3){
			if(loginResult){
				request.setAttribute("admin",admin);
				HttpSession session=request.getSession(true);
				session.setAttribute("admin",admin );
				RequestDispatcher dispatcher=request.getRequestDispatcher("menu.jsp");
				dispatcher.forward(request,response);
			}else{
				RequestDispatcher dispatcher=request.getRequestDispatcher("LoginAdmin.jsp");
				request.setAttribute("status","Login failed");
				dispatcher.forward(request,response);
                count++;
				
			}
		}
			else{
				RequestDispatcher dispatcher=request.getRequestDispatcher("LoginAdmin.jsp");
				request.setAttribute("status","Account Locked");
				dispatcher.forward(request,response);
				
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
