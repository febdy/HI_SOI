package com.bit.hi.dao.impl;

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
	public List<VideoVo> selectMyVideoList(String userId, int startRnum, int endRnum) throws Exception {
		Map<String, Object> mapCri=new HashMap<String, Object>();
		mapCri.put("userId", userId);
		mapCri.put("startRnum", startRnum);
		mapCri.put("endRnum", endRnum);
		System.out.println("dao: "+mapCri.toString());
		return sqlSession.selectList(namespace+"selectPageForMyVideoList", mapCri);
	}
	
	//영상관리 페이징
	@Override
	public int selectTotalCountForMyVideo(String userId) throws Exception {
		return sqlSession.selectOne(namespace+"selectTotalCountForMyVideo", userId);
	}
	
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
	
	//영상관리 세부내용
	@Override
	public VideoVo selectEachVideoAnalyze(int videoNo) throws Exception {
		return sqlSession.selectOne(namespace+"selectEachVideoAnalyze", videoNo);
	}
	
	//history - 최근 10개 그래프 면접 영상 정보 가져오기
	//삭제해도 됨.(oracle에서 값 빼와서 차트 그려본 것임 test)
	@Override
	public List<VideoVo> selectVideoForRecentlyTen(String userId) throws Exception {
		return sqlSession.selectList(namespace+"selectVideoForRecentlyTen", userId);
	}
	
	//history - 최근 10개, 상위 6개, 나의 상위 면접 실패 원인 mongoDB로 부터 가져오기
	
	//여기서 key는 userId
	//최근 면접진단 10개
	@Override
	public List<MongoVo> findRecentlyTenData(String key, String value) throws Exception {
		Criteria criteria=new Criteria(key);
		criteria.is(value);
		
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
	
	//상위 면접점수 6개
	@Override
	public List<MongoVo> findTopSixData(String key, String value) throws Exception {
		Criteria criteria=new Criteria(key);
		criteria.is(value);
		
		//검색
		MatchOperation match = Aggregation.match(criteria);
		
		//정렬
		SortOperation sort = Aggregation.sort(Sort.Direction.DESC, "avg"); //면접 점수로 정렬해야함.
		
		//지정한 수 만큼 가져오기
		LimitOperation limit = Aggregation.limit(6); //상위 6개
		
		//aggregation 하기
		Aggregation aggregation = Aggregation.newAggregation(match, sort, limit);
		
		//mongoDB로부터 조건에 맞게 가져오기
		AggregationResults<MongoVo> result = mongoTemplate.aggregate(aggregation, "video_info", MongoVo.class);
		
		List<MongoVo> sixList = result.getMappedResults();
		
		for (MongoVo mongoVo:sixList) {
			System.out.println(mongoVo.toString());
		}
		
		return sixList;
	}
}
