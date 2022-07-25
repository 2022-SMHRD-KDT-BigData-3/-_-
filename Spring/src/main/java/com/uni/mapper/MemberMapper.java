package com.uni.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import com.uni.entity.MemberVO;

@Mapper
public interface MemberMapper {

	@Insert("insert into member values(mem_seq.nextval, ${userid}, ${userpw})")
	public void join(MemberVO member);
}
