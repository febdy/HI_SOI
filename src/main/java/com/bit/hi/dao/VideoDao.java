package com.bit.hi.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;

@Repository
public class VideoDao {

	private static final String namespace="com.bit.hi.VideoMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	public int insertUpload(VideoVo videoVo) {
		return sqlSession.insert(namespace+".insertUpload", videoVo);
	}
	
	public int updateThumnail(String saveName, String videoThumnail) {
		VideoVo videoVo=new VideoVo();
		videoVo.setVideoSaveName(saveName);
		videoVo.setVideoThumnail(videoThumnail);
		return sqlSession.update(namespace+".updateThumnail", videoVo);
	}
	
	public void mongoSave(MongoVo mongoVo) {
		mongoTemplate.save(mongoVo, "video_info");
	}
	
	public VideoVo selectCorrectedVideo(int videoNo) {
		return sqlSession.selectOne(namespace+".selectCorrectedVideo", videoNo);
	}
}
