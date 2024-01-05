<%@page import="com.multi.werin.bbs.BbscmtDAO"%>
<%@page import="com.multi.werin.bbs.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    BbsVO bag = (BbsVO)request.getAttribute("bag");
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<table class="table">
			<tr class="table-success">
				<td>제목</td>
				<td><%= bag.getBbs_title() %></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><%= bag.getBbs_content() %></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%= bag.getBbs_writer() %></td>
			</tr>
			<tr>
			<td colspan="2" class="text-center">
				<a href="update?bbs_id=<%=bag.getBbs_id()%>" ><button class="btn btn-primary">게시글 수정</button></a>
				<a href="delete2?bbs_id=<%=bag.getBbs_id()%>" ><button class="btn btn-danger">게시글 삭제</button></a>
			</td>
		</tr>
		</table>
		<button class="btn btn-warning">추천하기<%= bag.getBbs_like() %></button>
		
</body>
</html>