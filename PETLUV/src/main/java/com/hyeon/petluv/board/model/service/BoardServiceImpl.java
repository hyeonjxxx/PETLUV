package com.hyeon.petluv.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyeon.petluv.board.model.dao.BoardDao;
import com.hyeon.petluv.board.model.vo.Board;
import com.hyeon.petluv.board.model.vo.Reply;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private BoardDao bDao;

	@Override
	public ArrayList<Board> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBoard(Board b) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int increaseCount(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Board selectBoardDetail(int boardNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateBoard(Board b) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Reply> selectReplyList(int boardNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertReply(Reply r) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	

}
