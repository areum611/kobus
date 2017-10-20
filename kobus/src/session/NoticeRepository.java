package session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.NoticeModel;
import model.QnaModel;

public class NoticeRepository {
	private String namespage = "mapper.NoticeMapper";

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
	public Integer insertNotice(NoticeModel NM) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			int result = sess.insert(namespage + ".insertNotice", NM);
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
	public List<NoticeModel> noticeList(){
		SqlSession sess = getSqlSessionFactory().openSession();
		// JDBC의 연결객체 -> SqlSession
		try {
		return sess.selectList(namespage + ".selectAll");
		}finally {
			sess.close();
		}
	}

	public NoticeModel noticeSelectView(int nId) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			return (NoticeModel) sess.selectOne(namespage + ".noticeSelectView", nId);
		} finally {
			sess.close(); 
		}
	}

}
