<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX Napmkmk</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
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
						<center>
							<table width="400" border="0" cellspacing="0" cellpadding="10">
								<form action="questionModify" method="post" name="board_frm">
								<input type="hidden" value="${qDtos.qnum }" name="qnum">
									<tr>
										<td><span class="lb_txt">ID</span></td>
										<td>${qDtos.qid }</td>
									</tr>
									<tr>
										<td><span class="lb_txt">NAME</span></td>
										<td>${qDtos.qname }</td>
									</tr>
									<tr>
										<td><span class="lb_txt">QUESTION</span></td>
										<td><textarea class="textarea_type01" cols="30" rows="5" name="qcontent" readonly="readonly">${qDtos.qcontent }</textarea></td>
									</tr>
									<tr>
										<td><span class="lb_txt">E-MAIL</span></td>
										<td>${qDtos.qemail }</td>
									</tr>
									<tr>
										<td><span class="lb_txt">DATE</span></td>
										<td>${qDtos.qdate }</td>
									</tr>
									<tr>
										<td colspan="2">
										<%
											String boardId= (String)request.getAttribute("qId");
										
											if(boardId.equals("GUEST")){ //로그인안됨 
										%>
											<input class="button_type01" type="submit" value="수정">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="삭제" onclick="script:window.location='questionDelete?qnum=${qDtos.qnum}'">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
										<%
										} else if ((sessionId != null) && sessionId.equals(boardId)){
										%>
											<input class="button_type01" type="submit" value="수정">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="삭제" onclick="script:window.location='questionDelete?qnum=${qDtos.qnum}'">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
										
										<%
										} else {
										%>
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
										<%
										}
										%>	
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