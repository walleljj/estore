package com.briup.estore.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.briup.estore.bean.Customer;
import com.briup.estore.common.util.JdbcUtils;
import com.briup.estore.common.util.ResultSetHandler;
import com.briup.estore.dao.ICustomerDao;

public class CustomerDaoImpl implements ICustomerDao{

	@Override
	public Customer findByName(String name) {
		String sql = "select * from tbl_customer where name='"+name+"'";
		return (Customer)JdbcUtils.executeQuery(sql, new ResultSetHandler() {
			@Override
			public Object process(ResultSet rs) throws SQLException {
				Customer customer = null;
				while(rs.next()){
					customer = new Customer(rs.getLong(1),rs.getString("name"),rs.getString("password"),
							rs.getString("zip"),rs.getString("address"),rs.getString("telephone"),rs.getString("email"),null);
				}
				return customer;
			}
		});
		
	}

	@Override
	public void saveCustomer(Customer customer) {
		String sql = "insert into tbl_customer(name,password,address,zip,telephone,email) values('"+customer.getName()+
				"','"+customer.getPassword()+"','"+customer.getAddress()+"','"+customer.getZip()+"','"+customer.getTelephone()+"','"+customer.getEmail()+"')";
		JdbcUtils.excuteDML(sql);
	}

	@Override
	public void updateCustomer(Customer customer) {
		String sql = "update tbl_customer set address='"+customer.getAddress()+
				"',email='"+customer.getEmail()+"',name='"+customer.getName()+
				"',password='"+customer.getPassword()+"',telephone='"+customer.getTelephone()+
				"',zip='"+customer.getZip()+"' where name="+customer.getName();
		JdbcUtils.excuteDML(sql);
		
	}

}
