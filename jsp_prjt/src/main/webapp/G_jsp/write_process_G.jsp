<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.io.IOException, java.text.SimpleDateFormat, java.util.Date, java.io.File" %>
<%@ page import="human.dto.BoardDTO, human.dao.Board_GDAO" %>

<%
	String uploadPath = application.getRealPath("/uploads");
	int maxUploadSize = 1024 * 1024 * 5;
	String encoding = "UTF-8";
	Board_GDAO dao = null;
	
	try{
		MultipartRequest mRequest = new MultipartRequest(request, uploadPath, maxUploadSize, encoding);
		String fileName = mRequest.getFilesystemName("uploadFile");
		String newFileName = null;
		
		if(fileName != null){
			String ext = fileName.substring(fileName.lastIndexOf("."));
			String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
			newFileName = now + ext;
			File originFile = new File(uploadPath+File.separator+fileName);
			File newFile = new File(uploadPath+File.separator+newFileName);
			originFile.renameTo(newFile);
		}
		String writer = mRequest.getParameter("writer");
		String title = mRequest.getParameter("title");
		String content = mRequest.getParameter("content");
		String kategorie = mRequest.getParameter("kategorie");
		int m_idx = Integer.parseInt(mRequest.getParameter("m_idx"));
		
		BoardDTO dto = new BoardDTO();
		dto.setWriter(writer);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setM_idx(m_idx);
		dto.setOriginfile_name(fileName);
		dto.setSavefile_name(newFileName);
		dto.setKategorie(kategorie);
		
		
		dao = new Board_GDAO();
		int result = dao.insert(dto);
		if(result==1){
			response.sendRedirect("list_G.jsp");
		}else{
			out.print("<script> alert('글등록에 실패했습니다.'); history.back(); </script>");
		}
	}catch(IOException e){
		System.out.println("글 등록 중 예외 발생");
	}finally{
		//프로그램 실행 종료 전 데이터베이스 관련 자원 해제시켜줌
		if(dao != null){
			dao.close();
		}
	}
	
%>
