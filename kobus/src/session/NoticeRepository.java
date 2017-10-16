package session;

import java.io.InputStream;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.NoticeModel;

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

}
