package com.bit.hi.service.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.main.MainDao;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.service.main.MainService;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDao mainDao;
	
	@Override
	public List<PostVo> getPopularVideoForMain() throws Exception {
		return mainDao.selectPopularVideoForMain();
	}
}
