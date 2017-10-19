package session;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.ScheduleModel;


public class ReserRepository {
	private String namespage = "mapper.ReserMapper";

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
	
	public List<ScheduleModel> reserList(){
		SqlSession sess = getSqlSessionFactory().openSession();
		// JDBC의 연결객체 -> SqlSession
		try {
		return sess.selectList(namespage + ".selectAll");
		}finally {
			sess.close();
		}
	}
}
