package com.cognizant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cognizant.entity.Product;
import com.cognizant.helper.ConnectionManager;

public class ProductDAOImpl implements ProductDAO{

	private ConnectionManager manager=new ConnectionManager();
	@Override
	public boolean checkProduct(int productId, String productCategory) {
		// TODO Auto-generated method stub
		Connection connection=manager.openConnection();
		boolean result=false;
		try {
			PreparedStatement statement=connection.prepareStatement("select * from Products where product_id=? and product_category=?");
		    statement.setInt(1, productId);
		    statement.setString(2,productCategory);
		    ResultSet resultSet=statement.executeQuery();
		    while(resultSet.next()){
		    	result=true;
		    }
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		manager.closeConnection();
		
		return result;
	}

	@Override
	public boolean addProduct(Product product) {
		// TODO Auto-generated method stub
		
		Connection connection=manager.openConnection();
		boolean result=false;
		try {
			PreparedStatement preparedStatement=connection.prepareStatement("insert into Products values(?,?,?,?,?)");
			preparedStatement.setInt(1, product.getProductId());
			preparedStatement.setString(2, product.getProductName());
			preparedStatement.setString(3,product.getProductCategory());
			preparedStatement.setString(4, product.getProductDescription());
			preparedStatement.setDouble(5, product.getProductPrice());
			int rows=preparedStatement.executeUpdate();
			manager.closeConnection();
			if(rows>0)
				result=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<Product> viewProducts() {
		Connection connection=manager.openConnection();
		List<Product> products = new ArrayList<Product>();

	    try {
	    	Statement statement=connection.createStatement();
	    	ResultSet resultset=statement.executeQuery("select * from Products");

	    
	        while (resultset.next()) {
	            Product product = new Product();

	            product.setProductId(resultset.getInt("ProductId"));
	            product.setProductName(resultset.getString("ProductName"));
	            product.setProductCategory(resultset.getString("ProductCategory"));
	            product.setProductDescription(resultset.getString("ProductDescription"));
	            product.setProductPrice(resultset.getDouble("ProductPrice"));
                
	            products.add(product);

	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return products;
	
		// TODO Auto-generated method stub
	}

}
