package session;

import java.io.InputStream;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.MemberModel;

public class MemberRepository {
	private String namespage = "mapper.MemberMapper";

	SqlSessionFactory getSqlSessionFactory() {
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream("mybatis-config.xml");
		} catch (Exception ex) {
			System.out.println("마이바티즈 설정 실패:" + ex.getMessage());
		}
		SqlSessionFactory sessFac = new SqlSessionFactoryBuilder().build(in);
		return sessFac;
	}

	// 가입하기
	public Integer insertMember (MemberModel m) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			int result = sess.insert(namespage + ".insertMember", m);
			if( result > 0 )
				sess.commit();
			else {
				sess.rollback();
			}
			return result;
		} finally {
			sess.close();
		}
	}
	
	// 로그인하기
	public String selectLogin(MemberModel mm) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
//			HashMap hash = new HashMap();
//			hash.put("m_id", mm.getM_id());
//			hash.put("m_password", mm.getM_password());
			MemberModel result = null;
			result = sess.selectOne(namespage + ".selectAll", mm);
			return result.getM_id();
		} finally {
			sess.close();
		}
		
	}

	// 아이디찾기
	public String selectId(String m_tel) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			HashMap hash = new HashMap();
			hash.put("m_tel", m_tel);
			return sess.selectOne(namespage + ".selectAll", hash);
		} finally {
			sess.close();
		}
	}

	// 비밀번호찾기
	public String selectPw(String m_id) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			HashMap hash = new HashMap();
			hash.put("m_id", m_id);
			return sess.selectOne(namespage + ".selectAll", hash);
		} finally {
			sess.close();
		}
	}
}
