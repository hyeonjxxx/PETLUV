package com.hyeon.petluv.member.model.service;

import com.hyeon.petluv.member.model.vo.Member;

public interface MemberService {
	
	// 로그인 서비스
	Member loginUser(Member m);
	
	// 회원가입 서비스
	int insertMember(Member m);

}
