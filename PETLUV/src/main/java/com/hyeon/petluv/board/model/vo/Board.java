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
public class Board {
	
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private int count;
	private String boardCreateDate;
	private String orginName;   
	private String changeName; //  resources/xxxxxx/xxxxxx.jpg
	private String boardStatus;
	private int memNo;
	

}
