package com.briup.estore.web.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.briup.estore.bean.Customer;
import com.briup.estore.bean.Line;
import com.briup.estore.bean.Order;
import com.briup.estore.bean.ShoppingCar;
import com.briup.estore.service.ILineService;
import com.briup.estore.service.IOrderService;
import com.briup.estore.service.impl.LineServiceImpl;
import com.briup.estore.service.impl.OrderServiceImpl;
@WebServlet("/saveOrder")
/**
 * 提交订单
 * @author 绘梦
 * @date 2018年7月25日 上午10:27:32
 */
public class SaveOrderServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	ILineService linservice = new LineServiceImpl();
	IOrderService orderService = new OrderServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Customer customer = (Customer) req.getSession().getAttribute("customer");
		ShoppingCar shoppingcar = (ShoppingCar) req.getSession().getAttribute("shoppingcar");
		String pay = req.getParameter("payway");
		String path ;
		String msg;
		
		Order order = new Order();
		order.setPay(pay);
		order.setCustomer(customer);
		order.setCost(shoppingcar.getCost());
		order.setState("处理中");
		Map<Long,Line> lineMap = new HashMap<>();
		lineMap = shoppingcar.getLines();
		
		
		try {
			long orderid = orderService.confirmOrder(order);		
			linservice.addAllLine(lineMap,orderid);
			msg = "提交订单成功！";
			path = "/index.jsp";
			req.getSession().removeAttribute("shoppingcar");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			msg = "提交订单失败："+e.getMessage();
			path = "/user/shopcart.jsp";
		}
		req.getSession().setAttribute("msg", msg);
		resp.sendRedirect(req.getContextPath()+path);
		
	}

}
