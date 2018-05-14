package com.bit.hi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.MypageDao;
import com.bit.hi.dao.UserDao;
import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.service.MypageService;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDao mypageDao;
	
	@Autowired
	private UserDao userDao;
	
	//내가 업로드 한 리스트(영상관리)
	@Override
	public Map<String, Object> clipGetList(String userId, Integer crtPage) throws Exception{
		// 페이지 뿌려주기 관련 작업
		int listCnt = 8; // 1페이지 당 표시할 게시글 수
		// int crtPage=1; //현재 페이지(1보다 큰 값이여야 함), 기준이 1페이지
		int startRnum = (crtPage - 1) * listCnt; // 0, 10, 20 순으로 올라갈 것임, 이 식은 구해야함.
		int endRnum = startRnum + listCnt; // 10, 20, 30 순으로 올라감

		crtPage = (crtPage < 0) ? crtPage = 1 : crtPage; // crtPage가 0보다 작을 때, 처리해주기.

		System.out.println("startRnum: " + startRnum);
		System.out.println("endRnum: " + endRnum);

		List<VideoVo> myVideoList = mypageDao.selectMyVideoList(userId, startRnum, endRnum);
		// 페이지 하단 숫자버튼 관련 작업
		// 전체 글 갯수
		int totalCount = mypageDao.selectTotalCountForMyVideo(userId);
		System.out.println("totalCount :" + totalCount);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;
		int endPageBtnNo = (int) (Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount); // endPageBtnNo부터 구하는게 더
																										// 편함.
		// ceil은 올림 메소드
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// prev,next는 보여줄 것인지 말 것인지를 결정하는 변수
		boolean next = false;
		if (endPageBtnNo * listCnt < totalCount) { // 전체 글 개수보다 작으면 다음버튼이 보이게 하기
			next = true;
		} else {
			endPageBtnNo = (int) (Math.ceil(totalCount / (double) listCnt)); // 마지막 페이지 계산
		}

		boolean prev = false;
		if (startPageBtnNo != 1) {// startPageBtnNo가 1이 아니면 무조건 보여야 함.
			prev = true;
		}

		Map<String, Object> myVideoMap = new HashMap<String, Object>();
		myVideoMap.put("myVideoList", myVideoList);
		myVideoMap.put("prev", prev);
		myVideoMap.put("startPageBtnNo", startPageBtnNo);
		myVideoMap.put("endPageBtnNo", endPageBtnNo);
		myVideoMap.put("next", next);
		myVideoMap.put("crtPage", crtPage);

		return myVideoMap;
	}
	
	//마이페이지(댓글)
	@Override
	public Map<String, Object> getCollectCommentList(String userId, Integer crtPage) throws Exception{
		// 페이지 뿌려주기 관련 작업
		int listCnt = 8; // 1페이지 당 표시할 게시글 수
		// int crtPage=1; //현재 페이지(1보다 큰 값이여야 함), 기준이 1페이지
		int startRnum = (crtPage - 1) * listCnt; // 0, 10, 20 순으로 올라갈 것임, 이 식은 구해야함.
		int endRnum = startRnum + listCnt; // 10, 20, 30 순으로 올라감

		crtPage = (crtPage < 0) ? crtPage = 1 : crtPage; // crtPage가 0보다 작을 때, 처리해주기.

		System.out.println("startRnum: " + startRnum);
		System.out.println("endRnum: " + endRnum);

		List<CommentVo> commentList = mypageDao.selectCollectCommentList(userId, startRnum, endRnum);
		// 페이지 하단 숫자버튼 관련 작업
		// 전체 글 갯수
		int totalCount = mypageDao.selectTotalCountForComment(userId);
		System.out.println("totalCount :" + totalCount);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;
		int endPageBtnNo = (int) (Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount); // endPageBtnNo부터 구하는게 더
																										// 편함.
		// ceil은 올림 메소드
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// prev,next는 보여줄 것인지 말 것인지를 결정하는 변수
		boolean next = false;
		if (endPageBtnNo * listCnt < totalCount) { // 전체 글 개수보다 작으면 다음버튼이 보이게 하기
			next = true;
		} else {
			endPageBtnNo = (int) (Math.ceil(totalCount / (double) listCnt)); // 마지막 페이지 계산
		}

		boolean prev = false;
		if (startPageBtnNo != 1) {// startPageBtnNo가 1이 아니면 무조건 보여야 함.
			prev = true;
		}

		Map<String, Object> commentMap = new HashMap<String, Object>();
		commentMap.put("commentList", commentList);
		commentMap.put("prev", prev);
		commentMap.put("startPageBtnNo", startPageBtnNo);
		commentMap.put("endPageBtnNo", endPageBtnNo);
		commentMap.put("next", next);
		commentMap.put("crtPage", crtPage);

		return commentMap;
	}
	
	//마이페이지(영상)
	@Override
	public Map<String, Object> getCollectVideoList(String userId, Integer crtPage) throws Exception{
		// 페이지 뿌려주기 관련 작업
		int listCnt = 9; // 1페이지 당 표시할 게시글 수
		// int crtPage=1; //현재 페이지(1보다 큰 값이여야 함), 기준이 1페이지
		int startRnum = (crtPage - 1) * listCnt; // 0, 10, 20 순으로 올라갈 것임, 이 식은 구해야함.
		int endRnum = startRnum + listCnt; // 10, 20, 30 순으로 올라감

		crtPage = (crtPage < 0) ? crtPage = 1 : crtPage; // crtPage가 0보다 작을 때, 처리해주기.

		System.out.println("startRnum: " + startRnum);
		System.out.println("endRnum: " + endRnum);

		List<PostVo> postList = mypageDao.selectCollectVideoList(userId, startRnum, endRnum);
		// 페이지 하단 숫자버튼 관련 작업
		// 전체 글 갯수
		int totalCount = mypageDao.selectTotalCountForVideo(userId);
		System.out.println("totalCount :" + totalCount);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;
		int endPageBtnNo = (int) (Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount); // endPageBtnNo부터 구하는게 더
																												// 편함.
		// ceil은 올림 메소드
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// prev,next는 보여줄 것인지 말 것인지를 결정하는 변수
		boolean next = false;
		if (endPageBtnNo * listCnt < totalCount) { // 전체 글 개수보다 작으면 다음버튼이 보이게 하기
			next = true;
		} else {
			endPageBtnNo = (int) (Math.ceil(totalCount / (double) listCnt)); // 마지막 페이지 계산
		}

		boolean prev = false;
		if (startPageBtnNo != 1) {// startPageBtnNo가 1이 아니면 무조건 보여야 함.
			prev = true;
		}

		Map<String, Object> videoMap = new HashMap<String, Object>();
		videoMap.put("postList", postList);
		videoMap.put("prev", prev);
		videoMap.put("startPageBtnNo", startPageBtnNo);
		videoMap.put("endPageBtnNo", endPageBtnNo);
		videoMap.put("next", next);
		videoMap.put("crtPage", crtPage);

		return videoMap;
	}
	
	//마이페이지(스크랩)
	@Override
	public Map<String, Object> getCollectScrapList(String userId, Integer crtPage) throws Exception{
		// 페이지 뿌려주기 관련 작업
		int listCnt = 12; // 1페이지 당 표시할 게시글 수
		// int crtPage=1; //현재 페이지(1보다 큰 값이여야 함), 기준이 1페이지
		int startRnum = (crtPage - 1) * listCnt; // 0, 10, 20 순으로 올라갈 것임, 이 식은 구해야함.
		int endRnum = startRnum + listCnt; // 10, 20, 30 순으로 올라감

		crtPage = (crtPage < 0) ? crtPage = 1 : crtPage; // crtPage가 0보다 작을 때, 처리해주기.

		System.out.println("startRnum: " + startRnum);
		System.out.println("endRnum: " + endRnum);

		List<ScrapVo> scrapList = mypageDao.selectCollectScrapList(userId, startRnum, endRnum);
		// 페이지 하단 숫자버튼 관련 작업
		// 전체 글 갯수
		int totalCount = mypageDao.selectTotalCountForScrap(userId);
		System.out.println("totalCount :" + totalCount);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;
		int endPageBtnNo = (int) (Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount); // endPageBtnNo부터 구하는게 더
																														// 편함.
		// ceil은 올림 메소드
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// prev,next는 보여줄 것인지 말 것인지를 결정하는 변수
		boolean next = false;
		if (endPageBtnNo * listCnt < totalCount) { // 전체 글 개수보다 작으면 다음버튼이 보이게 하기
			next = true;
		} else {
			endPageBtnNo = (int) (Math.ceil(totalCount / (double) listCnt)); // 마지막 페이지 계산
		}

		boolean prev = false;
		if (startPageBtnNo != 1) {// startPageBtnNo가 1이 아니면 무조건 보여야 함.
			prev = true;
		}

		Map<String, Object> scrapMap = new HashMap<String, Object>();
		scrapMap.put("scrapList", scrapList);
		scrapMap.put("prev", prev);
		scrapMap.put("startPageBtnNo", startPageBtnNo);
		scrapMap.put("endPageBtnNo", endPageBtnNo);
		scrapMap.put("next", next);
		scrapMap.put("crtPage", crtPage);

		return scrapMap;
	}
	
	//회원정보수정 userId로 회원 정보 가져오기
	@Override
	public UserVo getUserInfo(String userId) throws Exception{
		return userDao.selectUserForId(userId);
	}
	
	//회원정보 수정 nickname 체크
	@Override
	public boolean nickChkForModify(UserVo userVo) throws Exception{
		boolean result;
		UserVo userResult = new UserVo();
		userResult = mypageDao.selectNickChkForModify(userVo);
		System.out.println(userResult);
		if (userResult != null) {
			result = false;
		} else {
			result = true;
		}
		return result;
	}
	
	@Override
	public int modifyComplete(UserVo userVo, HttpSession session) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		if(userDao.selectUserForNick(userVo.getUserNickname())==null || authUser.getUserNickname().equals(userVo.getUserNickname())) { //기존에 등록된 nick인지 체크, 내가 사용하고 있던 nick은 가능
			if (Pattern.matches("^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$", userVo.getUserPwd())) {
				if (Pattern.matches("^[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*\\.[a-zA-Z]{2,3}$", userVo.getUserEmail())) {
					if (Pattern.matches("^\\d{3}-\\d{3,4}-\\d{4}$", userVo.getUserTel())) { //참이면 수행
						if (userVo.getUserAddr() != "") {
							return mypageDao.updateInfo(userVo);
						} else return 0;
					} else return 0;
				} else return 0;
			} else return 0;
		} else return 0;
	}
	
	//영상관리 삭제(videoDelete 값이 1이면 사용자가 삭제한 영상임)
	@Override
	public int updateVideo(int videoNo) throws Exception{
		return mypageDao.updateVideo(videoNo);
	}
	
	//영상관리 세부내용
	@Override
	public VideoVo getEachVideoAnalyze(int videoNo) throws Exception{
		return mypageDao.selectEachVideoAnalyze(videoNo);
	}
}
