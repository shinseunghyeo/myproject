<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO, human.dao.GmarketDAO, java.sql.SQLException" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dto" class="human.dto.MemberDTO"/>
<jsp:setProperty name="dto" property="*"/>
<jsp:useBean id="dao" class="human.dao.GmarketDAO"/>
<c:set var="newDto" value="${dao.updateMember(dto) }"/>
<c:choose>
	<c:when test="${newDto ne null}">
		<c:remove var="member" scope="session" />
		<c:set var="member" value="${newDto}" scope="session"/>
		<c:redirect url="/main/index_G.jsp" />
	</c:when>
	<c:otherwise>
		<c:redirect url="/G_jsp/update_G.jsp" />
	</c:otherwise>
</c:choose>
<%--


request.setCharacterEncoding("UTF-8");

int m_idx = Integer.parseInt(request.getParameter("m_idx"));
String member_id = request.getParameter("mId");
String member_pw = request.getParameter("pw");
String member_name = request.getParameter("name");
String handphone = request.getParameter("phone");
String email = request.getParameter("email");
String cardnumber = request.getParameter("cardnumber");
String carddate = request.getParameter("carddate");
String member_post_number = request.getParameter("member_post_number");
String member_post = request.getParameter("member_post");
String member_post2 = request.getParameter("member_post2"); 

MemberDTO dto = new MemberDTO();
dto.setM_idx(m_idx);
dto.setMember_id(member_id);
dto.setMember_pw(member_pw);
dto.setMember_name(member_name);
dto.setHandphone(handphone);
dto.setEmail(email);
dto.setCardnumber(cardnumber);
dto.setCarddate(carddate);
dto.setMember_post_number(member_post_number);
dto.setMember_post(member_post);
dto.setMember_post2(member_post2); 


GmarketDAO dao = new GmarketDAO();
MemberDTO newDto = null;
try {
	
		newDto = dao.updateMember(dto);
		
} catch (SQLException e) {
	e.printStackTrace();
}


if(newDto != null) {//회원정보 변경 성공
	//세션객체에 저장된 기존의 회원정보를 삭제함
	//HttpSession session = request.getSession();//처음인 경우에는 새로운 세션객체를
	//생성하고 기존의 세션 객체가 있으면 기존의 세션객체를 반환함
	session.removeAttribute("member");
	//세션객체에 새로운 회원정보를 저장함
	session.setAttribute("member", newDto);
	
	response.sendRedirect("/human/main/index_G.jsp");
	
}else {//회원정보 변경 실패
	//회원정보 실패에 대한 안내 메시지를 request객체에 저장함
	String msg = "시스템 문제로 회원정보가 정상적으로 변경되지 못했습니다. 다음에 다시 변경해 주세요.";
	request.setAttribute("msg", msg);
	request.getRequestDispatcher("/G_jsp/update_G.jsp").forward(request, response);
	
}





--%>