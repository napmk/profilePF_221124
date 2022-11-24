<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX Napmkmk</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css"> 
</head>
<body>
<%@ include file="inc/header.jsp" %>
<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td class="center">
				<span class="title01">Napmkmk Profile</span>
			</td>
		</tr>
		<tr>
			<td class="center">
				<span class="title02">Hello Hello Totory World! Hello Hello Totory World!</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							${mname } 님 회원 가입을 축하드립니다.<br>
							가입하신 아이디는 ${mid }입니다
						</td>
					</tr>
				</table>
				</center>
			</td>
		</tr>
	</table>
</center>
<%@ include file="inc/footer.jsp" %>
</body>
</html>