package com.briup.estore.dao;

import java.util.List;


import com.briup.estore.bean.Book;
/**
 * book管理
 * @author 绘梦
 * @date 2018年7月25日 上午10:13:16
 */
public interface IBookDao  {
	/**
	 * 查询所有book
	 * @return
	 */
	public List<Book> queryAll();
	/**
	 * 通过id查询book
	 * @param id
	 * @return
	 */
	public Book queryById(Long id);
}
