package com.bit.hi.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.hi.service.CsService;

@Controller
@RequestMapping("/cs")
public class CsController {
	
	@Autowired
	private CsService csService;
	
	@RequestMapping(value="/notice")
	public String noticelist(@RequestParam(value="crtPage", required=false, defaultValue="1") Integer crtPage, 
			@RequestParam(value="kwd", required=false, defaultValue="") String kwd,
			Model model) { //메서드 이름과 mapping 값은 동일하지 않아도 된다.
		//위에 required와 defaultValue, Integer는 crtPage값 없을 때를 위한 조치임.
		System.out.println("list 진입");
		Map<String, Object> bMap=csService.noticeGetList(crtPage, kwd);
		System.out.println(bMap.toString());
		model.addAttribute("bMap",bMap);
		return "cs/notice";
	}
	
	@RequestMapping(value="/qna")
	public String qna() {
		
		return "cs/qna";
	}
	
	@RequestMapping(value="/help")
	public String help() {
		
		return "cs/help";
	}
	
	/*@RequestMapping(value="/view/{no}")
	public String view(@PathVariable("no") int no, Model model) { //list.jsp에서 넘길때 어떻게 넘기는지 확인할 것.
		System.out.println("view 진입");
		BoardVo boardVo=boardService.getListforView(no); //no를 입력받아서, board 변수 전부 출력.
		model.addAttribute(boardVo);
		model.addAttribute("ctrl","\r\n"); //줄바꿈 치환용
		return "board/view"; //뷰 리졸버에 의해 경로를 이렇게 쓴다.
	}
	
	@RequestMapping(value="/delete") //boardVo에는 기본적으로 jsp로부터 넘어온 글번호 no값이 있음.
	public String delete(@ModelAttribute BoardVo boardVo, HttpSession session) { //@modelAttribute는 여러 값을 묶어주는 역할, service로 보낼때 이용
		System.out.println("delete 진입");
		UserVo authUser=(UserVo)session.getAttribute("authUser"); // 세션은 email,password를 매개값으로 받아, no, name 출력함.
		boardVo.setUserNo(authUser.getNo()); //userVo의 userNo에 user의 고유번호 no를 넣어줌.
		boardService.delete(boardVo);//userVo에는 board의 글번호 no와 유저고유번호 userNo가 들어 있고, 담아서 service로 보냄.
		return "redirect:/board/list";
	} //휴지통이 안보이는 것은 board.css에서 a.del 경로 수정해주면 보임.
	
	@RequestMapping(value="/writeform")
	public String writeform(HttpSession session) {
		System.out.println("writeform 진입");
		if(session.getAttribute("authUser") != null) { //로그인상태일때
			return "board/write";
		} else {                                       //로그인 상태가 아닐때
			return "redirect:/user/loginform";
		}
	}
	
	@RequestMapping(value="/write")
	public String write(@ModelAttribute BoardVo boardVo, HttpSession session) {
		System.out.println("write 진입");
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		boardVo.setUserNo(authUser.getNo()); //title,content가 있는 boardVo에 users의 고유 번호 no를 userNo에 넣어줌.
		boardService.write(boardVo);
		return "redirect:/board/list";
	}
	
	@RequestMapping(value="/modifyform")
	public String modifyform(@RequestParam("no") int no, Model model) { //jsp파일로 부터, 값 하나 받아올 때는 requestparam
		System.out.println("modifyform 진입");
		BoardVo boardVo=boardService.getListforModify(no); //no를 입력받아, board변수 전부 출력
		model.addAttribute(boardVo);
		return "board/modify";
	}
	
	@RequestMapping(value="/modify")
	public String modify(@ModelAttribute BoardVo boardVo, HttpSession session, Model model) { //jsp파일로 부터,여러개 값 한번에 받아올 때는
		System.out.println("modify 진입");
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		int userNo=authUser.getNo();
		boardVo.setUserNo(userNo); //글번호, 제목, 내용을 jsp파일로부터 받고, userNo를 세션에서 받음.
		boardService.modify(boardVo);
		return "redirect:/board/list";
	}*/
}
