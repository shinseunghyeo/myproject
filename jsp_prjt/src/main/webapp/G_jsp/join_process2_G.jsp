<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO, human.dao.GmarketDAO, java.sql.SQLException" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:setProperty name="member" property="*"/>
<jsp:useBean id="dao" class="human.dao.GmarketDAO" />
<c:catch var="emsg">
	<c:set var="result" value="${dao.join(member) }" />	
</c:catch>
<c:choose>
	<c:when test="${result == 1}">
		<c:remove var="member" scope="session" />
		<c:redirect url="/main/index_G.jsp" />
	</c:when>
	<c:otherwise>
		<c:redirect url="/G_jsp/join2_G.jsp" />
	</c:otherwise>
</c:choose>



<%--
		
		
		request.setCharacterEncoding("UTF-8");
		String cardnumber = request.getParameter("card-number");
		String carddate = request.getParameter("card-date");
		String member_post_number = request.getParameter("zip-code-number");
		String member_post = request.getParameter("address1");
		String member_post2 = request.getParameter("address2");
		
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		
		
		dto.setCardnumber(cardnumber);
		dto.setCarddate(carddate);
		dto.setMember_post_number(member_post_number);
		dto.setMember_post(member_post);
		dto.setMember_post2(member_post2);                                    
		
		GmarketDAO dao = new GmarketDAO();
		int result = 0;
		try {
			
				result = dao.join(dto);
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(result == 1) {
			/* session.removeAttribute("member");
			//세션객체에 새로운 회원정보를 저장함
			session.setAttribute("member", dto); */
			session.invalidate();
			response.sendRedirect("/human/main/index_G.jsp");
		}else {
			response.sendRedirect("/human/G_jsp/join2_G.jsp");
		}




--%>