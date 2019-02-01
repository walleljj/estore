package com.briup.estore.dao;

import java.util.List;

import com.briup.estore.bean.Line;
/**
 * 订单项操作
 * @author 绘梦
 * @date 2018年7月25日 上午10:15:41
 */
public interface ILineDao  {
	/**
	 * 数据库中添加订单项
	 * @param line
	 * @param id
	 */
	public void savaLine(Line line,long id);
	/**
	 * 从数据库中通过order删除订单项
	 * @param orderId
	 */
	public void deleteLineByOrderId(long orderId);
	/**
	 * 查询返回某个订单中的所有订单项
	 * @param id
	 * @return
	 */
	public List<Line> findLineByOrderId(long id);
}
