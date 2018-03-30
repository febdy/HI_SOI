package com.bit.hi.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.CsDao;
import com.bit.hi.domain.vo.CsVo;

@Service
public class CsService {
	
	@Autowired
	private CsDao csDao;

	public void csWrite(CsVo csVo) {
		csDao.csWrite(csVo);
		
	}
	
}
