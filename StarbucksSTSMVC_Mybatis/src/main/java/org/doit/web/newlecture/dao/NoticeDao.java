package org.doit.web.newlecture.dao;

import java.sql.SQLException;
import java.util.List;

import org.doit.web.newlecture.vo.NewsDTO;


public interface NoticeDao {
	
   
   // 페이징 처리 + 게시판 목록
   public List<NewsDTO> getNotices(int page, String field, String query) throws ClassNotFoundException, SQLException;
 
   // 해당 게시판 상세보기. 
   public NewsDTO getNotice(int n_id) throws ClassNotFoundException, SQLException;
   
   // 게시판 글쓰기
   public int insert(NewsDTO newsdto) throws ClassNotFoundException, SQLException;
   
   // 게시판 삭제
   public int delete(int n_id) throws ClassNotFoundException, SQLException;

   
   }