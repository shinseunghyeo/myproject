<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="human.dto.MemberDTO" %> 
<% 
    session = request.getSession();
    MemberDTO dto = (MemberDTO)session.getAttribute("member");
 %> 
<nav>
    <div id="nav">
        <div id="kategorie">
            <ul>
                <li><a href="#" id="kategorie-1">카테고리</a></li>
                <hr>
                <li><a href="#" class="kategorie-2">패션</a></li>
                <hr>
                <li><a href="#" class="kategorie-2">유아</a></li>
                <hr>
                <li><a href="#" class="kategorie-2">식품,생필품</a></li>
                <hr>
                <li><a href="#" class="kategorie-2">문구, 취미</a></li>
                <hr>
                <li><a href="#" class="kategorie-2">컴퓨터, 디지털, 가전</a></li>
                <hr>
                <li><a href="#" class="kategorie-2">스포츠, 건강</a></li>
            </ul>
        </div>
        <div id="advertisement">
            <a href="https://item.gmarket.co.kr/Item?goodscode=3282916180">
                <img src="../resources/css/img/ad.png" alt="광고 이미지" id="advertisement-img">
            </a>
        </div>
        <div id="rogin">
          <% if(dto != null){//로그인한 경우 %>
	            <form action="/human/G_jsp/update_G.jsp">      	
                	<input type="submit" value="회원정보수정" id="modify-button">
	            </form>
	            <form action="/human/G_jsp/logout_G.jsp">      	
                	<input type="submit" value="로그아웃" id="logout-button">
	            </form>
	            
	            <form action="/human/G_jsp/withdraw_process_G.jsp" onsubmit="return confirm('회원탈퇴 하시겠습니까?')">
	            	<input type="hidden" name="m_idx" value="<%= dto.getM_idx() %>">      	
                	<input type="submit" value="회원탈퇴" id="withdraw-button" >
	            </form>
	             
	            
	      	    
	        
	      <% }else{//로그인하지 않은 경우 %>
	      	 
	            <form action="/human/G_jsp/join_G.jsp">      	
                	<input type="submit" value="회원가입" id="join-button">
	            </form>
	            <form action="/human/G_jsp/login_G.jsp">
	                <input type="submit" value="로그인" id="rogin-button">
	            </form>
               
	      <% }%>
            
            
        </div>
        <div id="alarm">
            <form>
                <img src="../resources/css/img/human_logo.png" alt="알람" id="alarm-img">
            </form>
        </div>
    </div>
</nav>