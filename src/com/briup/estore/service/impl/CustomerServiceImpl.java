package com.briup.estore.service.impl;

import com.briup.estore.bean.Customer;
import com.briup.estore.common.exception.CustomerException;
import com.briup.estore.dao.ICustomerDao;
import com.briup.estore.dao.impl.CustomerDaoImpl;
import com.briup.estore.service.ICustomerService;
/**
 * service层customer操作
 * @author 绘梦
 * @date 2018年7月25日 上午10:23:40
 */
public class CustomerServiceImpl implements ICustomerService{
	ICustomerDao customerDao = new CustomerDaoImpl();

	@Override
	public void register(Customer customer) throws CustomerException {
		Customer c  = customerDao.findByName(customer.getName());
		if(c!=null)
			throw new CustomerException("用户已存在！");
		customerDao.saveCustomer(customer);	
	}

	@Override
	public Customer login(String name, String password) throws CustomerException {
		Customer c  =customerDao.findByName(name);
		if(c==null)
			throw new CustomerException("用户不存在！");
		if(!c.getPassword().equals(password))
			throw new CustomerException("密码错误！");
		return c;
	}

	@Override
	public void updateCustomer(Customer customer) throws CustomerException {
		customerDao.updateCustomer(customer);
	}

}
