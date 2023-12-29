<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%
session.invalidate();
//메인 페이지로 이동
/* response.sendRedirect("/human/main/index_G.jsp"); */
%> --%>

<%-- ${session.invalidate()} --%>
<c:remove var="member" scope="session" />
<c:redirect url="/main/index_G.jsp" />
