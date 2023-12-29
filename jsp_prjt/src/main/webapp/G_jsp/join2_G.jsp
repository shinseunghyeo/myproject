<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <title>회원가입 페이지2</title>
    <link rel="stylesheet" href="../resources/css/join2_G.css">
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
        	<form name="frm_join2" method="post" action="join_process2_G.jsp">
	            <div id="page-title">
	                배송지 및 결제수단
	            </div>
	            <div id="zip-code-around">
	                <div id="zip-code">                    
	                        <input type="button" value="우편번호찾기" id="zip-code-button" onclick="checkPost()">
	                        <input type="text" name="member_post_number" id="zip-code-number">
	                </div>
	                <div id="address">                    
	                        <input type="text" name="member_post" id="address1" placeholder=" 주소">
	                        <input type="text" name="member_post2" id="address2" placeholder=" 상세주소">                    
	                </div>
	            </div>
	            <div id="card-around">
	                <div id="card-choice">
	                    <div id="card-choice-button">
	                        <input type="button" value="+" id="card-choice-button1">
	                    </div>
	                    <div id="card-info">
	                        <input type="text" name="cardnumber" id="card-number" placeholder=" 카드번호">
	                        <input type="text" name="carddate" id="card-date" placeholder=" 유효기간">
	                    </div>
	                </div>
	                <div id="phone-around">
	                    <input type="button" value="SK" class="phone-telecom">
	                    <input type="button" value="KT" class="phone-telecom">
	                    <input type="button" value="LG" class="phone-telecom">
	                    <input type="text" name="phone-number" id="phone-number" placeholder=" 휴대폰번호">
	                </div>
	            </div>
	            <div id="button">
	                    <input type="submit" value="가입" id="login-button2" class="button2">
	            </div>
            </form>
             
        </section>
        ${footer }
    </div>
    
    
</body>
<script src="../resources/js/join2_G.js"> </script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>