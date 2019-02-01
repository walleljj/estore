package com.briup.estore.dao;


import com.briup.estore.bean.Customer;
/**
 * customer管理
 * @author 绘梦
 * @date 2018年7月25日 上午10:14:30
 */
public interface ICustomerDao  {
	/**
	 * 通过姓名查询customer
	 * @param name
	 * @return
	 */
	public Customer findByName(String name);
	/**
	 * 添加customer
	 * @param customer
	 */
	public void saveCustomer(Customer customer);
	/**
	 * 修改customer
	 * @param customer
	 */
	public void updateCustomer(Customer customer);
}
