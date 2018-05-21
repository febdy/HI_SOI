package com.bit.hi.util;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.bit.hi.domain.vo.VideoVo;

public class UploadCriteria {
	private String saveDir;
	private String orgName;
	private String exName;
	private String saveName;
	private String videoPath;
	private long videoSize;


	public void upload(VideoVo videoVo, MultipartFile mFile) {
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

		//담아주기
		videoVo.setVideoOriginName(orgName);
		videoVo.setVideoSaveName(saveName);
		videoVo.setVideoExName(exName);
		videoVo.setVideoPath(videoPath);
		videoVo.setVideoSize(videoSize);
		videoVo.setSaveDir(saveDir);

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
	}

	public String getSaveDir() {
		return saveDir;
	}

	public void setSaveDir(String saveDir) {
		this.saveDir = saveDir;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getExName() {
		return exName;
	}

	public void setExName(String exName) {
		this.exName = exName;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public String getVideoPath() {
		return videoPath;
	}

	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}

	public long getVideoSize() {
		return videoSize;
	}

	public void setVideoSize(long videoSize) {
		this.videoSize = videoSize;
	}

	@Override
	public String toString() {
		return "UploadCriteria [saveDir=" + saveDir + ", orgName=" + orgName + ", exName=" + exName + ", saveName="
				+ saveName + ", videoPath=" + videoPath + ", videoSize=" + videoSize + "]";
	}
	
}
