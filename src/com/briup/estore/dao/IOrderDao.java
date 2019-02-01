package com.briup.estore.dao;


import java.util.List;

import com.briup.estore.bean.Order;
/**
 * 订单操作
 * @author 绘梦
 * @date 2018年7月25日 上午10:17:44
 */
public interface IOrderDao  {
	/**
	 * 新建订单
	 * @param order
	 */
	public void saveOrder(Order order);
	/**
	 * 通过订单ID查询订单
	 * @param id
	 * @return
	 */
	public Order findOrderById(Long id);
	/**
	 * 通过用户ID查询该用户的所有订单
	 * @param id
	 * @return
	 */
	public List<Order> findOrderByCustomerId(Long id);
	/**
	 * 删除订单
	 * @param orderId
	 */
	public void deleteOrderById(long orderId);
	public long getMaxId();
}
