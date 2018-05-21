package com.bit.hi.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.bit.hi.dao.VideoDao;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;

@Repository
public class VideoDaoImpl implements VideoDao {

	private static final String namespace="com.bit.hi.VideoMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	@Override
	public int insertUpload(VideoVo videoVo) throws Exception {
		return sqlSession.insert(namespace+"insertUpload", videoVo);
	}
	
	@Override
	public void mongoSave(MongoVo mongoVo) throws Exception {
		mongoTemplate.save(mongoVo, "video_info");
	}
	
	@Override
	public MongoVo findMongoData(String key, String value) throws Exception {
		Criteria criteria=new Criteria(key);
		criteria.is(value);
		
		//쿼리 객체 작성
		Query query=new Query(criteria);

		MongoVo vo=mongoTemplate.findOne(query, MongoVo.class);
		
		return vo;
	}
	
	//@Override
	//public VideoVo selectCorrectedVideo(int videoNo) throws Exception {
	//	return sqlSession.selectOne(namespace+"selectCorrectedVideo", videoNo);
	//}
}
