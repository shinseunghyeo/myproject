<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO, human.dao.GmarketDAO, java.sql.SQLException" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<c:set var="member_id" value="${param.mId}"/>
<c:set var="member_pw" value="${param.mPw}"/>

<jsp:useBean id="dao" class="human.dao.GmarketDAO" />
<c:catch var="errorMsg">
     <c:set var="dto" value="${dao.login(member_id, member_pw)}" />
     <%-- ${dto.m_idx } --%>
</c:catch>

<c:choose>
	<c:when test="${dto ne null}">
		<c:set var="member" value="${dto}" scope="session" />
		<c:redirect url="/main/index_G.jsp" />
	</c:when>
	<c:otherwise>
		<c:redirect url="/G_jsp/login_G.jsp" />
	</c:otherwise>
</c:choose>

<%--

request.setCharacterEncoding("UTF-8");

String member_id = request.getParameter("mId");
String member_pw = request.getParameter("mPw");

MemberDTO dto = null;
GmarketDAO dao = new GmarketDAO();
try {			
	dto = dao.login(member_id, member_pw);	
} catch (SQLException e) {
	e.printStackTrace();
}

if(dto != null) {//로그인 성공
	session.setAttribute("member", dto);
	//메인페이지로 이동
	response.sendRedirect("/human/main/index_G.jsp");
	
	
	
}else {//로그인 실패
	//로그인페이지로 이동
	response.sendRedirect("/human/G_jsp/login_G.jsp");
}
--%>