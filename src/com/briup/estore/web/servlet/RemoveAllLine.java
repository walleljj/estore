package com.briup.estore.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.briup.estore.bean.ShoppingCar;
@WebServlet("/removeAllProduct")
/**
 * 清空购物车
 * @author 绘梦
 * @date 2018年7月25日 上午10:26:39
 */
public class RemoveAllLine extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ShoppingCar shoppingcar = (ShoppingCar) req.getSession().getAttribute("shoppingcar");
		shoppingcar.clear();
		String path = "/user/shopcart.jsp";
		req.getSession().setAttribute("shoppingcar", shoppingcar);
		resp.sendRedirect(req.getContextPath()+path);
	}

}
