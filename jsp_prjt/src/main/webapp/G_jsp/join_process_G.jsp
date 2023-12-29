<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO, human.dao.GmarketDAO, java.sql.SQLException" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<jsp:useBean id="dto" class="human.dto.MemberDTO" />
<jsp:setProperty name="dto" property="*"/>
<c:set var="member" value="${dto }" scope="session"/>
<c:redirect url="/G_jsp/join2_G.jsp" />
<%--
		//회원가입정보를 받아서 DB에 입력하고 입력된 결과를 화면에 출력하되
		//정상적으로 회원 가입되었으면 회원가입 성공을 출력하고 그렇지 않으면 회원가입 실패를 출력하도록 구현하시오.
		//post방식으로 넘어온 데이터의 한글깨짐 방지: request.setCharacterEncoding("UTF-8");
		
		request.setCharacterEncoding("UTF-8");
		
		String member_id = request.getParameter("mId");
		String member_pw = request.getParameter("pw");
		String member_name = request.getParameter("name");
		String handphone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		MemberDTO dto = new MemberDTO();
		dto.setMember_id(member_id);
		dto.setMember_pw(member_pw);
		dto.setMember_name(member_name);
		dto.setHandphone(handphone);
		dto.setEmail(email);
		
		
		
		session.removeAttribute("member");
		//세션객체에 새로운 회원정보를 저장함
		session.setAttribute("member", dto);
		
		response.sendRedirect("/human/G_jsp/join2_G.jsp");




--%>