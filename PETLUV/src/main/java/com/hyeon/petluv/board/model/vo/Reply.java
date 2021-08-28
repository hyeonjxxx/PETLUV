package com.hyeon.petluv.board.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Reply {

	private int replyNo;
	private String replyContent;
	private int refBno;		 //댓글달린 게시글번호
	private String replyCreateDate;
	private int memNo;
	private int boardNo;
	
}
