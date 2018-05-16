package com.bit.hi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bit.hi.dao.PostDao;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.service.PostService;
import com.bit.hi.util.ArrayCriteria;
import com.bit.hi.util.PageCriteria;

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
	
	//소이팩토리 리스트 뿌려주기
	@Override
	public List<PostVo> getAllPostList(PageCriteria pCri, String kwd, ArrayCriteria arrCri) throws Exception{
		return postDao.selectAllPostList(pCri.getStartPage(), pCri.getEndPage(), kwd, arrCri);
	}
	
	//소이리스트 갯수 세기
	public int selectTotalCount(PageCriteria pCri, String kwd) throws Exception{
		return postDao.selectTotalCount(pCri, kwd);
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
	/*@Override
	public List<PostVo> getArray(PageCriteria pCri, ArrayCriteria arrCri) throws Exception{

		return postDao.selectListForArray(pCri.getStartPage(), pCri.getEndPage(), arrCri);

		
	}
	
	@Override
	public int selectTotalCountForArray(PageCriteria pCri, String kwd) throws Exception {
		return postDao.selectTotalCountForArray(pCri, kwd);
	}*/
	
	@Override
	public PostVo getEachPostForModify(int postNo) throws Exception{
		return postDao.selectEachPostForModify(postNo);
	}
	
	@Override
	public int updateEachPostForModify(PostVo postVo) throws Exception{
		return postDao.updateEachPostForModify(postVo);
	}
}
