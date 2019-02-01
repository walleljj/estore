package com.briup.estore.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.briup.estore.bean.Book;
import com.briup.estore.common.util.JdbcUtils;
import com.briup.estore.common.util.ResultSetHandler;
import com.briup.estore.dao.IBookDao;

public class BookDaoImpl implements IBookDao{

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> queryAll() {
		List<Book> list = new ArrayList<>();
		String sql = "select * from tbl_book";
		return  (List<Book>)JdbcUtils.executeQuery(sql, new ResultSetHandler() {
			
			@Override
			public Object process(ResultSet rs) throws SQLException {
				Book book = null;
				while (rs.next()){
					book = new Book(rs.getLong(1),rs.getString(2),rs.getDouble(3));
					list.add(book);
				}
				return list;
			}
		});
		
	}

	@Override
	public Book queryById(Long id) {
		String sql = "select * from tbl_book where id="+id;
		return (Book)JdbcUtils.executeQuery(sql, new ResultSetHandler() {
			@Override
			public Object process(ResultSet rs) throws SQLException {
				Book book = null;
				while(rs.next()){
					book = new Book(rs.getLong(1),rs.getString(2),rs.getDouble(3));
				}
				return book;
			}
		});
	}

}
