package com.bit.hi.api.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.service.CommentService;

@Controller
@RequestMapping("/comment")
public class ApiCommentController {
	
	@Autowired
	private CommentService commentService;
	
	@ResponseBody
	@RequestMapping(value="/api/commentlist", method=RequestMethod.POST)
	public List<CommentVo> apiCommentList(@RequestParam("page") int page, @RequestParam("no") int postNo) throws Exception{
		System.out.println("apiCommentList 진입");
		System.out.println(page + "/" + postNo);
		List<CommentVo> commentList=commentService.getCommentList(page, postNo);
		System.out.println(commentList);
		return commentList;
	}
	
	@ResponseBody
	@RequestMapping(value="/api/addcomment", method=RequestMethod.POST)
	public CommentVo apiAddComment(HttpSession session, @RequestBody CommentVo commentVo) throws Exception{
		System.out.println("apiAddComment 진입");
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		commentVo.setUserId(authUser.getUserId());
		commentService.apiAddComment(commentVo);
		System.out.println(commentVo);
		return commentVo;
	}
	
	@ResponseBody
	@RequestMapping(value="/api/getComment")
	public CommentVo apiGetComment(@RequestParam("cmtNo") int cmtNo) throws Exception{
		System.out.println("apiGetComment 진입");
		System.out.println(cmtNo);
		CommentVo cmtVo=commentService.apiGetComment(cmtNo);
		System.out.println(cmtVo);
		return cmtVo;
	}
	
	@ResponseBody
	@RequestMapping(value="/api/deleteComment")
	public int apiDeleteCmt(@RequestBody CommentVo commentVo) throws Exception{
		System.out.println("apiDelete 진입");
		return commentService.apiDeleteComment(commentVo);
	}
	
	@ResponseBody
	@RequestMapping(value="/api/modifyComment")
	public int apiModifyCmt(@RequestBody CommentVo commentVo) throws Exception{
		System.out.println("apiModify 진입");
		System.out.println(commentVo.toString());
		
		return commentService.apiModifyComment(commentVo);
	}
}
