package com.bit.hi.dao;

import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;

public interface VideoDao {
	
	public int insertUpload(VideoVo videoVo) throws Exception;

	public void mongoSave(MongoVo mongoVo) throws Exception;
	
	public VideoVo selectCorrectedVideo(int videoNo) throws Exception;
}
