package session;

import java.io.*;
import java.util.*;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.*;

public class PayRepository {

	private String namespage = "mapper.PayMapper";

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

	public List<PayModel> payList(String m_id) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {

			return sess.selectList(namespage + ".paySelectReser", m_id);
		} finally {
			sess.close();
		}

	}

	public List<PayModel> payCancleList(String m_id) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			return sess.selectList(namespage + ".payCancleSelect", m_id);
		} finally {
			sess.close();
		}

	}

	public int payUpdateCancel(PayModel pm) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			int result = sess.update(namespage + ".payUpdateCancel", pm);
			if (result > 0) {
				sess.commit();
			} else {
				sess.rollback();
			}
			return result;
		} finally {
			sess.close();
		}
	}
}
