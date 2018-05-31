package com.bit.hi.util;

import java.io.File;

public class ExtractVideoInfo {
	public static String extractVideoInfo(String directory, String filename) {
		
		String videoFilePath = directory + File.separator + filename;
	    System.out.println("videoFilePath : " + videoFilePath);
	    
	    String duration = "C:\\Program Files\\ffmpeg-3.4.2-win64-static\\bin\\ffprobe -v quiet -print_format compact=print_section=0:nokey=1:escape=csv -show_entries format=duration 'C:\\JavaStudy\\sampleVideo\\bird.mp4'";
	    
	    Runtime run = Runtime.getRuntime();
		try{
	       run.exec("cmd.exe chcp 65001"); //java에서 다른 프로그램을 실행하여, 결과 받아오는 작업
	       run.exec(duration);
	    } catch (Exception e) {
//		   throw new RuntimeException(e);
	       e.printStackTrace();
	    }
		
		return "";
	}

}
