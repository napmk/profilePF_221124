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
						<center>
							<table width="400" border="0" cellspacing="0" cellpadding="10">
								<form action="loginOk" method="post">
									<tr>
										<td><span class="lb_txt">MEMBER ID</span></td>
										<td><input class="input_type01" type="text" name="mid"></td>
									</tr>
									<tr>
										<td><span class="lb_txt">PASSWORD</span></td>
										<td><input class="input_type01" type="password" name="mpw"></td>
									</tr>
									<tr>
										<td colspan="2">
											<input class="button_type01" type="submit"  value="로그인">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="회원가입" onclick="script:window.location='join'">
										</td>
									</tr>
								</form>
							
							</table>
							</center>
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