package com.briup.estore.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/exit")
/**
 * 退出系统
 * @author 绘梦
 * @date 2018年7月25日 上午10:25:52
 */
public class ExitServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().removeAttribute("customer");
		req.getSession().removeAttribute("msg");
		req.getSession().removeAttribute("shoppingcar");
		req.getSession().removeAttribute("list_line");
		req.getSession().removeAttribute("list_order");
		resp.sendRedirect(req.getContextPath()+"/login.jsp");
	}
}
