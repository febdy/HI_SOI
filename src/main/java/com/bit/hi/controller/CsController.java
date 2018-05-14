package com.bit.hi.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.hi.domain.vo.CsVo;
import com.bit.hi.domain.vo.QnaVo;
import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.service.CsService;
import com.bit.hi.util.PageCriteria;
import com.bit.hi.util.PagingMaker;

import ch.qos.logback.core.net.SyslogOutputStream;

@Controller
@RequestMapping("/cs")
public class CsController {
	
	private static final Logger logger = LoggerFactory.getLogger(CsController.class);
	
	@Autowired
	private CsService csService;
	
	@RequestMapping(value="/notice")
	public String noticelist(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, 
			@RequestParam(value="kwd", required=false, defaultValue="") String kwd,
			Model model) throws Exception{ //메서드 이름과 mapping 값은 동일하지 않아도 된다.
		//위에 required와 defaultValue, Integer는 crtPage값 없을 때를 위한 조치임.
		System.out.println("list 진입");
		Map<String, Object> bMap=csService.noticeGetList(crtPage, kwd);
		System.out.println(bMap.toString());
		model.addAttribute("bMap",bMap);
		return "cs/notice";
	}
	
	@RequestMapping(value="/notice/writeform")
	public String noticeWriteForm(HttpSession session) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		if (authUser.getUserLevel().equals("administer")) {
			System.out.println("administer 글쓰기 입장");
			return "cs/notiwriteform";
		} else {
			System.out.println("Not administer");
			return "redirect:/cs/notice";
		}
	}
	
	@RequestMapping(value="/notice/write")
	public String addNoticeWrite(@ModelAttribute CsVo csVo, HttpSession session, Model model) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		
		if (authUser.getUserLevel().equals("administer")) {
			System.out.println("등록 클릭");
			csVo.setUserId(authUser.getUserId());
			csService.addNoticeWrite(csVo);
			model.addAttribute("ctrl","\r\n");
			return "cs/notiview";
		} else {
			System.out.println("Not administer");
			return "redirect:/cs/notice";
		}
	}
	
	@RequestMapping(value="/notice/view/{notiNo}")
	public String viewEachNotice(@PathVariable("notiNo") int notiNo, Model model) throws Exception{
		System.out.println("각 공지글 보기 진입");
		
		CsVo viewNotice=csService.viewEachNotice(notiNo);
		model.addAttribute("csVo", viewNotice);
		model.addAttribute("ctrl","\r\n"); //input에 안 들어있으면 띄어쓰기가 사라지게 되므로, 이 문법을 통해, 띄어쓰기 작동하게 함.
		return "cs/notiview";
	}
	
	@RequestMapping(value="/notice/modifyform")
	public String modifyFormNotice(@RequestParam("notiNo") int notiNo, Model model, HttpSession session) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		if (authUser.getUserLevel().equals("administer")) {
			System.out.println("modifyform 진입");
			CsVo viewNotice=csService.viewNoticeForModify(notiNo);
			model.addAttribute("csVo",viewNotice);
			return "cs/notimodifyform";
		} else {
			System.out.println("Not administer");
			return "redirect:/cs/notice";
		}
	}
	
	@RequestMapping(value="/notice/modify")
	public String modifyNotice(@ModelAttribute CsVo csVo, HttpSession session) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		System.out.println(csVo);
		if (authUser.getUserLevel().equals("administer")) {
			System.out.println("modify 진입");
			csService.modifyEachNotice(csVo);
			return "redirect:/cs/notice";
		} else {
			System.out.println("Not administer");
			return "redirect:/cs/notice";
		}
	}
	
	@RequestMapping("/notice/delete")
	public String apiDeleteNotice(@RequestParam("notiNo") int notiNo) throws Exception{
		csService.deleteNotice(notiNo);
		
		return "redirect:/cs/notice";
	}
	
	@RequestMapping(value="/qna")
	public String qnaList(Model model,
						  PageCriteria pCri,
						  @RequestParam(value="kwd", required=false, defaultValue="") String kwd) throws Exception{
		logger.info(pCri.toString());
		
		model.addAttribute("bMap", csService.qnaGetList(pCri, kwd));
		
		PagingMaker pagingMaker=new PagingMaker();
		pagingMaker.setCri(pCri);
		pagingMaker.setTotalData(csService.qnaTotalCount(pCri, kwd));
		
		model.addAttribute("pagingMaker", pagingMaker);
		return "cs/qna";
	}
	
	@RequestMapping(value="/qna/write", method=RequestMethod.GET)
	public String qnaWriteForm(Model mondel) throws Exception{
		return "cs/qnawrite";
	}
	
	@RequestMapping(value="/qna/write", method=RequestMethod.POST)
	public String qnaWrite(@ModelAttribute QnaVo qnaVo,
			HttpSession session) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		
		qnaVo.setUserId(authUser.getUserId());
		
		csService.qnaWrite(qnaVo);
		return "redirect:/cs/qna";
	}
	
	@RequestMapping(value="/qna/view/{qnaNo}")
	public String qnaEachView(@PathVariable("qnaNo") int qnaNo, Model model) throws Exception{
		QnaVo viewQna = csService.viewEachQna(qnaNo);
		
		model.addAttribute("qnaVo", viewQna);
		model.addAttribute("ctrl","\r\n");
		return "cs/qnaview";
		
	}
	
	@RequestMapping(value="/qna/modifyform")
	public String modifyFormQna(@RequestParam("qnaNo") int qnaNo, Model model, HttpSession session) throws Exception{
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		if(authUser.getUserId().equals(csService.viewQnaForModify(qnaNo).getUserId())) {
			System.out.println("modifyform 진입");
			QnaVo viewQna = csService.viewQnaForModify(qnaNo);
			model.addAttribute("qnaVo",viewQna);
			return "cs/qnamodifyform";
		}else {
			return "redirect:/cs/qna";
		}
	}
	
	@RequestMapping(value="/qna/modify")
	public String modifyQna(@ModelAttribute QnaVo qnaVo, HttpSession session) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		System.out.println(qnaVo);
		if (authUser.getUserId().equals(csService.viewQnaForModify(qnaVo.getQnaNo()).getUserId())) {
			System.out.println("modify 진입");
			csService.modifyEachQna(qnaVo);
			return "redirect:/cs/qna";
		} else {
			System.out.println("Not administer");
			return "redirect:/cs/qna";
		}
	}
	
	@RequestMapping(value="/qna/delete")
	public String deleteQna(Model model, @RequestParam("qnaNo") int qnaNo) throws Exception{
		csService.deleteQna(qnaNo);
		return "redirect:/cs/qna";
	}
	
	
	@RequestMapping(value="/help")
	public String help() throws Exception{
		
		return "cs/help";
	}

}
