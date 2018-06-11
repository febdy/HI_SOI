package com.bit.hi.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.data.mongodb.core.aggregation.LimitOperation;
import org.springframework.data.mongodb.core.aggregation.MatchOperation;
import org.springframework.data.mongodb.core.aggregation.SortOperation;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.bit.hi.dao.MypageDao;
import com.bit.hi.domain.vo.CommentVo;
import com.bit.hi.domain.vo.PostVo;
import com.bit.hi.domain.vo.ScrapVo;
import com.bit.hi.domain.vo.UserVo;
import com.bit.hi.domain.vo.VideoVo;
import com.bit.hi.mongo.vo.MongoVo;

@Repository
public class MypageDaoImpl implements MypageDao {

	private static final String namespace="com.bit.hi.MypageMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	//영상관리 페이징
	@Override
	public List<VideoVo> selectMyVideoList(String userId) throws Exception {
		
		return sqlSession.selectList(namespace+"selectPageForMyVideoList", userId);
	}
	
	//영상관리 mongoDB의 점수값 추가
	public List<Integer> selectVideoScore(String value1, int value2) throws Exception {
		Criteria criteria = new Criteria().andOperator(Criteria.where("userId").is(value1), Criteria.where("videoDelete").is(value2));
		
		//검색
		MatchOperation match = Aggregation.match(criteria);
		
		/*SkipOperation skip = Aggregation.skip((long)(crtPage * listCnt));
		
		LimitOperation limit = Aggregation.limit(listCnt);*/
		
		//정렬
		SortOperation sort = Aggregation.sort(Sort.Direction.DESC, "videoNo"); //임시로 videoNo로 정렬함, 실제로는 videoDate로 정렬해야함.
				
		//aggregation 하기
		Aggregation aggregation = Aggregation.newAggregation(match, sort);
		
		//mongoDB로부터 조건에 맞게 가져오기
		AggregationResults<MongoVo> result = mongoTemplate.aggregate(aggregation, "video_info", MongoVo.class);
		
		List<MongoVo> videoClipList = result.getMappedResults();
		
		List<Integer> scoreList = new ArrayList<Integer>();
		
		for (int i=0; i<videoClipList.size(); i++) {
			scoreList.add(videoClipList.get(i).getTotal_grade());
		}
		System.out.println(scoreList);
		//List<VideoVo> list1 = new ArrayList<VideoVo>();
		//list1.get(0).

		return scoreList;
	};

	//내 댓글
	@Override
	public List<CommentVo> selectCollectCommentList(String userId, int startRnum, int endRnum) throws Exception {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectCollectCommentList", mapCri);
	}
	
	//내 댓글
	@Override
	public int selectTotalCountForComment(String userId) throws Exception {
		return sqlSession.selectOne(namespace+"selectTotalCountForComment", userId);
	}
	
	//내가 올린 영상
	@Override
	public List<PostVo> selectCollectVideoList(String userId, int startRnum, int endRnum) throws Exception {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectCollectVideoList", mapCri);
	}
	
	//내가 올린 영상
	@Override
	public int selectTotalCountForVideo(String userId) throws Exception {
		return sqlSession.selectOne(namespace+"selectTotalCountForVideo", userId);
	}
		
	//스크랩
	@Override
	public List<ScrapVo> selectCollectScrapList(String userId, int startRnum, int endRnum) throws Exception {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectCollectScrapList", mapCri);
	}
	
	//스크랩
	@Override
	public int selectTotalCountForScrap(String userId) throws Exception {
		return sqlSession.selectOne(namespace+"selectTotalCountForScrap", userId);
	}
	
	//회원정보 수정 nickname 체크
	@Override
	public UserVo selectNickChkForModify(UserVo userVo) throws Exception {
		return sqlSession.selectOne(namespace+"selectNickChkForModify", userVo);
	}
	
	//회원정보 수정 수정완료 클릭시 확인사항
	@Override
	public int updateInfo(UserVo userVo) throws Exception {
		return sqlSession.update(namespace+"updateInfo", userVo);
	}
	
	//영상관리 삭제(videoDelete 값이 1이면 사용자가 삭제한 영상임)
	@Override
	public int updateVideo(int videoNo) throws Exception {
		return sqlSession.update(namespace+"updateVideo", videoNo);
	}
	
	//영상관리 삭제시 mongoDB에서도 삭제(videoDelete 값이 1이면 사용자가 삭제한 영상임)
	@Override
	public void updateMongoVideo(String key, String value) throws Exception {
		Criteria criteria = new Criteria(key);
		criteria.is(value);
		
		Query query = new Query(criteria);
		
		Update update = new Update();
		update.set("videoDelete", 1);
		
		mongoTemplate.updateMulti(query, update, MongoVo.class);
	}
	
