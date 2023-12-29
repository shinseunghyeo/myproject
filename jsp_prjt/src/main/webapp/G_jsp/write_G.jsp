<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 글쓰기</title>
    <link rel="stylesheet" href="../resources/css/write_G.css">
</head>
<body>
	<c:import var="header_board_G" url="../common/header_board_G.jsp"/>
	<c:import var="footer" url="../common/footer_G.jsp"/>
    <div id="wrap">
        ${header_board_G }
        <section>
            <div id="all">
                <div id="all-left">
                    <h3>공지사항</h3>
                    <div>
                        <a href="list_G.jsp" class="left-a">전체</a>
                    </div>
                    <div>
                        <a href="#" class="left-a">고객서비스</a>
                    </div>
                    <div>
                        <a href="#" class="left-a">이벤트당첨</a>
                    </div>

                </div>
                <div id="all-right">
                    <form name="frm-write" method="post" action="write_process_G.jsp" enctype="multipart/form-data">
                    	<input type="hidden" name="m_idx" value="${member.m_idx }">
                    	<input type="hidden" name="writer" value="${member.member_name }">
                        <div id="write-first">
                            <input type="text" id="writer" value="${member.member_name }" placeholder="작성자" disabled>
                            <select name="kategorie" id="select">
                                <option value="service" selected>고객서비스</option>
                                <option value="event">이벤트당첨</option>
                            </select>
                            <input type="text" id="title1" name="title" placeholder="제목">
                            <input type="submit" value="글 작성" id="write_button" >
                        </div>
                        <div>
                            <textarea name="content" cols="30" rows="10" id="textbox" placeholder="내용"></textarea>
                        </div>
                        <div>
                            <input type="file" id="file-choose" name="uploadFile">
                        </div>


                    </form>
                </div>
            </div>


        </section>
        ${footer }
    </div>
</body>
</html>
