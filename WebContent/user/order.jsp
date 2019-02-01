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
		<script type="text/javascript">
			var msg = '${msg}';
				if(msg){
					alert(msg);
					<%session.removeAttribute("msg");%>
				}
		</script>
	</head>
	<body onLoad="MM_preloadImages('../images/index_on.gif','../images/reg_on.gif','../images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')" topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
		<%@include file="../header.jsp" %>



<!--文件体开始-->

		<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="../images/Forum_nav.gif" align="middle">
                  <a href=index.jsp>杰普电子商务门户</a> →
					<img border="0" src="../images/dog.gif" width="19" height="18">
					订单列表
                </td>
                </tr>
		</table>
              <br>

		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>订单编号</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>订单日期</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>订单状态</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>付款方式</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>订单金额</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>操作</b></font></td>
		</tr>
                
             <%int a = 0; %>  
         <c:forEach items="${list_order }" var="li" >  
         <%a++; %>     
			<tr>
				<td class=tablebody2 valign=middle align=center width=""><%=a %></td>
				<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<a href="/estore/orderinfor?orderid=${li.id }">${li.id }</a></td>
				<td class=tablebody2 valign=middle align=center width="">${li.orderTime } </td>
				<td class=tablebody1 valign=middle align=center width="">${li.state }</td>
				<td class=tablebody2 valign=middle align=center width="">${li.pay } </td>
				<td class=tablebody1 valign=middle align=left width="">&nbsp;&nbsp;￥${li.cost }</td>
				<td class=tablebody2 valign=middle align=center width="">
				<input type="button" value="删除" onclick="javascript:window.location='/estore/dddd?orderid=${li.id }';">&nbsp;<input type="button" value="明细" onclick="javascript:window.location='/estore/orderinfor?orderid=${li.id }';"><!--&nbsp;<input type="button" value="修改"/>--> </td>
			</tr>
		</c:forEach> 
        </table><br>
        
<!--文件尾开始-->
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