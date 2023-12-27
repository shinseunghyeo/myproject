<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="human.dto.MemberDTO" %>    

	<header>
	     <h1>헤더 영역</h1>
	     <div id="logo" title="회사로고"></div>
	     <div id="info-menu">
	         <a href="#"><img src="../resources/css/img/sitemap.png" id="img-sitemap" alt="사이트맵 이미지"></a>
	         
	         
	      <c:choose>
	      	<c:when test="${not empty member}">
	      	   <a href="/human/day11_jstl_member/logout.jsp">로그아웃</a>    
               <a href="/human/day11_jstl_member/update.jsp">회원정보변경</a>
               <a href="/human/day13_board/write.jsp">글쓰기</a>
	      		
	      	</c:when>
	      	<c:otherwise>
	      	
	      	   <a href="/human/day11_jstl_member/login.jsp">로그인</a>    
               <a href="/human/day11_jstl_member/join.jsp">회원가입</a>
               <a href="/human/day13_board/list.jsp">글목록</a>
	      	
	      	</c:otherwise>
	      </c:choose>
	         
	     </div>
	     <nav>
	         <h1>네이게이션 영역</h1>
	         <ul id="gnb">
	             <li><a href="#">항공+숙소</a></li>
	             <li><a href="#">숙소</a></li>
	             <li><a href="#">항공</a></li>
	             <li><a href="#">할인쿠폰&amp;특가상품</a></li>
	             <li><a href="#">공항 이동 교통편</a></li>
	         </ul>
	     </nav>
	 </header>
