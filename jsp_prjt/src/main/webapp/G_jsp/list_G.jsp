<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="dao" class="human.dao.Board_GDAO" />
<jsp:useBean id="sDto" class="human.dto.SearchDTO" />
<jsp:useBean id="kDto" class="human.dto.KategorieDTO" />
<jsp:setProperty name="kDto" property="*" />
<jsp:setProperty name="sDto" property="*" />
<c:choose>
	<c:when test="${empty kDto.type}"><c:set var="boardList" value="${dao.getBoards(sDto) }" /></c:when>
	<c:otherwise><c:set var="boardList" value="${dao.getBoards(sDto, kDto) }" /></c:otherwise>
</c:choose>


<c:set var="totalRows" value="${boardList.size() }" />

<!-- 1. 총게시물수: totalRows -->
<c:set var="totalRows" value="${boardList.size()} "/>

<!-- 2. 한 페이지에 보여줄 게시물수 : rows_page -->
<c:set var="rows_page" value="10"/>

<!-- 3. 한 페이지블록에 보여줄 페이지수 : pages_pageBlock -->
<c:set var="pages_pageBlock" value="5"/>

<!-- 4. 현재 페이지번호 : pageNum -->
<c:choose>
	<c:when test="${empty param.pageNum}"><c:set var="pageNum" value="1"/></c:when>
	<c:otherwise><c:set var="pageNum" value="${param.pageNum}"/></c:otherwise>
</c:choose>

<!-- 5. 게시물의 시작번호 : startNum -->
<c:set var="startNum" value="${(pageNum-1)*rows_page+1 }"/>

<!-- 6. 게시물의 끝번호 : endNum -->
<c:set var="endNum" value="${(pageNum)*rows_page}"/>

<!-- 7. 현재 페이지블록번호 : pageBlock -->
<c:choose>
	<c:when test="${empty param.pageBlock}"><c:set var="pageBlock" value="1"/></c:when>
	<c:otherwise><c:set var="pageBlock" value="${param.pageBlock}"/></c:otherwise>
</c:choose>

<!-- 8. 마지막/총 페이지번호 : total_pageNum -->
<fmt:parseNumber var="tPageNum" value="${Math.ceil(totalRows/rows_page)}" integerOnly="true" />
<c:set var="total_pageNum" value="${tPageNum}" />

<!-- 9. 마지막 페이지블록번호 : last_pageBlock -->
<fmt:parseNumber var="lPageBlock" value="${Math.ceil(total_pageNum/pages_pageBlock)}" integerOnly="true" />
<c:set var="last_pageBlock" value="${lPageBlock}" />


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 글목록</title>
    <link rel="stylesheet" href="../resources/css/list_G.css">
</head>
<body>
	<c:import var="footer" url="../common/footer_G.jsp"/>
	<c:import var="header_board_G" url="../common/header_board_G.jsp"/>
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
                        <a href="list_G.jsp?type=service" class="left-a">고객서비스</a>
                    </div>
                    <div>
                        <a href="list_G.jsp?type=event" class="left-a">이벤트당첨</a>
                    </div>
                </div>
                <div id="all-right">
                   	<table id="table">
                   			<tr>
                   				<th id="th1">글 번호</th>
	                            <th id="th2">제목</th>
	                            <th id="th3">작성일자</th>
	                            <th id="th4">작성자</th>
	                            <th id="th5">조회수</th>
	                        </tr>
                   	<c:choose>
                   		<c:when test="${empty boardList }">
                   				<tr>
                   					<td colspan="5">등록된 게시물이 없습니다.</td>
                   				</tr>
                   		</c:when>
                   		<c:otherwise>
                   			<c:forEach var="i" begin="${startNum}" end="${endNum}">
                   				<c:if test="${not empty boardList[i-1] }">
		                            <tr>
		                                <td>${i}</td>
		                                <td>
		                                	<a href="view_G.jsp?b_idx=${boardList[i-1].b_idx }" id="a-title">${boardList[i-1].title }</a>
		                                </td>
		                                <td>${boardList[i-1].post_date}</td>
		                                <td>${boardList[i-1].writer}</td>
		                                <td>${boardList[i-1].read_cnt }</td>
		                            </tr>
	                            </c:if>
	                        </c:forEach>
                   		</c:otherwise>
                   	</c:choose>
                   	<c:if test="${not empty boardList}" >
						<tr>
							<td colspan="5" id="td_paging">
								<%@ include file="paging_G.jsp" %>
							</td>
						</tr>		
					</c:if>
                   	</table>
                    <form id="search-form">
                    	<input type="hidden" name="type" value="${kDto.type }">
                    	<table id="search-table">
                    		<tr>
								<td>총게시물수: ${totalRows }</td>
								<td>
									<select name="searchField">
										<option value="title">제목</option>
										<option value="content">내용</option>
										<option value="writer">작성자</option>
									</select>		
									<input type="text" name="searchWord" >
									<input type="submit" value="검색">
								</td>
							</tr>     
                    	</table>
                    </form>
                    <form>
                        <c:if test="${not empty member}">
							<a href="/human/G_jsp/write_G.jsp">
	                        	<input type="button" value="글 작성" id="board-write">
	                        </a>
                        </c:if>
                    </form>
                </div>
            </div>


        </section>
        ${footer }
    </div>
</body>
</html>
