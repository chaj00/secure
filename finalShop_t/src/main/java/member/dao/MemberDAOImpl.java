package member.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.dto.MemberDTO;

@Repository("memberdao")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	SqlSession sqlsession;


	@Override
	public MemberDTO login(MemberDTO member) {
		
	
		return sqlsession.selectOne("finalshop.member.login", member);
	}
}
