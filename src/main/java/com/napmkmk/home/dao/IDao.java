package com.napmkmk.home.dao;

import com.napmkmk.home.dto.MemberDto;

public interface IDao {

	public int memberJoin(String mid, String mpw, String mname, String meamil);//회원가입 insert
	public int checkId(String mid); // 아이디 존재여부 확인 select
}
