package com.hyeon.petluv.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Member {

	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String enrollDate;
}
