package com.bit.hi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bit.hi.dao.PostDao;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.service.PostService;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	private PostDao postDao;
	
	@Override
	public List<VideoVo> getMyVideoList(String userId) throws Exception{
		return postDao.selectMyVideoList(userId);
	}
	
	@Override
	public VideoVo getVideoInfo(int videoNo) throws Exception{
		return postDao.selectVideoInfo(videoNo);
	}
	
	@Override
	public int writePost(PostVo postVo) throws Exception{
		/*for(int i=1;i<100;i++) {
			postVo.setPostTitle(i+" 번째 영상입니다.");
			postDao.insertWritePost(postVo);
		}*/
		return postDao.insertWritePost(postVo);
	}
	
	@Override
	public Map<String, Object> getAllPostList(Integer crtPage, String kwd) throws Exception{
		// 페이지 뿌려주기 관련 작업
		int listCnt = 12; // 1페이지 당 표시할 게시글 수
		// int crtPage=1; //현재 페이지(1보다 큰 값이여야 함), 기준이 1페이지
		int startRnum = (crtPage - 1) * listCnt; // 0, 10, 20 순으로 올라갈 것임, 이 식은 구해야함.
		int endRnum = startRnum + listCnt; // 10, 20, 30 순으로 올라감

		crtPage = (crtPage < 0) ? crtPage = 1 : crtPage; // crtPage가 0보다 작을 때, 처리해주기.

		System.out.println("startRnum: " + startRnum);
		System.out.println("endRnum: " + endRnum);
				
		List<PostVo> postList = postDao.selectAllPostList(startRnum, endRnum, kwd);
		// 페이지 하단 숫자버튼 관련 작업
		// 전체 글 갯수
		int totalCount = postDao.selectTotalCount(kwd);
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

		Map<String, Object> bMap = new HashMap<String, Object>();
		bMap.put("postList", postList);
		bMap.put("prev", prev);
		bMap.put("startPageBtnNo", startPageBtnNo);
		bMap.put("endPageBtnNo", endPageBtnNo);
		bMap.put("next", next);
		bMap.put("crtPage", crtPage);

		return bMap;
	}
	
	@Transactional
	@Override
	public PostVo getEachPost(int postNo) throws Exception{
		postDao.postUpdateHit(postNo);
		return postDao.selectEachPost(postNo);
	}
	
	@Override
	public int updateLike(int postNo) throws Exception{
		return postDao.updateLike(postNo);
	}
	
	@Override
	public int deletePost(int postNo) throws Exception{
		return postDao.deletePost(postNo);
	}
	
	@Override
	public int addScrapPost(int postNo, String userId) throws Exception{
		ScrapVo scrapVo=new ScrapVo();
		scrapVo.setPostNo(postNo);
		scrapVo.setUserId(userId);
		return postDao.insertScrapPost(scrapVo);
	}
	
	//소이팩토리 정렬
	@Override
	public Map<String, Object> getArray(Integer crtPage, String soi, String view, String comment, String latest) throws Exception{
		// 페이지 뿌려주기 관련 작업
		int listCnt = 12; // 1페이지 당 표시할 게시글 수
		// int crtPage=1; //현재 페이지(1보다 큰 값이여야 함), 기준이 1페이지
		int startRnum = (crtPage - 1) * listCnt; // 0, 10, 20 순으로 올라갈 것임, 이 식은 구해야함.
		int endRnum = startRnum + listCnt; // 10, 20, 30 순으로 올라감

		crtPage = (crtPage < 0) ? crtPage = 1 : crtPage; // crtPage가 0보다 작을 때, 처리해주기.

		System.out.println("startRnum: " + startRnum);
		System.out.println("endRnum: " + endRnum);
		
		
		List<PostVo> postList = postDao.selectListForArray(startRnum, endRnum, soi, view, comment, latest);

		// 페이지 하단 숫자버튼 관련 작업
		// 전체 글 갯수
		int totalCount = postDao.selectTotalCountForArray();
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

		Map<String, Object> bMap = new HashMap<String, Object>();
		bMap.put("postList", postList);
		bMap.put("prev", prev);
		bMap.put("startPageBtnNo", startPageBtnNo);
		bMap.put("endPageBtnNo", endPageBtnNo);
		bMap.put("next", next);
		bMap.put("crtPage", crtPage);

		return bMap;
	}
	
	@Override
	public PostVo getEachPostForModify(int postNo) throws Exception{
		return postDao.selectEachPostForModify(postNo);
	}
	
	@Override
	public int updateEachPostForModify(PostVo postVo) throws Exception{
		return postDao.updateEachPostForModify(postVo);
	}
}
