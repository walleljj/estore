package com.briup.estore.service.impl;

import java.util.List;

import com.briup.estore.bean.Book;
import com.briup.estore.common.exception.BookException;
import com.briup.estore.dao.IBookDao;
import com.briup.estore.dao.impl.BookDaoImpl;
import com.briup.estore.service.IBookService;
/**
 * service层book操作
 * @author 绘梦
 * @date 2018年7月25日 上午10:23:07
 */
public class BookServiceImpl  implements IBookService{
	IBookDao bookDao = new BookDaoImpl();
	

	@Override
	public List<Book> listAllBooks() throws BookException {
		List<Book> list = null;
		list = bookDao.queryAll();
		return list;
	}

	@Override
	public Book findById(Long id) throws BookException {
		Book book = null;
		book = bookDao.queryById(id);
		if(book==null)
			throw new BookException("找不到书");
		return book;
	}

}
