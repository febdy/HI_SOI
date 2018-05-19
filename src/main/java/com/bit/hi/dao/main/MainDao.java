package com.bit.hi.dao.main;

import java.util.List;

import com.bit.hi.domain.vo.PostVo;

public interface MainDao {
	public List<PostVo> selectPopularVideoForMain() throws Exception;
}
