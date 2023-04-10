package org.doit.web.controllers;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.doit.web.newlecture.dao.NoticeDao;
import org.doit.web.newlecture.vo.NewsDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;



@Controller
@RequestMapping("/customer/*")
public class CustomerController {

	//스프링 4.3 부터 가능하다 ~	
	@Autowired
	private NoticeDao noticeDao = null;

	/*
	 * @Autowired private MemberShipService memberShipService = null;
	 */

	//constructor
	public CustomerController() {		
	}
	/*
	public CustomerController(NoticeDao noticeDao) {
	super();
	this.noticeDao = noticeDao;
	}

	//setter
	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}
	 */

	//[3]
	@RequestMapping("notice.htm")
	public String notices(
			HttpServletRequest request
			, HttpServletResponse response
			, @RequestParam(value = "page", defaultValue = "1" ) int page
			, @RequestParam(value = "field", defaultValue = "title" ) String field
			, @RequestParam(value = "query", defaultValue = "" ) String query
			, Model model
			) throws Exception {


		model.addAttribute("message", "hello, Spring MVC World!"); 			
		List<NewsDTO> list =  this.noticeDao.getNotices(page, field, query);	
		model.addAttribute("list", list);

		//int recordCount = this.noticeDao.getCount(field, query); //총 레코드수
		//int pageCount = (int)Math.ceil((double)recordCount/15); //총 페이지수
		//model.addAttribute("pageCount", pageCount);


		//return "notice.jsp";
		return "customer.notice";

	} 

	//2. 공지 사항 상세보기 컨트롤러 메서드 == NoticeDetailController
	@RequestMapping("noticeDetail.htm")
	public String noticeDetail(int n_id, Model model) throws Exception {			
		//					
		NewsDTO newsdto =  this.noticeDao.getNotice(n_id);
		model.addAttribute("newsdto", newsdto);		

		//return "noticeDetail.jsp";
		return "customer.noticeDetail";
	} 


	// Get방식 요청
	// @RequestMapping("/customer/noticeReg.htm")
	// @GetMapping()/ @PostMapping() X  스프링 4.x 이상
	@RequestMapping(value = {"noticeReg.htm"}, method = RequestMethod.GET)
	public String noticeReg()  throws Exception{
		return "customer.noticeReg";
	}


	//Post 방식 요청 + ("/customer/noticeReg.htm")
	@RequestMapping(value = {"noticeReg.htm"}, method = RequestMethod.POST)
	public String noticeReg(NewsDTO newsdto, HttpServletRequest request) throws Exception {

		//1. 첨부된 파일 유무 확인 후에 서버 파일 저장
		CommonsMultipartFile multipartFile = newsdto.getFile();
		CommonsMultipartFile multipartFile2 = newsdto.getFile2();

		//서버에 배포했을 때의 실제 경로
		String uploadRealPath = null;
		if( ! multipartFile.isEmpty()  ) { //첨부 파일 있는 경우.
			//2. 첨부 파일 저장(이미지)
			uploadRealPath = request.getSession().getServletContext().getRealPath("/customer/upload");

			System.out.println("> uploadRealPath :" + uploadRealPath);

			//originalFilename, filesystemName
			String originalFilename = multipartFile.getOriginalFilename();
			String filesystemName = getFileNameCheck(uploadRealPath, originalFilename);

			File dest = new File(uploadRealPath, filesystemName );
			multipartFile.transferTo(dest); //실제 파일 저장

			//3. notice.filesrc
			//		테이블 : 원래파일이름, 		_1 시스템저장파일이름(O) 컬럼 생성
			newsdto.setN_image("https://image.istarbucks.co.kr/upload/news/"+filesystemName);
			//newsdto.setN_ctimage("https://image.istarbucks.co.kr/upload/news/"+filesystemName);

		}//if

		if( ! multipartFile2.isEmpty()  ) { //첨부 파일 있는 경우.
			//2. 첨부 파일 저장(내용이미지)
			uploadRealPath = request.getSession().getServletContext().getRealPath("/customer/upload");

			System.out.println("> uploadRealPath :" + uploadRealPath);

			//originalFilename, filesystemName
			String originalFilename = multipartFile2.getOriginalFilename();
			String filesystemName = getFileNameCheck(uploadRealPath, originalFilename);

			File dest = new File(uploadRealPath, filesystemName );
			multipartFile2.transferTo(dest); //실제 파일 저장

			//3. notice.filesrc
			//		테이블 : 원래파일이름, 		_1 시스템저장파일이름(O) 컬럼 생성
			//newsdto.setN_image("https://image.istarbucks.co.kr/upload/news/"+filesystemName);
			newsdto.setN_ctimage("https://image.istarbucks.co.kr/img/event/2023/"+filesystemName);

		}//if



		//로그인 해야지만 공지사항 작성할 수 있도록 처리
		//newsdto.setWriter("seungju");

		int rowCount = this.noticeDao.insert(newsdto);

		if (rowCount == 1) { //공지사항 쓰기 성공
			return "redirect:notice.htm";
		} else {
			return "noticeReg.jsp?error";
		}


		// insertAndPointUpOfMember() 메서드는 NLMemberShipService 클래스로 이동
		//this.noticeDao.insertAndPointUpOfMember(notice, "seungju");
		//this.memberShipService.insertAndPointUpOfMember(newsdto, "seungju");
		//noticeDao.insert(newsdto);

		//return "redirect:notice.htm";

	}

	// upload 폴더  - a.txt 

	//  a-2.txt
	private String getFileNameCheck(String uploadRealPath, String originalFilename) {
		int index = 1;		
		while( true ) {			
			File f = new File(uploadRealPath, originalFilename);			
			if( !f.exists() ) return originalFilename;			
			// upload 폴더에 originalFilename 파일이 존재한다는 의미         a.txt (4자리)
			String fileName = originalFilename.substring(0, originalFilename.length() - 4 );  //   a
			String ext =  originalFilename.substring(originalFilename.length() - 4 );  // .txt
			// asdfasf-3.txt
			originalFilename = fileName+"-"+(index)+ext;

			index++;
		} // while 
	}

	//noticeDel.htm?seq=${notice.seq}&filesrc=${notice.filesrc}
	@RequestMapping("noticeDel.htm")
	public String noticeDel(
			int n_id			
			, HttpServletRequest request
			) throws Exception{

		// [1] 삭제할 공지사항이 첨부파일 있다면 		첨부파일 삭제 코딩
		//Notice notice = this.noticeDao.getNotice(seq);
		//String delFilesrc = notice.getFilesrc();
		String uploadRealPath = request.getSession().getServletContext().getRealPath("/customer/upload");
		File delFile = new File(uploadRealPath);
		if(delFile.exists()) {
		delFile.delete();
		}

		// [2] 공지사항 삭제
		int rowCount = this.noticeDao.delete(n_id);
		if(rowCount == 1) return "redirect:notice.htm";
		else 					  return "redirect:noticeDetail.htm?n_id="+n_id+"&error";
	}



}
