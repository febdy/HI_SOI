package com.bit.hi.service.impl;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.UUID;

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
			String saveDir = "C:\\javaStudy\\upload"; // 서버에 저장할 공간 만들기(저장 위치)
			
			// 1-파일정보 수집
			// 원래 파일이름
			String orgName = mFile.getOriginalFilename();
			System.out.println(orgName);

			// 확장자(본래이름에서 잘라내기)
			String exName = mFile.getOriginalFilename().substring(mFile.getOriginalFilename().lastIndexOf("."));
			System.out.println(exName);

			// 고유한 저장 파일이름(서버에 저장될 이름으로, 유일해야함) - 32글자+확장자
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			System.out.println(saveName);

			// 파일 위치(path)
			String videoPath = saveDir + "\\" + saveName;
			System.out.println(videoPath);

			// 파일 사이즈
			long videoSize = mFile.getSize();
			System.out.println(videoSize);
			
			//파일 재생시간
			
					
			//썸네일 값 추출되면 videoVo에 담아서, insertupload로 서버에 저장
			videoVo.setVideoOriginName(orgName);
			videoVo.setVideoSaveName(saveName);
			videoVo.setVideoExName(exName);
			videoVo.setVideoPath(videoPath);
			videoVo.setVideoSize(videoSize);

			// 2-파일 카피
			try {
				byte[] fileData = mFile.getBytes();
				OutputStream out = new FileOutputStream(saveDir + "/" + saveName); 
				
				BufferedOutputStream bout = new BufferedOutputStream(out);
				
				bout.write(fileData);

				if (bout != null) {
					bout.close();
				}

			} catch (IOException e) {
				e.printStackTrace();
			}
			System.out.println(videoVo.toString());
			
			//영상 저장
			videoDao.insertUpload(videoVo);
			
			//썸네일 생성
			String videoThumnail=ExtractImage.extractImage(saveDir, saveName);
			System.out.println(videoThumnail);
			//변수에 썸네일 추가
			videoDao.updateThumnail(saveName, videoThumnail);
			
			//받아온 비디오 정보 몽고db에 넣기
			MongoVo mongoVo=new MongoVo();
			mongoVo.setVideoOriginName(orgName);
			mongoVo.setVideoPath(videoPath);
			mongoVo.setVideoSize(videoSize);
			
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
