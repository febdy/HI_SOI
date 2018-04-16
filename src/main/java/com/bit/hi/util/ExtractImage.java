package com.bit.hi.util;

import java.io.File;

public class ExtractImage {
	public static String extractImage(String directory, String filename) {
		
		//비디오 파일 경로(db디렉토리와 db에 있는 파일명)
		String videoFilePath = directory + File.separator + filename;
	    System.out.println("videoFilePath : " + videoFilePath);
	    
	    //고유한 파일명(uuid)
	    String[] name = filename.split(".mp4");
	    System.out.println("이름딴거 : "+ name[0]);

	    //썸네일 파일명
	    String imageFilePath = directory + File.separator + name[0] + "_썸네일.png";
	    System.out.println("imageFilePath : " + imageFilePath);

	    Runtime run = Runtime.getRuntime();
	    String command = "C:\\Program Files\\ffmpeg-3.4.2-win64-static\\bin\\ffmpeg.exe -i "
	            + "\"" + videoFilePath + "\" -ss 00:00:10 -vcodec png -vframes 1 -s hd720 " 
	            +"\""+ imageFilePath + "\"";

	    try{
	       run.exec("cmd.exe chcp 65001"); //java에서 다른 프로그램을 실행하여, 결과 받아오는 작업
	       run.exec(command);
	    } catch (Exception e) {
//	       throw new RuntimeException(e);
	       e.printStackTrace();
	    } 
	    return name[0] + "_썸네일.png";
	}
}
