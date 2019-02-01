package com.briup.estore.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.briup.estore.bean.Book;
import com.briup.estore.dao.IBookDao;
import com.briup.estore.dao.impl.BookDaoImpl;
@WebServlet("/product")
public class ProductServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	IBookDao bookdao = new BookDaoImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long bookid = Long.parseLong(req.getParameter("bookid"));
		Book book = bookdao.queryById(bookid);
		req.getSession().setAttribute("book", book);
		resp.sendRedirect(req.getContextPath()+"/user/productDetail.jsp");
		
	}

}
