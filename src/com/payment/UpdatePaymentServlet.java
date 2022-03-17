package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String itemID = request.getParameter("itemID");
		String bidPrice = request.getParameter("bidPrice");
		String address = request.getParameter("address");
		String payType = request.getParameter("payType");
		String cardNo = request.getParameter("cardNo");
		String bidDate = request.getParameter("bidDate");
		String cvCode = request.getParameter("cvCode");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.updatepayment(id,name,phone,itemID,bidPrice,address,payType,cardNo,bidDate,cvCode);
		
		if(isTrue == true) {
			
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(id);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("sucess.jsp");
			dis.forward(request, response);
		}
		else {
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(id);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsucess.jsp");
			dis.forward(request, response);
		}
	}

}
