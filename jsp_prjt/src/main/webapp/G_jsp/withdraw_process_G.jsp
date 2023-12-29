<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO, human.dao.GmarketDAO, java.sql.SQLException" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dto" class="human.dto.MemberDTO"/>
<jsp:setProperty name="dto" property="*" />
<jsp:useBean id="dao" class="human.dao.GmarketDAO"/>
<c:catch var="errorMsg">
	<c:set var="newDto" value="${dao.deleteMember(dto) }"/>
</c:catch>
<c:if test="${not empty errorMsg }">
 회원탈퇴 시 예외 발생
</c:if>
<c:choose>
	<c:when test="${newDto ne null }">
		<c:remove var="member" scope="session" />
		<c:redirect url="/main/index_G.jsp" />
	</c:when>
	<c:otherwise>
		<c:set var="msg" value="시스템 문제로 회원탈퇴가 되지 않았습니다. 다음에 탈퇴해 주세요." scope="request"/>
		<jsp:forward page="/main/index_G.jsp"/>
	</c:otherwise>
</c:choose>


<%--
request.setCharacterEncoding("UTF-8");
int m_idx = Integer.parseInt(request.getParameter("m_idx"));
MemberDTO dto = new MemberDTO();
dto.setM_idx(m_idx);
GmarketDAO dao = new GmarketDAO();
MemberDTO newDto = null;
try {
		newDto = dao.deleteMember(dto);	
} catch (SQLException e) {
	e.printStackTrace();
}
if(newDto != null) {//회원정보 변경 성공	
	session.invalidate();
	response.sendRedirect("/human/main/index_G.jsp");
	
}else {//회원정보 변경 실패
	String msg = "시스템 문제로 회원정보가 정상적으로 변경되지 못했습니다. 다음에 다시 변경해 주세요.";
	request.setAttribute("msg", msg);
	request.getRequestDispatcher("/G_jsp/update_G.jsp").forward(request, response);
	
}





--%>