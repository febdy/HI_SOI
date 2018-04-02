package com.bit.hi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.MypageDao;
import com.bit.hi.domain.vo.VideoVo;

@Service
public class MypageService {
	
	@Autowired
	private MypageDao mypageDao;
	
	public List<VideoVo> clipGetList(String userId) {
		return mypageDao.selectMyVideoList(userId);
	}
}
