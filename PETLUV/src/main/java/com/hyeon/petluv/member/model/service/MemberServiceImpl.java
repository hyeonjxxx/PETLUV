package com.hyeon.petluv.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.hyeon.petluv.member.model.dao.MemberDao;
import com.hyeon.petluv.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDao mDao;
	
	@Override
	public Member loginUser(Member m) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}

}
