package com.bit.hi.start;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Socket;

import com.bit.hi.domain.vo.VideoVo;

public class SocketTest {

	private Socket s;

	public SocketTest(String host, int port) {

		try {
			s = new Socket(host, port);
			sendInfo(s);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private void sendInfo(Socket s) throws IOException

	{
		OutputStream sender = s.getOutputStream();
		InputStream is = s.getInputStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(is));

		VideoVo videoVo = new VideoVo(1, 1, "user", "videoName", "videoSaveName", "videoExName",
				"videoPath", 1, "videoDate", "videoThumnail", "videoCorrectLine", "videoDelete", "");

		byte[] data = videoVo.toString().getBytes();
		sender.write(data);
		sender.flush();

		s.close();
		sender.close();
		is.close();

	}

	public static void main(String[] args) {
		SocketTest fc = new SocketTest("localhost", 9999);
	}
}
