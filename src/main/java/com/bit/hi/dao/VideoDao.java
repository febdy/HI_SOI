package com.bit.hi.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.VideoVo;

@Repository
public class VideoDao {

	@Autowired
	private SqlSession sqlSession;
	
	public int insertUpload(VideoVo videoVo) {
		return sqlSession.insert("video.insertUpload", videoVo);
	}
}
