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
                  <a href=index.jsp>杰普电子商务门户</a> →
					<img border="0" src="../images/dog.gif" width="19" height="18">
					购物清单
                </td>
                </tr>
		</table>
              <br>

		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		
		
		
		<tr>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>产品名称</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>价格</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>数量</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>合计</b></font></td>
			<td valign=middle align=center height=25 background="../images/bg2.gif" width=""><font color="#ffffff"><b>操作</b></font></td>
		</tr>
		<%int a = 0; %>
		<c:forEach items="${shoppingcar.lines }" var="li" >
			<%a++; %>
			<tr>
				<form method="post" action="/estore/updateProduct?bookId=${li.key }" name="f1">
				<input type="hidden" name="productid" value="2">
				<input type="hidden" name="number" value="1">
				<td class=tablebody2 valign=middle align=center width=""><%=a %></td>
				<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<a href="/estore/product?bookid=${li.value.book.id }">${li.value.book.name }</a></td>
				<td class=tablebody2 valign=middle align=center width="">${li.value.book.price }</td>
				<td class=tablebody1 valign=middle align=center width=""><input type="text" name="num" value="${li.value.num }" size="4" onblur="javascript:if(this.value<1){alert('对不起，产品数量不能小于 1 ');this.focus();}else{number.value=this.value;}"/></td>
				<td class=tablebody2 valign=middle align=left width="">&nbsp;&nbsp;￥${li.value.num*li.value.book.price }</td>
				<td class=tablebody1 valign=middle align=center width="">
				<input type="button" value="取消" onclick="javascript:window.location='/estore/removeProduct?productid=${li.key}';"> <input type="submit" value="保存修改"></td>
				</form>
			</tr>
		</c:forEach>
                
		<tr>
			<td class=tablebody1 valign=middle align=center colspan="4">　</td>
			<td class=tablebody1 valign=middle align=left width="">&nbsp;&nbsp;<font color="#ff0000"><b>${shoppingcar.cost }</b></font></td>
			<td class=tablebody1 valign=middle align=center width="">　</td>
		</tr>
		<tr>
			<td class=tablebody2 valign=middle align=center colspan="6"><input type="button" value="提交订单" onclick="javascript:window.location='/estore/user/confirmOrder.jsp';"> <input type="button" value="继续购物" onclick="javascript:window.location='/estore/index.jsp';"> <input type="button" value="清空购物车" onclick="javascript:window.location='/estore/removeAllProduct';"></td>
		</tr>
                </table><br>
<!--文件尾开始-->
		<%@include file="../footer.jsp" %>
	</body>
</html>
