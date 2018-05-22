package com.bit.hi.dao;

import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;

public interface VideoDao {
	
	public int insertUpload(VideoVo videoVo) throws Exception;

	//mongoDB에 영상에 대한 정보 저장(임시) - 실제로는 플라스크에 값을 넣을 것임.
	public void mongoSave(MongoVo mongoVo) throws Exception;
	
	//videoNo로 구별해서 mongoDB에서 진단 영상 가져오기
	public MongoVo findMongoData(String key, String value) throws Exception;
	
	//public VideoVo selectCorrectedVideo(int videoNo) throws Exception;
}
