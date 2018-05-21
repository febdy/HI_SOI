package com.bit.hi.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Socket;

import com.bit.hi.domain.vo.VideoVo;

public class SocketConnection {

	private Socket s;

	public SocketConnection() {

	}

	public SocketConnection(String host, int port) {

		try {
			s = new Socket(host, port);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void sendInfo(VideoVo videoVo) throws IOException {
		OutputStream sender = s.getOutputStream();
		InputStream is = s.getInputStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(is));

		byte[] data = videoVo.toString().getBytes();
		sender.write(data);
		sender.flush();

		s.close();
		sender.close();
		is.close();
	}

}
