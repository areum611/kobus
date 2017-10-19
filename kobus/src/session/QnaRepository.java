package session;

import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.QnaModel;

public class QnaRepository {
	private String namespage = "mapper.QnaMapper";
	
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
	
	public List<QnaModel> qnaList(String m_id){
		SqlSession sess = getSqlSessionFactory().openSession();
		// JDBC의 연결객체 -> SqlSession
		try {
		return sess.selectList(namespage + ".qnaListselectAll",m_id);
		}finally {
			sess.close();
		}
	}
	
	public List<QnaModel> qnaAdminList(String m_gubun){
		SqlSession sess = getSqlSessionFactory().openSession();
		// JDBC의 연결객체 -> SqlSession
		try {
		return sess.selectList(namespage + ".qnaAdminListselectAll",m_gubun);
		}finally {
			sess.close();
		}
	}
	
	
	public Integer qnaInsert(QnaModel qm) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
		int result = sess.insert(namespage+".qnaInsert", qm);
		if( result >0) {
			sess.commit();
		}else {
			sess.rollback();
		}
		return result;
		}finally {
			sess.close();
		}
	}
	
	public int getGroupId()
	{
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			return sess.selectOne(namespage+".qnaGroupId");
		}finally {
			sess.close();
		}
	}

}
