package com.briup.estore.bean;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;

/**
 * 
 * @ClassName: Order 订单类
 *
 */
public class Order implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long id;
	/**
	 * 价钱（总价）
	 * */
	private Double cost;
	private Timestamp orderDate;
	private String state;
	private String pay;
	
	/**
	 * 关联关系 - 一对多 : 对应多个订单项
	 * */
	private Collection<Line> lines = new HashSet<>();
	/**
	 * 关联关系 - 多对一 : 对应一个顾客
	 * */
	private Customer customer;
	
	public Order(){
		
	}
	public Order(Long id, Double cost, Timestamp orderDate) {
		this.id = id;
		this.cost = cost;
		this.orderDate = orderDate;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Double getCost() {
		return cost;
	}
	public void setCost(Double cost) {
		this.cost = cost;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public Collection<Line> getLines() {
		return lines;
	}
	public void setLines(Collection<Line> lines) {
		this.lines = lines;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getOrderTime(){
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return f.format(getOrderDate());
	}
	public Order(Long id, Double cost, Timestamp orderDate, String state, String pay, Collection<Line> lines,
			Customer customer) {
		this.id = id;
		this.cost = cost;
		this.orderDate = orderDate;
		this.state = state;
		this.pay = pay;
		this.lines = lines;
		this.customer = customer;
	}
	
}
