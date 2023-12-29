<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <title>로그인 페이지</title>
    <link rel="stylesheet" href="../resources/css/login_G.css">
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
        	<form name="frm_login" method="post" action="login_process_G.jsp">
	            <div id="id-passward">
	                    <input type="text" name="mId" id="mId" placeholder=" 아이디">
	                    <input type="password" name="mPw" id="mPw" placeholder=" 비밀번호">
	            </div>
	            <div id="checkbox">
	                    <input type="checkbox" name="id-checkbox" id="id-checkbox" class="button2">아이디 저장
	            </div>
	            <div id="button">
	                    <input type="submit" value="로그인" id="login-button" class="button2">
	            </div>
	        </form>
	        <form method="post" action="/human/G_jsp/join_G.jsp">
	            <div id="button2">
	                    <input type="button" value="아이디 찾기" id="id-search-button" class="button3">
	                    <input type="button" value="비밀번호 찾기" id="pw-search-button" class="button3">
	                    <input type="submit" value="회원 가입" id="new-id-button" class="button3">
	            </div>
            </form>
        </section>
        ${footer }
    </div>
    
</body>
</html>