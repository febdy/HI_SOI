package com.bit.hi.service.main;

import java.util.List;

import com.bit.hi.domain.vo.PostVo;

public interface MainService {
	public List<PostVo> getPopularVideoForMain() throws Exception;
}
