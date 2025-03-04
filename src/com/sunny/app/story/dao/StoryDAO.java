package com.sunny.app.story.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.sunny.app.story.dto.StoryDTO;
import com.sunny.app.story.vo.StoryListVO;

public class StoryDAO {

	public SqlSession sqlSession;

	public StoryDAO() {

		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<StoryListVO> selectAll(Map<String, Integer>pageMap) {
		return sqlSession.selectList("story.selectAll",pageMap);
	}
	
	public int getTotal() {
		return sqlSession.selectOne("story.getTotal");
	}
	
	public void insert(StoryDTO storyDTO) {
	    int result = sqlSession.insert("story.insert", storyDTO);
	    if (result > 0) {
	        sqlSession.commit();
	    } else {
	        System.out.println("Insert failed");
	    }
	}

	public int getSequence() {
		return sqlSession.selectOne("story.getSequence");
	}
	
	public StoryListVO select(int storyNumber) {
	    return sqlSession.selectOne("story.select", storyNumber);
	}
	
	public void updateReadCount(int storyNumber) {
		sqlSession.update("story.updateReadCount", storyNumber);
	}
	
	public void updateCover(StoryDTO storyDTO) {
		sqlSession.update("story.cover", storyDTO);
	}
}
