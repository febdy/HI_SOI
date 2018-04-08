package com.bit.hi.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bit.hi.dao.VideoDao;
import com.bit.hi.domain.vo.VideoVo;

@Service
public class VideoService {
	
	@Autowired
	private VideoDao videoDao;
	
	public void upload(MultipartFile file, VideoVo videoVo) {
		System.out.println("service 진입");

		if (!file.isEmpty()) {
			String saveDir = "C:\\javaStudy\\upload"; // 서버에 저장할 공간 만들기(저장 위치)
			
			// 1-파일정보 수집
			// 원래 파일이름
			String orgName = file.getOriginalFilename();
			System.out.println(orgName);

			// 확장자(본래이름에서 잘라내기)
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			System.out.println(exName);

			// 고유한 저장 파일이름(서버에 저장될 이름으로, 유일해야함) - 32글자+확장자
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			System.out.println(saveName);

			// 파일 위치(path)
			String videoPath = saveDir + "\\" + saveName;
			System.out.println(videoPath);

			// 파일 사이즈
			long videoSize = file.getSize();
			System.out.println(videoSize);
			
			//파일 재생시간

			videoVo.setVideoOriginName(orgName);
			videoVo.setVideoSaveName(saveName);
			videoVo.setVideoExName(exName);
			videoVo.setVideoPath(videoPath);
			videoVo.setVideoSize(videoSize);

			// 2-파일 카피
			try {
				byte[] fileData = file.getBytes();
				OutputStream out = new FileOutputStream(saveDir + "/" + saveName); 
				
				BufferedOutputStream bout = new BufferedOutputStream(out);
				
				bout.write(fileData);

				if (bout != null) {
					bout.close();
				}

			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println(videoVo.toString());
		videoDao.insertUpload(videoVo);
	}
	
}
