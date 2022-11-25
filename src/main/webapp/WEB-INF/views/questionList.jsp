<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX Napmkmk</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css"> 
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
							<br><br>
							<center>
							<table class="board" width ="80%" border="0" cellspacing="0" cellpadding="10">
									<tr>
										<th class="board_title">No</th>
										<th class="board_title">Id</th>
										<th class="board_title" width="50%">Content</th>
										<th class="board_title">Name</th>
										<th class="board_title">Date</th>
									</tr>
									<c:forEach items="${qDtos}" var="qdto">
										<tr>
											<td class="board_content">${qdto.qnum }</td>
											<td class="board_content">${qdto.qid}</td>
											<td class="board_content02">
												<a href="questionView?qnum=${qdto.qnum }">
													 <c:choose> 
						                                 <c:when test="${fn:length(qdto.qcontent) > 20}">
						                                    <c:out value="${fn:substring(qdto.qcontent,0,19) }"></c:out>... 
						                                 </c:when>
						                                 <c:otherwise>
						                                    <c:out value="${qdto.qcontent }"></c:out>
						                                 </c:otherwise>
						                              </c:choose>
												</a>
											</td>
											<td class="board_content">${qdto.qname }</td>
											<td class="board_content">
												<c:out value="${fn:substring(qdto.qdate,0,10) }"></c:out>
											</td>
										</tr>
									</c:forEach>
									<tr>
										<td colspan="5" align="right">
											<input class="button_type01" type="button" value="질문하기" onclick="script:window.location='question'">
										</td>
									</tr>
							</table>
							</center>
							<br>
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