package com.hyeon.petluv.board.model.service;

import java.util.ArrayList;

import com.hyeon.petluv.board.model.vo.Board;
import com.hyeon.petluv.board.model.vo.Reply;

public interface BoardService {
	
	// 게시글 전체조회
	ArrayList<Board> selectList();
	
	// 게시글 추가
	int insertBoard(Board b);
	
	// 게시글 상세조회
	int increaseCount(int boardNo);
	Board selectBoardDetail(int boardNo);
	
	// 게시글 수정
	int updateBoard(Board b);
	
	// 게시글 삭제
	int deleteBoard(int boardNo);

	// 게시글에 달린 댓글 조회
	ArrayList<Reply> selectReplyList(int boardNo);
	
	// 댓글작성
	int insertReply(Reply r);
	
	
	
	
}
