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
	<table width="75%" border="0" cellspacing="0" cellpadding="20" class="mt50">
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
						<%
							int checkIdFlag = Integer.parseInt(request.getAttribute("checkIdFlag").toString()) ;
							int checkIdPwFlag = Integer.parseInt(request.getAttribute("checkIdPwFlag").toString()) ;
							if(checkIdFlag == 0){
			
						%>
						<script type="text/javascript">
							alert("입력하신 아이디는 존재하지 않습니다. 다시 확인해주세요");
							history.go(-1);
						</script>
						<%
							} else if(checkIdPwFlag == 0){
						%>
						<script type="text/javascript">
							alert("입력하신 비밀번호가 일치하지 않습니다.다시 확인해주세요");
							history.go(-1);
						</script>
						<%
							}
						%>
						
							${mid }님 로그인 하셨습니다. 반갑습니다.<br>
							${memberDto.mname }님의 가입일은 [${memberDto.mdate }] 입니다
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