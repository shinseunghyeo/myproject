<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    session = request.getSession();
    MemberDTO dto = (MemberDTO)session.getAttribute("member");
 --%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <title>회원가입 페이지1</title>
    <link rel="stylesheet" href="../resources/css/update_G.css">
    <script type="text/javascript" src="../resources/js/update_G.js"></script>
</head>
<body>
	<c:import var="footer" url="../common/footer_G.jsp"/>
    <div id="wrap">
        <header>
            <div id="logo">
                <form>
                    <a href="/human/main/index_G.jsp">
                        <img src="../resources/css/img/Gmarket-logo.png" alt="로고" id="logo-img">
                    </a>
                </form>
            </div>
        </header>
        <section>
           <form name="frm_modify" method="post" action="update_process_G.jsp"> 
                <div id="id-passward">
                	<input type="hidden" name="m_idx" value="${member.m_idx }">
                    <input type="text" name="member_id" id="id" class="member-infomation" value="${member.member_id }" disabled>
                    <input type="password" name="member_pw" id="pw" class="member-infomation" value="${member.member_pw }">
                    <input type="text" name="member_name" id="name" class="member-infomation" value="${member.member_name }">
                    <input type="tel" name="handphone" id="phone" class="member-infomation" value="${member.handphone }">
                    <input type="email" name="email" id="email" class="member-infomation" value="${member.email }">
					<input type="text" name="cardnumber" id="cardnumber" class="member-infomation" value="${member.cardnumber }">
                    <input type="text" name="carddate" id="carddate" class="member-infomation" value="${member.carddate }">
                    <input type="text" name="member_post_number" id="member_post_number" class="member-infomation" value="${member.member_post_number }">
                    <input type="text" name="member_post" id="member_post" class="member-infomation" value="${member.member_post }">
                    <input type="text" name="member_post2" id="member_post2" class="member-infomation" value="${member.member_post2 }"> 
                    
                </div>
                
                <div id="button">
                    <div id="formId">
                        <input type="submit" value="수정" id="login-button2" class="button2">
                    </div>
                </div>
                <c:if test="${not empty msg}">
			    	<c:out value="<span> ${msg} </span>" escapeXml="false" />
			    </c:if>
            </form>
            
        </section>
        ${footer }
    </div>
    
</body>
</html>