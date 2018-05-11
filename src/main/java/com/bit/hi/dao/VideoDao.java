package com.bit.hi.dao;

import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;

public interface VideoDao {
	
	public int insertUpload(VideoVo videoVo);
	
	public int updateThumnail(String saveName, String videoThumnail);
	
	public void mongoSave(MongoVo mongoVo);
	
	public VideoVo selectCorrectedVideo(int videoNo);
}
