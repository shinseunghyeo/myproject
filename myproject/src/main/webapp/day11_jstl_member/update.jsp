<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="human.dto.MemberDTO" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>서블릿 테스트:회원정보 변경</title>
    <script type="text/javascript" src="../resources/js/update.js"></script>
    <link rel="stylesheet" href="../resources/css/join.css">
</head>
<body>
	<c:import var="m_header" url="../common2/header2.jsp"/>
	<c:import var="footer" url="../common2/footer.jsp"/>
	
    <div id="wrap">
        
        ${m_header}

    <div id="container">
        <div id="logo"></div>
	    <form name="frm_update" method="post" action="update_process.jsp">
	       <input type="hidden" name="m_idx" value="${member.m_idx}">
	        <table>
	            <tr>
	                <td><input type="text" name="member_id" id="member_id" value="${member.member_id}" disabled></td>
	            </tr>
	            <tr>
	                <td><input type="text" name="member_pw" id="member_pw" value="${member.member_pw}"></td>
	            </tr>
	            <tr>
	                <td><input type="text" name="member_name" id="member_name" value="${member.member_name}"></td>
	            </tr>
	            <tr>
	                <td><input type="text" name="handphone" id="handphone" value="${member.handphone}"></td>
	            </tr>
	            <tr>
	                <td><input type="email" name="email" id="email" value="${member.email}"></td>
	            </tr>
	            <tr>
	                <td><input type="submit" id="update_btn" value="변경하기"></td>
	            </tr>
	            <tr>
	                <td>
                	    <c:if test="${not empty msg}">
					    	<c:out value="<span> ${msg} </span>" escapeXml="false" />
					    </c:if>
	                </td>
	            </tr>
	        </table>       
	    </form>
	    </div>
	    

	
	   ${footer}
    
    </div>
</body>
</html>