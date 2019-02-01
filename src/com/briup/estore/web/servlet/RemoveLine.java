package com.briup.estore.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.briup.estore.bean.ShoppingCar;
@WebServlet("/removeProduct")
/**
 * 取消购物车内某条信息
 * @author 绘梦
 * @date 2018年7月25日 上午10:27:09
 */
public class RemoveLine extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int productid = Integer.parseInt(req.getParameter("productid"));
		ShoppingCar shoppingcar = (ShoppingCar) req.getSession().getAttribute("shoppingcar");
		String path = "/user/shopcart.jsp";
		shoppingcar.delete((long)productid);
		req.getSession().setAttribute("shopingcar", shoppingcar);
		resp.sendRedirect(req.getContextPath()+path);
		
	}

}
