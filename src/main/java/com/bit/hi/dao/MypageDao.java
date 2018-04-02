package com.bit.hi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.VideoVo;

@Repository
public class MypageDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<VideoVo> selectMyVideoList(String userId) {
		return sqlSession.selectList("video.selectMyVideo", userId);
	}
}
