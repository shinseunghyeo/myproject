<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <title>회원가입 페이지1</title>
    <link rel="stylesheet" href="../resources/css/join_G.css">
    <script type="text/javascript" src="../resources/js/join_G.js"></script>
    <script>
    	function selectAll(selectAll)  {
    	  const checkboxes = document.getElementsByName('id-checkbox');
    	  checkboxes.forEach((checkbox) => {
    	    checkbox.checked = selectAll.checked;
    	  })
    	}
    </script>
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
            <form name="frm_join" method="post" action="join_process_G.jsp">
                <div id="id-passward">
                    <input type="text" name="member_id" id="id" class="member-infomation" placeholder=" 아이디">
                    <input type="button" name="id_btn" id="id_btn" value="유효성검사">
                    <input type="password" name="member_pw" id="pw" class="member-infomation" placeholder=" 비밀번호">
                    <input type="text" name="member_name" id="name" class="member-infomation" placeholder=" 이름">
                    <input type="tel" name="handphone" id="phone" class="member-infomation" placeholder=" 전화번호">
                    <input type="email" name="email" id="email" class="member-infomation" placeholder=" 이메일">
                </div>
                <div id="checkbox-around">
                    <div id="checkbox">
                        <input type="checkbox" name="id-checkbox" id="id-checkbox" class="button2" onclick='selectAll(this)'> 모두 동의하기
                    </div>
                    <div id="checkbox2">
                        <input type="checkbox" name="id-checkbox" class="admit"> 이용 약관 동의<br>
                        <input type="checkbox" name="id-checkbox" class="admit"> 개인정보 수집 동의<br>
                        <input type="checkbox" name="id-checkbox" id="admit3" class="admit"> 광고 수신 동의
                    </div>
                </div>
                <div id="button">
                    <div id="formId">
                        <input type="reset" value="취소" id="login-button1" class="button2">
                        <input type="submit" value="다음" id="login-button2" class="button2">
                    </div>
                </div>
            </form>
        </section>
        ${footer }
    </div>
    
</body>
</html>