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
import com.briup.estore.common.exception.OrderException;
import com.briup.estore.service.IOrderService;
import com.briup.estore.service.impl.OrderServiceImpl;
@WebServlet("/orderlist")
/**
 * 显示订单列表
 * @author 绘梦
 * @date 2018年7月25日 上午10:26:26
 */
public class OrderListServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	IOrderService orderService = new OrderServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Customer customer = (Customer) req.getSession().getAttribute("customer");
		List<Order> list_order = new ArrayList<>();
		try {
			list_order = orderService.findByCustomerId(customer.getId());
		} catch (OrderException e) {
			e.printStackTrace();
		}
		req.getSession().setAttribute("list_order", list_order);
		resp.sendRedirect(req.getContextPath()+"/user/order.jsp");
	}

}
