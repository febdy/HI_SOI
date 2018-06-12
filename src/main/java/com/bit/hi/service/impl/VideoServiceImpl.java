package com.bit.hi.service.impl;

import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bit.hi.dao.VideoDao;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;
import com.bit.hi.service.VideoService;
import com.bit.hi.util.ExtractImage;
import com.bit.hi.util.UploadCriteria;

@Service
public class VideoServiceImpl implements VideoService {

	@Autowired
	private VideoDao videoDao;
	
	@Transactional
	@Override
	public int upload(MultipartHttpServletRequest file, VideoVo videoVo) throws Exception{
		System.out.println("service 진입");
		
		Iterator<String> files=file.getFileNames();
		
		String uploadFile=files.next();
		
		MultipartFile mFile=file.getFile(uploadFile);

		if (!mFile.isEmpty()) {
			//영상 정보 추출
			UploadCriteria upCri=new UploadCriteria();
			upCri.upload(videoVo, mFile);

			//썸네일 생성
			String videoThumnail=ExtractImage.extractImage(videoVo.getSaveDir(), videoVo.getVideoSaveName());
			System.out.println(videoThumnail);
			videoVo.setVideoThumnail(videoThumnail);
			
			//영상, 썸네일 저장
			videoDao.insertUpload(videoVo);
			
			MongoVo mongoVo=new MongoVo();
			mongoVo.setVideoNo(String.valueOf(videoVo.getVideoNo())); //문자형으로 바꿔서 저장(불러올 때 key값으로 사용하기 위해)
			mongoVo.setUserId(videoVo.getUserId());
			mongoVo.setVideoOriginName(videoVo.getVideoOriginName());
			mongoVo.setVideoPath(videoVo.getVideoPath());
			mongoVo.setVideoSize(videoVo.getVideoSize());
			mongoVo.setVideoSaveName(videoVo.getVideoSaveName());
			mongoVo.setVideoThumnail(videoVo.getVideoThumnail());
			mongoVo.setVideoDelete(0);
			
			//MongoDB 저장
			videoDao.mongoSave(mongoVo);
			System.out.println("saved videoNo:::::: " + videoVo.getVideoNo());
			
			return videoVo.getVideoNo();
		}
		return 0;
	}
	
	@Override
	public MongoVo getCorrectedVideo(int videoNo) throws Exception{
		return videoDao.findMongoData("videoNo", String.valueOf(videoNo));
	}
	
}
