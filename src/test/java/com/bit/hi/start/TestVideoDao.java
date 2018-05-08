package com.bit.hi.start;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bit.hi.dao.VideoDao;
import com.bit.hi.domain.vo.VideoVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class TestVideoDao {
	
	@Inject
	private VideoDao videoDao;
	
	@Test
	public void testInsertUpload() throws Exception {
		//#{videoNo}, #{userId}, #{videoOriginName}, #{videoSaveName}, #{videoExName}, #{videoPath}, #{videoSize}, sysdate, 0, '교정선 받기', 0
		VideoVo videoVo = new VideoVo();
		videoVo.setUserId("realso1");
		videoVo.setVideoOriginName("싸이 - 강남스타일");
		videoVo.setVideoSaveName("33570975654756745213.mp4");
		videoVo.setVideoExName(".mp4");
		videoVo.setVideoPath("c:/javastudy/fdsf4SFDFSDF");
		videoVo.setVideoSize(1234243);
		/*videoVo.setVideoDate("2018/05/05");
		videoVo.setVideoCorrectLine("위아래");
		videoVo.setVideoThumnail("12432134657657.jpg");
		videoVo.setVideoDelete("삭제됨");*/
		
		videoDao.insertUpload(videoVo);
	}
	
	@Test
	public void testSelectCorrectedVideo() throws Exception {
		System.out.println(videoDao.selectCorrectedVideo(1));
		
	}
}
