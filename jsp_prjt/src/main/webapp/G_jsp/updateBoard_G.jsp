<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dao" class="human.dao.Board_GDAO" />
<c:set var="b_idx" value="${param.b_idx }" />
<c:set var="board" value="${dao.getBoard(b_idx) }" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 글수정</title>
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
                    <form name="frm-update" method="post" action="updateBoard_process_G.jsp" enctype="multipart/form-data">
                    	<input type="hidden" name="b_idx" value="${b_idx }">
                    	<input type="hidden" name="m_idx" value="${member.m_idx }">
                    	<input type="hidden" name="writer" value="${member.member_name }">
                        <div id="write-first">
                            <input type="text" id="writer" value="${member.member_name }" placeholder="작성자" disabled>
                            <select name="kategories_select" id="select">
                                <option value="service">고객서비스</option>
                                <option value="event">이벤트당첨</option>
                            </select>
                            <input type="text" id="title1" name="title" placeholder="제목" value="${board.title }">
                            <input type="submit" value="글 수정" id="write_button" >
                        </div>
                        <div>
                            <textarea name="content" cols="30" rows="10" id="textbox" placeholder="내용">	${board.content }</textarea>
                        </div>
                        <div>
                            <input type="file" id="file-choose" name="uploadFile"><br>
                        </div>


                    </form>
                </div>
            </div>


        </section>
        ${footer }
    </div>
</body>
</html>
