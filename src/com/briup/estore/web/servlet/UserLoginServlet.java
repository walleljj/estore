package com.briup.estore.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.briup.estore.bean.Book;
import com.briup.estore.bean.Customer;
import com.briup.estore.service.IBookService;
import com.briup.estore.service.ICustomerService;
import com.briup.estore.service.impl.BookServiceImpl;
import com.briup.estore.service.impl.CustomerServiceImpl;

import cn.dsna.util.images.ValidateCode;
/**
 * 登录servlet
 * @author 绘梦
 * @date 2018年7月23日 下午2:29:05
 */
@WebServlet("/login")
public class UserLoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private ICustomerService customerService = new CustomerServiceImpl();
	private IBookService bookService = new BookServiceImpl();
	private String code2;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ValidateCode v = new ValidateCode(200,30,4,5);
		v.write(resp.getOutputStream());
		code2= v.getCode().toLowerCase();
		 
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("userid");
		String password = req.getParameter("password");
		String code = req.getParameter("code").toLowerCase();
		Customer customer = null;
		List<Book> bl = null;
		String path;
		String msg;
		try {
			if(code2.equals(code)){
			customer = customerService.login(name, password);
			bl = bookService.listAllBooks();
			path = "/index.jsp";
			msg  = "登录成功";
			}else{
				path = "/login.jsp";
				msg = "验证码错误";
			}
		} catch (Exception e) {
			e.printStackTrace();
			path = "/login.jsp";
			msg = "登录失败"+e.getMessage();
		}

		req.getSession().setAttribute("msg", msg);
		req.getSession().setAttribute("books", bl);
		req.getSession().setAttribute("customer", customer);
		resp.sendRedirect(req.getContextPath()+path);
		
	}

}
