package com.bit.hi.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.hi.dao.MypageDao;
import com.bit.hi.dao.UserDao;
import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;
import com.bit.hi.service.MypageService;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDao mypageDao;
	
	@Autowired
	private UserDao userDao;
	
	//내가 업로드 한 리스트(영상관리)
	@Override
	public Map<String, Object> clipGetList(String userId) throws Exception{
		// 페이지 뿌려주기 관련 작업
		

		List<VideoVo> myVideoList = mypageDao.selectMyVideoList(userId);
		List<Integer> list1=mypageDao.selectVideoScore(userId, 0);
		for (int i=0; i<myVideoList.size(); i++) {
			myVideoList.get(i).setTotal_grade(list1.get(i));
		}
		

		Map<String, Object> myVideoMap = new HashMap<String, Object>();
		myVideoMap.put("myVideoList", myVideoList);
		

		return myVideoMap;
	}
	
	//마이페이지(댓글)
	@Override
	public Map<String, Object> getCollectCommentList(String userId, Integer crtPage) throws Exception{
		// 페이지 뿌려주기 관련 작업
		int listCnt = 8; // 1페이지 당 표시할 게시글 수
		// int crtPage=1; //현재 페이지(1보다 큰 값이여야 함), 기준이 1페이지
		int startRnum = (crtPage - 1) * listCnt; // 0, 10, 20 순으로 올라갈 것임, 이 식은 구해야함.
		int endRnum = startRnum + listCnt; // 10, 20, 30 순으로 올라감

		crtPage = (crtPage < 0) ? crtPage = 1 : crtPage; // crtPage가 0보다 작을 때, 처리해주기.

		System.out.println("startRnum: " + startRnum);
		System.out.println("endRnum: " + endRnum);

		List<CommentVo> commentList = mypageDao.selectCollectCommentList(userId, startRnum, endRnum);
		// 페이지 하단 숫자버튼 관련 작업
		// 전체 글 갯수
		int totalCount = mypageDao.selectTotalCountForComment(userId);
		System.out.println("totalCount :" + totalCount);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;
		int endPageBtnNo = (int) (Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount); // endPageBtnNo부터 구하는게 더
																										// 편함.
		// ceil은 올림 메소드
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// prev,next는 보여줄 것인지 말 것인지를 결정하는 변수
		boolean next = false;
		if (endPageBtnNo * listCnt < totalCount) { // 전체 글 개수보다 작으면 다음버튼이 보이게 하기
			next = true;
		} else {
			endPageBtnNo = (int) (Math.ceil(totalCount / (double) listCnt)); // 마지막 페이지 계산
		}

		boolean prev = false;
		if (startPageBtnNo != 1) {// startPageBtnNo가 1이 아니면 무조건 보여야 함.
			prev = true;
		}

		Map<String, Object> commentMap = new HashMap<String, Object>();
		commentMap.put("commentList", commentList);
		commentMap.put("prev", prev);
		commentMap.put("startPageBtnNo", startPageBtnNo);
		commentMap.put("endPageBtnNo", endPageBtnNo);
		commentMap.put("next", next);
		commentMap.put("crtPage", crtPage);

		return commentMap;
	}
	
	//마이페이지(영상)
	@Override
	public Map<String, Object> getCollectVideoList(String userId, Integer crtPage) throws Exception{
		// 페이지 뿌려주기 관련 작업
		int listCnt = 9; // 1페이지 당 표시할 게시글 수
		// int crtPage=1; //현재 페이지(1보다 큰 값이여야 함), 기준이 1페이지
		int startRnum = (crtPage - 1) * listCnt; // 0, 10, 20 순으로 올라갈 것임, 이 식은 구해야함.
		int endRnum = startRnum + listCnt; // 10, 20, 30 순으로 올라감

		crtPage = (crtPage < 0) ? crtPage = 1 : crtPage; // crtPage가 0보다 작을 때, 처리해주기.

		System.out.println("startRnum: " + startRnum);
		System.out.println("endRnum: " + endRnum);

		List<PostVo> postList = mypageDao.selectCollectVideoList(userId, startRnum, endRnum);
		// 페이지 하단 숫자버튼 관련 작업
		// 전체 글 갯수
		int totalCount = mypageDao.selectTotalCountForVideo(userId);
		System.out.println("totalCount :" + totalCount);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;
		int endPageBtnNo = (int) (Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount); // endPageBtnNo부터 구하는게 더
																												// 편함.
		// ceil은 올림 메소드
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// prev,next는 보여줄 것인지 말 것인지를 결정하는 변수
		boolean next = false;
		if (endPageBtnNo * listCnt < totalCount) { // 전체 글 개수보다 작으면 다음버튼이 보이게 하기
			next = true;
		} else {
			endPageBtnNo = (int) (Math.ceil(totalCount / (double) listCnt)); // 마지막 페이지 계산
		}

		boolean prev = false;
		if (startPageBtnNo != 1) {// startPageBtnNo가 1이 아니면 무조건 보여야 함.
			prev = true;
		}

		Map<String, Object> videoMap = new HashMap<String, Object>();
		videoMap.put("postList", postList);
		videoMap.put("prev", prev);
		videoMap.put("startPageBtnNo", startPageBtnNo);
		videoMap.put("endPageBtnNo", endPageBtnNo);
		videoMap.put("next", next);
		videoMap.put("crtPage", crtPage);

		return videoMap;
	}
	
	//마이페이지(스크랩)
	@Override
	public Map<String, Object> getCollectScrapList(String userId, Integer crtPage) throws Exception{
		// 페이지 뿌려주기 관련 작업
		int listCnt = 12; // 1페이지 당 표시할 게시글 수
		// int crtPage=1; //현재 페이지(1보다 큰 값이여야 함), 기준이 1페이지
		int startRnum = (crtPage - 1) * listCnt; // 0, 10, 20 순으로 올라갈 것임, 이 식은 구해야함.
		int endRnum = startRnum + listCnt; // 10, 20, 30 순으로 올라감

		crtPage = (crtPage < 0) ? crtPage = 1 : crtPage; // crtPage가 0보다 작을 때, 처리해주기.

		System.out.println("startRnum: " + startRnum);
		System.out.println("endRnum: " + endRnum);

		List<ScrapVo> scrapList = mypageDao.selectCollectScrapList(userId, startRnum, endRnum);
		// 페이지 하단 숫자버튼 관련 작업
		// 전체 글 갯수
		int totalCount = mypageDao.selectTotalCountForScrap(userId);
		System.out.println("totalCount :" + totalCount);

		// 페이지당 버튼 갯수
		int pageBtnCount = 5;
		int endPageBtnNo = (int) (Math.ceil(crtPage / (double) pageBtnCount) * pageBtnCount); // endPageBtnNo부터 구하는게 더
																														// 편함.
		// ceil은 올림 메소드
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

		// prev,next는 보여줄 것인지 말 것인지를 결정하는 변수
		boolean next = false;
		if (endPageBtnNo * listCnt < totalCount) { // 전체 글 개수보다 작으면 다음버튼이 보이게 하기
			next = true;
		} else {
			endPageBtnNo = (int) (Math.ceil(totalCount / (double) listCnt)); // 마지막 페이지 계산
		}

		boolean prev = false;
		if (startPageBtnNo != 1) {// startPageBtnNo가 1이 아니면 무조건 보여야 함.
			prev = true;
		}

		Map<String, Object> scrapMap = new HashMap<String, Object>();
		scrapMap.put("scrapList", scrapList);
		scrapMap.put("prev", prev);
		scrapMap.put("startPageBtnNo", startPageBtnNo);
		scrapMap.put("endPageBtnNo", endPageBtnNo);
		scrapMap.put("next", next);
		scrapMap.put("crtPage", crtPage);

		return scrapMap;
	}
	
	//회원정보수정 userId로 회원 정보 가져오기
	@Override
	public UserVo getUserInfo(String userId) throws Exception{
		return userDao.selectUserForId(userId);
	}
	
	//회원정보 수정 nickname 체크
	@Override
	public boolean nickChkForModify(UserVo userVo) throws Exception{
		boolean result;
		UserVo userResult = new UserVo();
		userResult = mypageDao.selectNickChkForModify(userVo);
		System.out.println(userResult);
		if (userResult != null) {
			result = false;
		} else {
			result = true;
		}
		return result;
	}
	
	@Override
	public int modifyComplete(UserVo userVo, HttpSession session) throws Exception{
		UserVo authUser=(UserVo)session.getAttribute("authUser");
		if((userDao.selectUserForNick(userVo.getUserNickname())==null || authUser.getUserNickname().equals(userVo.getUserNickname())) & Pattern.matches("^[가-힣a-zA-Z0-9]{6,15}$", userVo.getUserNickname())) { //기존에 등록된 nick인지 체크, 내가 사용하고 있던 nick은 가능
			if (Pattern.matches("^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$", userVo.getUserPwd())) {
				if (Pattern.matches("^[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*\\.[a-zA-Z]{2,3}$", userVo.getUserEmail())) {
					if (Pattern.matches("^\\d{3}-\\d{3,4}-\\d{4}$", userVo.getUserTel())) { //참이면 수행
						if (userVo.getUserAddr() != "") {
							return mypageDao.updateInfo(userVo);
						} else return 0;
					} else return 0;
				} else return 0;
			} else return 0;
		} else return 0;
	}
	
	//영상관리 삭제(videoDelete 값이 1이면 사용자가 삭제한 영상임)
	@Override
	public int updateVideo(int videoNo) throws Exception{
		mypageDao.updateMongoVideo("videoNo", String.valueOf(videoNo));
		return mypageDao.updateVideo(videoNo);
	}
	
	//영상관리 세부내용
	@Override
	public VideoVo getEachVideoAnalyze(int videoNo) throws Exception{
		return mypageDao.selectEachVideoAnalyze(videoNo);
	}
	
	//history 부분
	//mongoDB에서 데이터를 뽑기위해, spring에서 query문 작성해서, list형으로 find해 온 다음에, map으로 담아야 함.
	@Override
	public Map<String, Object> getMongoForChart(String userId) throws Exception {
		Map<String, Object> chartMap=new HashMap<String, Object>();
		
		List<MongoVo> list1 = mypageDao.findRecentlyEightData(userId, 0); //최근 8개
		List<MongoVo> list2 = mypageDao.findTopFiveData(userId, 0); //상위 5개
		List<MongoVo> list3 = mypageDao.failCauseAnalysis(userId, 0); //최근 10개(면접 실패 원인 분석)

		DateFormat outputFormat= new SimpleDateFormat("yy/MM/dd HH:mm");
		
		for (int i=0; i<list1.size(); i++) {
			//date형 값을 가져와서, 문자형으로 형변환 및 format해 줌.
			
			Date list1Date= list1.get(i).getDate();
			Calendar date1 = Calendar.getInstance();
			date1.setTime(list1Date);
			date1.add(Calendar.HOUR, -9);
			System.out.println("list1 date 리스트");
			String list1Format=outputFormat.format(date1.getTime());
			list1.get(i).setRealDate(list1Format);
		}
		
		for (int i=0; i<list2.size(); i++) {
			Date list2Date= list2.get(i).getDate();
			Calendar date2 = Calendar.getInstance();
			date2.setTime(list2Date);
			date2.add(Calendar.HOUR, -9);
			String list2Format=outputFormat.format(date2.getTime());
			list2.get(i).setRealDate(list2Format);
		}
		
		int totalFaceCnt = 0;
		int totalEyeCnt = 0;
		int totalShoulderCnt = 0;
		int totalKneeCnt = 0;
		int totalWristCnt = 0;
		
		for (int i=0; i<list3.size(); i++) {
			totalFaceCnt += list3.get(i).getFace_move_cnt();
			totalEyeCnt += list3.get(i).getBlink_cnt();
			totalShoulderCnt += list3.get(i).getShoulder_move_cnt();
			totalKneeCnt += list3.get(i).getKnee_move_cnt();
			totalWristCnt += list3.get(i).getWrist_move_cnt();
		}
		
		double avgFace = (double)totalFaceCnt/list3.size();
		double avgEye = (double)totalEyeCnt/list3.size();
		double avgShoulder = (double)totalShoulderCnt/list3.size();
		double avgKnee = (double)totalKneeCnt/list3.size();
		double avgWrist = (double)totalWristCnt/list3.size();
		
		//전체 움직임 평균합
		double avgSum = avgFace + avgEye + avgShoulder + avgKnee + avgWrist;
		
		//움직임 백분율화
		double rateFace = Double.parseDouble(String.format("%.2f",avgFace/avgSum *100));
		double rateEye = Double.parseDouble(String.format("%.2f",avgEye/avgSum *100));
		double rateShoulder = Double.parseDouble(String.format("%.2f",avgShoulder/avgSum *100));
		double rateKnee = Double.parseDouble(String.format("%.2f",avgKnee/avgSum *100));
		double rateWrist = Double.parseDouble(String.format("%.2f",avgWrist/avgSum *100));

		double[] causeList = {rateFace, rateEye, rateShoulder, rateKnee, rateWrist};

		System.out.println("avgRate-5");
		//chartMap.put("rateList", rateList);
		//chartMap.put("list3", list3);
		chartMap.put("list1", list1);
		chartMap.put("list2", list2);
		chartMap.put("causeList", causeList);
		return chartMap;
	}
	
	//영상관리 세부사항 영상시간에 따른 움직임 변화 그래프
	@Override
	public Map<String, Object> getMongoForDetailChart(int videoNo) throws Exception {
		Map<String, Object> chartMap=new HashMap<String, Object>();
		
		List<MongoVo> list = mypageDao.findCntForTotalTime("videoNo", String.valueOf(videoNo));
		
		//얼굴 움직임(5초)
		List<Integer> list1 = list.get(0).getFace_move_cnt_per_5sec();
		
		//눈 깜빡임(5초)
		List<Integer> list2 = list.get(0).getEye_blink_cnt_per_5sec();
		
		//어깨 움직임(5초)
		List<Integer> list3 = list.get(0).getS_move_cnt_per_5sec();
		
		//무릎 움직임(5초)
		List<Integer> list4 = list.get(0).getK_move_cnt_per_5sec();
		
		//손 움직임(5초)
		List<Integer> list5 = list.get(0).getW_move_cnt_per_5sec();
		
		//재생시간 구간화
		double rangeCnt = Math.ceil((double)list.get(0).getTotal_video_time()/5);
		System.out.println(rangeCnt);
		
		//x축 레이블 list 생성
		List<String> xBarList = new ArrayList<String>();
		
		//null 값 0으로 바꾸기
		for (int i=0; i<rangeCnt; i++) {
			xBarList.add(i, i*5+"초~"+(i+1)*5+"초");
			if (list1.size() < xBarList.size()) {
				list1.add(i, 0);
			}
			if (list2.size() < xBarList.size()) {
				list2.add(i, 0);
			}
			if (list3.size() < xBarList.size()) {
				list3.add(i, 0);
			}
			if (list4.size() < xBarList.size()) {
				list4.add(i, 0);
			}
			if (list5.size() < xBarList.size()) {
				list5.add(i, 0);
			}
		}
		
		//합계 리스트
		List<Object> analyzeSum = new ArrayList<Object>();
		
		analyzeSum.add(0, "합계");
		analyzeSum.add(1, list.get(0).getFace_move_cnt());
		analyzeSum.add(2, list.get(0).getBlink_cnt());
		analyzeSum.add(3, list.get(0).getShoulder_move_cnt());
		analyzeSum.add(4, list.get(0).getKnee_move_cnt());
		analyzeSum.add(5, list.get(0).getWrist_move_cnt());
		
		//얼굴 방향
		List<Integer> faceList = list.get(0).getMove_direction();
		List<String> faceDirection = new ArrayList<String>();
		faceDirection.add("상");
		faceDirection.add("하");
		faceDirection.add("좌");
		faceDirection.add("우");
		
		//어깨 방향
		List<Integer> shoulderList = list.get(0).getS_move_direction();
		List<String> shoulderDirection = new ArrayList<String>();
		shoulderDirection.add("좌");
		shoulderDirection.add("우");
		
		//무릎 방향
		List<Integer> kneeList = list.get(0).getK_move_direction();
		List<String> kneeDirection = new ArrayList<String>();
		kneeDirection.add("좌");
		kneeDirection.add("우");
		
		//손 방향
		List<Integer> wristList = list.get(0).getW_move_direction();
		List<String> wristDirection = new ArrayList<String>();
		wristDirection.add("좌");
		wristDirection.add("우");
		
		chartMap.put("wristDirection", wristDirection);
		chartMap.put("wristList", wristList);
		chartMap.put("kneeDirection", kneeDirection);
		chartMap.put("kneeList", kneeList);
		chartMap.put("shoulderDirection", shoulderDirection);
		chartMap.put("shoulderList", shoulderList);
		chartMap.put("faceDirection", faceDirection);
		chartMap.put("faceList", faceList);
		chartMap.put("analyzeSum", analyzeSum);
		chartMap.put("list5", list5);
		chartMap.put("list4", list4);
		chartMap.put("list3", list3);
		chartMap.put("list2", list2);
		chartMap.put("list1", list1);
		chartMap.put("xBarList", xBarList);
		return chartMap;
	}
}
