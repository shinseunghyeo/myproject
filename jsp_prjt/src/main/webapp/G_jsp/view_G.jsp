<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dao" class="human.dao.Board_GDAO" />
<c:set var="b_idx" value="${param.b_idx }" />
${dao.updateRead_cnt(b_idx)}
<c:set var="board" value="${dao.getBoard(b_idx) }" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 글읽기</title>
    <script>
		function deletePost(){
			const ans = confirm("정말로 삭제하겠습니까?");
			//예:true, 아니오:false
			
			if(ans){
				location.href="delete_G.jsp?b_idx=${board.b_idx}";
			}
		}
		
	</script>
    <link rel="stylesheet" href="../resources/css/view_G.css">
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
                        <hr>
                        <h2> ${board.title }</h2>
                        <P> ${board.post_date }</P><P> ${board.writer }</P>
                        <hr>
                        <p> ${board.content }</p>
                        <p> 
	                        <c:if test="${not empty board.originfile_name }">
								<a href="download_G.jsp?originfile_name=${board.originfile_name}&savefile_name=${board.savefile_name}">
									${board.originfile_name}
									<img src="../resources/css/img/download.png" alt="첨부파일 이미지" width="20px" height="20px">
								</a>
							</c:if>
                        </p>
                    <c:if test="${(not empty member) and (member.m_idx eq board.m_idx) }" >
	                    <form id="modify-button-form" method="post" action="updateBoard_G.jsp">
	                    	<input type="hidden" name="b_idx" value="${board.b_idx}">
	                        <input type="submit" value="글 수정" id="modify-button">
	                    </form>
	                    <form id="delete-button-form">
	                        <input type="button" value="글 삭제" id="delete-button" onclick="deletePost()">
	                    </form>
                    </c:if>
                </div>
            </div>


        </section>
        ${footer }
    </div>
</body>
</html>
