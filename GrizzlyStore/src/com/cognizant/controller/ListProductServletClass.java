package com.cognizant.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.entity.Product;
import com.cognizant.helper.FactoryProductService;
import com.cognizant.service.ProductService;

/**
 * Servlet implementation class ListProductServletClass
 */
@WebServlet(name = "ListProductServlet", urlPatterns = { "/listproduct" })
public class ListProductServletClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListProductServletClass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method st
			HttpSession session=request.getSession(false);
		List<Product> products = new ArrayList<Product>();
		ProductService productService=FactoryProductService.createProductService();
	    products=productService.viewProducts();
		RequestDispatcher dispatcher=request.getRequestDispatcher("listProduct.jsp");
		request.setAttribute("products", products);
		
	}

}