	//영상관리 세부내용
	@Override
	public VideoVo selectEachVideoAnalyze(int videoNo) throws Exception {
		return sqlSession.selectOne(namespace+"selectEachVideoAnalyze", videoNo);
	}
	
	//history - 최근 8개, 상위 5개, 나의 상위 면접 실패 원인 mongoDB로 부터 가져오기
	
	//여기서 key는 userId
	//최근 면접진단 8개
	@Override
	public List<MongoVo> findRecentlyEightData(String value1, int value2) throws Exception {
		Criteria criteria=new Criteria().andOperator(Criteria.where("userId").is(value1), Criteria.where("videoDelete").is(value2));
		
		//검색
		MatchOperation match = Aggregation.match(criteria);
		
		//정렬
		SortOperation sort = Aggregation.sort(Sort.Direction.DESC, "videoNo"); //임시로 videoNo로 정렬함, 실제로는 videoDate로 정렬해야함.
		
		//지정한 수 만큼 가져오기
		LimitOperation limit = Aggregation.limit(8);
		
		//aggregation 하기
		Aggregation aggregation = Aggregation.newAggregation(match, sort, limit);
		
		//mongoDB로부터 조건에 맞게 가져오기
		AggregationResults<MongoVo> result = mongoTemplate.aggregate(aggregation, "video_info", MongoVo.class);
		
		List<MongoVo> eightList = result.getMappedResults();
		
		for (MongoVo mongoVo:eightList) {
			System.out.println(mongoVo.toString());
		}
		
		return eightList;
	}
	
	//상위 면접점수 5개
	@Override
	public List<MongoVo> findTopFiveData(String value1, int value2) throws Exception {
		Criteria criteria=new Criteria().andOperator(Criteria.where("userId").is(value1), Criteria.where("videoDelete").is(value2));
		
		//검색
		MatchOperation match = Aggregation.match(criteria);
		
		//정렬
		SortOperation sort = Aggregation.sort(Sort.Direction.DESC, "total_grade"); //면접 점수로 정렬해야함.
		
		//지정한 수 만큼 가져오기
		LimitOperation limit = Aggregation.limit(5); //상위 6개
		
		//aggregation 하기
		Aggregation aggregation = Aggregation.newAggregation(match, sort, limit);
		
		//mongoDB로부터 조건에 맞게 가져오기
		AggregationResults<MongoVo> result = mongoTemplate.aggregate(aggregation, "video_info", MongoVo.class);
		
		List<MongoVo> fiveList = result.getMappedResults();
		
		for (MongoVo mongoVo:fiveList) {
			System.out.println(mongoVo.toString());
		}
		
		return fiveList;
	}
	
	//최근 10개 영상에 대한 실패원인 분석
	@Override
	public List<MongoVo> failCauseAnalysis(String value1, int value2) throws Exception {
		Criteria criteria=new Criteria().andOperator(Criteria.where("userId").is(value1), Criteria.where("videoDelete").is(value2));
		
		//검색
		MatchOperation match = Aggregation.match(criteria);
		
		//정렬
		SortOperation sort = Aggregation.sort(Sort.Direction.DESC, "videoNo"); //임시로 videoNo로 정렬함, 실제로는 videoDate로 정렬해야함.
		
		//지정한 수 만큼 가져오기
		LimitOperation limit = Aggregation.limit(10);
		
		//aggregation 하기
		Aggregation aggregation = Aggregation.newAggregation(match, sort, limit);
		
		//mongoDB로부터 조건에 맞게 가져오기
		AggregationResults<MongoVo> result = mongoTemplate.aggregate(aggregation, "video_info", MongoVo.class);
		
		List<MongoVo> tenList = result.getMappedResults();
		
		for (MongoVo mongoVo:tenList) {
			System.out.println(mongoVo.toString());
		}
		
		return tenList;
	}
	
	//영상관리 세부사항 영상시간에 따른 움직임 변화 그래프
	@Override
	public List<MongoVo> findCntForTotalTime(String key, String value) throws Exception {
		Criteria criteria=new Criteria(key);
		criteria.is(value);
		
		//검색
		MatchOperation match = Aggregation.match(criteria);
		
		//aggregation 하기
		Aggregation aggregation = Aggregation.newAggregation(match);
		
		//mongoDB로부터 조건에 맞게 가져오기
		AggregationResults<MongoVo> result = mongoTemplate.aggregate(aggregation, "video_info", MongoVo.class);
		
		List<MongoVo> list = result.getMappedResults();
		
		for (MongoVo mongoVo:list) {
			System.out.println(mongoVo.toString());
		}
		
		return list;
	}
}
