package com.briup.estore.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.briup.estore.bean.Customer;
import com.briup.estore.bean.Order;
import com.briup.estore.service.ILineService;
import com.briup.estore.service.IOrderService;
import com.briup.estore.service.impl.LineServiceImpl;
import com.briup.estore.service.impl.OrderServiceImpl;
@WebServlet("/dddd")
/**
 * 点击删除订单操作
 * @author 绘梦
 * @date 2018年7月25日 上午10:25:34
 */
public class DeleteOrderServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	ILineService lineService = new LineServiceImpl();
	IOrderService orderService =  new OrderServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String msg = null;
		Customer customer = (Customer) req.getSession().getAttribute("customer");
		long orderid = Long.parseLong(req.getParameter("orderid"));
		List<Order> list_order = new ArrayList<>();
		try {
			lineService.removeLineByOrderId(orderid);
			orderService.deleteOrder(orderid);
			list_order = orderService.findByCustomerId(customer.getId());
			req.getSession().setAttribute("list_order", list_order);
			msg = "删除"+orderid+"号订单成功！";
		} catch (Exception e) {
			e.printStackTrace();
			msg = "删除失败："+e.getMessage();
		}
		
		String path = "/user/order.jsp";
		req.getSession().setAttribute("msg", msg);
		resp.sendRedirect(req.getContextPath()+path);
		
	}

}
