package com.bit.hi.service.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.main.MainDao;
import com.bit.hi.domain.vo.PostVo;

@Service
public class MainService {
	
	@Autowired
	private MainDao mainDao;
	
	public List<PostVo> getPopularVideoForMain() {
		return mainDao.selectPopularVideoForMain();
	}
}
