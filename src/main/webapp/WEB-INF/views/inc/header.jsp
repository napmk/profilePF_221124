<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/hyperlink.css">

</head>
<body>
	<%
		String sessionId = (String)session.getAttribute("memberId");
	%>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr class="headline01">
			<td width="60%" class="menu01">&nbsp;</td>
			<td width="5%" class="menu01"><a href="index">Home</a></td>
			<td width="5%" class="menu01">
			<%
				if(sessionId == null){
			%>
				<a href="login">Login</a>
			<%
				} else {
			%>	
				<a href="logout">Logout</a>
			<%
				}
			%>	
			</td>
			<td width="5%" class="menu01">
			<%
				if(sessionId == null){
			%>
				<a href="join">Join</a>
			<%
				} else {
			%>
				<a href="memberModify">Modify</a>
			<%
				}
			%>	
			</td>
			<td width="6%" class="menu01"><a href="profile">Profile</a></td>
			<td width="7%" class="menu01"><a href="question">Question</a></td>
			<td width="6%" class="menu01"><a href="contact">contact</a></td>
		</tr>
		<tr class="headline02">
			<td>&nbsp;</td>
		</tr>
	</table>
</body>
</html>