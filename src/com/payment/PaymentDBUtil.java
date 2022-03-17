package com.payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class PaymentDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	/*public static boolean validate(String userName, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where userName='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}*/
	
	public static List<Payment> getPayment(String Id) {
		int convertedID = Integer.parseInt(Id);
		ArrayList<Payment> pay = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String phone = rs.getString(3);
				String itemID = rs.getString(4);
				double bidPrice = rs.getDouble(5);
				String address = rs.getString(6);
				String payType = rs.getString(7);
				String cardNo = rs.getString(8);
				String bidDate = rs.getString(9);
				String cvCode = rs.getString(10);
				
				Payment p = new Payment(id,name,phone,itemID,bidPrice,address,payType,cardNo,bidDate,cvCode);
				pay.add(p);
			}
			
		} catch (Exception e) {
			
		}
		
		return pay;	
	}
    
    public static boolean insertpayment(String name, String phone, String itemID, String bidPrice, String address, String payType, String cardNo, String bidDate, String cvCode) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into payment values(0,'"+name+"','"+phone+"','"+itemID+"','"+bidPrice+"','"+address+"','"+payType+"','"+cardNo+"','"+bidDate+"','"+cvCode+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updatepayment(String id, String name, String phone, String itemID, String bidPrice, String address, String payType, String cardNo, String bidDate, String cvCode) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update payment set name='"+name+"',phone='"+phone+"',itemID='"+itemID+"',bidPrice='"+bidPrice+"',address='"+address+"',payType='"+payType+"',cardNo='"+cardNo+"',bidDate='"+bidDate+"',cvCode='"+cvCode+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<Payment> getPaymentDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Payment> pay = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from payment where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			
    			int id = rs.getInt(1);
				String name = rs.getString(2);
				String phone = rs.getString(3);
				String itemID = rs.getString(4);
				double bidPrice = rs.getDouble(5);
				String address = rs.getString(6);
				String payType = rs.getString(7);
				String cardNo = rs.getString(8);
				String bidDate = rs.getString(9);
				String cvCode = rs.getString(10);
				
    			Payment p = new Payment(id,name,phone,itemID,bidPrice,address,payType,cardNo,bidDate,cvCode);
    			pay.add(p);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return pay;	
    }
    
    
    public static boolean deletePayment(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from payment where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }

	public static boolean insertpayment(String name, String email, String phone, String userName, String password,
			String itemID, String itemPrice, String bidPrice, String address, String bidDate) {
		// TODO Auto-generated method stub
		return false;
	}


    
}