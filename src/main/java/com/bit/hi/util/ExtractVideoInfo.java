package com.bit.hi.util;

import java.io.File;

public class ExtractVideoInfo {
	public static String extractVideoInfo(String directory, String filename) {
		
		String videoFilePath = directory + File.separator + filename;
	    System.out.println("videoFilePath : " + videoFilePath);
	    
	    /*String durable = "C:\\Program Files\\ffmpeg-3.4.2-win64-static\\bin\\ffprobe.exe "
		+ "-print_format json -show_streams -show_format C:\\JavaStudy\\upload\\1525429025979311632c3-d87e-421d-bcf8-6a0529ca7cea.MP4";
	     */
	    
	    Runtime run = Runtime.getRuntime();
		String duration = "C:\\Program Files\\ffmpeg-3.4.2-win64-static\\bin\\ffprobe.exe -v error -show_entries stream=duration -of default=noprint_wrappers=1 C:\\\\JavaStudy\\\\upload\\\\1525429025979311632c3-d87e-421d-bcf8-6a0529ca7cea.MP4";

		try{
	       run.exec("cmd.exe chcp 65001"); //java에서 다른 프로그램을 실행하여, 결과 받아오는 작업
	       run.exec(duration);
	    } catch (Exception e) {
//		       throw new RuntimeException(e);
	       e.printStackTrace();
	    }
		
		return "";
	}

}
