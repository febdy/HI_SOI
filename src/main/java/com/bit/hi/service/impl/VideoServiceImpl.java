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
			UploadCriteria upCri=new UploadCriteria();
			upCri.upload(videoVo, mFile);
			
			System.out.println(upCri.toString());
			
			//썸네일 값 추출되면 videoVo에 담아서, insertupload로 서버에 저장
			
			System.out.println(upCri.toString());
			System.out.println(videoVo.toString());
			
			//영상 저장
			
			//썸네일 생성
			String videoThumnail=ExtractImage.extractImage(videoVo.getSaveDir(), videoVo.getVideoSaveName());
			System.out.println(videoThumnail);
			videoVo.setVideoThumnail(videoThumnail);
			
			videoDao.insertUpload(videoVo);
			
			//변수에 썸네일 추가
			//videoDao.updateThumnail(videoVo.getVideoSaveName(), videoThumnail);
			
			MongoVo mongoVo=new MongoVo();
			mongoVo.setVideoOriginName(videoVo.getVideoOriginName());
			mongoVo.setVideoPath(videoVo.getVideoPath());
			mongoVo.setVideoSize(videoVo.getVideoSize());
			
			//MongoDB 저장
			videoDao.mongoSave(mongoVo);
			
			System.out.println(videoVo.getVideoNo());
			return videoVo.getVideoNo();
		}
		
		return 0;
	}
	
	@Override
	public VideoVo getCorrectedVideo(int videoNo) throws Exception{
		return videoDao.selectCorrectedVideo(videoNo);
	}
}
