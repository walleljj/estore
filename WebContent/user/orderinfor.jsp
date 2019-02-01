<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--文件头开始-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta name="description" content="杰普电子商务门户">
		<title>杰普电子商务门户</title>
		<LINK href="../css/main.css" rel=stylesheet>
		<script language = "JavaScript" src = "../js/main.js"></script>
	</head>
	<body onLoad="MM_preloadImages('../images/index_on.gif','../images/reg_on.gif','../images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')" topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
		<%@include file="../header.jsp" %>



<!--文件体开始-->

		<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="../images/Forum_nav.gif" align="middle">
                  <a href=../index.html>杰普电子商务门户</a> →
					<a href="order.html">定单列表</a> →
					定单明细
                </td>
                </tr>
		</table>
              <br>

		<form name="order" method="post" action="../saveOrder.action">
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
		<tr>
			<td valign="middle" colspan="2" align="center" height="25" background="../images/bg2.gif">
			<font color="#ffffff"><b>用户信息</b></font></td>
		</tr>
		<tr>
			<td width="40%" class="tablebody2" align="right"><b>用户名</b>：</td>
			<td width="60%" class="tablebody1">${customer.name }</td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>联系地址</b>：</td>
			<td class="tablebody1">${customer.address }</td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>邮编</b>：</td>
			<td class="tablebody1">${customer.zip }</td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>手机</b>：</td>
			<td class="tablebody1">${customer.telephone }</td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>Email地址</b>：</td>
			<td class="tablebody1">${customer.email }</td>
		</tr>
	</table>
<br>
<!--文件尾开始-->
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table2">
		<tr>
			<td valign="middle" colspan="2" align="center" height="25" background="../images/bg2.gif">
			<font color="#FFFFFF"><b>付款方式</b></font></td>
		</tr>
		<tr>
			<td width="40%" class="tablebody2" align="right">　</td>
			<td width="60%" class="tablebody1">${order.pay }</td>
		</tr>
		</table>
		<br>
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1 id="table3">
		<tr>
			<td valign=middle align=center height=25 background="../images/bg2.gif" colspan="5">
			<font color="#ffffff"><b>商品购物清单</b></font></td>
		</tr>
		<%int a = 0; %>  
		 <c:forEach items="${list_line }" var="li" > 
		  <%a++; %>     
			<tr>	
				<td class=tablebody2 valign=middle align=center width=""><%=a %></td>
				<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<a href="/estore/product?bookid=${li.book.id }" target="_blank">${li.book.name }</a></td>
				<td class=tablebody2 valign=middle align=center width="">价格：￥${li.book.price }</td>
				<td class=tablebody1 valign=middle align=center width="">数量：${li.num }</td>
				<td class=tablebody2 valign=middle align=left width="">小计：￥${li.num*li.book.price }</td>
			</tr>
		</c:forEach> 
               
                
		<tr>
			<td class=tablebody1 valign=middle align=center colspan="4">　</td>
			<td class=tablebody1 valign=middle align=left width="">合计：<font color="#ff0000"><b>￥${order.cost }</b></font></td>
		</tr>
		        </table>
		</form>
		<br>

		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="28">
		  <tr>
		    <td height="17" background="../images/bot_bg.gif">
		      　</td>
		  </tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
		    <td bgcolor="#f1f1f6" height="53" valign="center">
			<p align="center">Copyright &copy;2010 - 2018 <a href="http://www.briup.com.cn"><b><font face="Verdana,">briup</font></b><font color=#CC0000>.com.cn</font></b><br>
			</td>
		  </tr>
		</table>
	</body>
</html>
