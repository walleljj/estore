package com.briup.estore.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.briup.estore.bean.Customer;
import com.briup.estore.common.exception.CustomerException;
import com.briup.estore.service.ICustomerService;
import com.briup.estore.service.impl.CustomerServiceImpl;
@WebServlet("/updateCustomer")
/**
 * 修改信息
 * @author 绘梦
 * @date 2018年7月25日 上午10:28:20
 */
public class UserUpdateServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private ICustomerService customerService = new CustomerServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String address = req.getParameter("address");
		String zip = req.getParameter("zip");
		String telephone = req.getParameter("telephone");
		String email = req.getParameter("email");
		Customer customer = new Customer(name,password,zip,address,telephone,email);
		String path;
		String msg;
		try {
			customerService.updateCustomer(customer);
			path = "/index.jsp";
			msg = "修改成功！";
			req.getSession().setAttribute("customer", customer);
		} catch (CustomerException e) {
			e.printStackTrace();
			path = "userinfo.jsp";
			msg = "修改失败！"+e.getMessage();
		}
		
		req.getSession().setAttribute("msg", msg);
		resp.sendRedirect(req.getContextPath()+path);
		
		
	}

}
