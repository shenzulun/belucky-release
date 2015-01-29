<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>add blog</title>
	<%@include file="../base/header.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="../base/headmenu.jsp"%>	
		<div class="content">
			<c:if test="${not empty message}">
				<div>${message}</div>
			</c:if>
			<a href="${ctx}/index">返回首页</a>
			<form action="${ctx}/blog/add" method="post">
				<fieldset>
					<legend>新增文章</legend>
					<label>标题:</label><input type="text" name="title"/><br/>
					<label>内容:</label>
					<textarea name="content" class="content-show"></textarea>
					<input type="hidden" name="author" value="shenzl"/>
					<input type="submit" value="保存" />
				</fieldset>
			</form>
		</div>
	</div>
	
<%@include file="../base/footer.jsp"%>
</body>
</html>