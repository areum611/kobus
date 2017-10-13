package session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
 
import model.MemberModel;

public class MemberRepository<SqlSessionFactory> {
	private String namespage = "mapper.MemberMapper";
	

	SqlSessionFactory getSqlSessionFactory(){
		InputStream in = null;
		try {
		in = Resources.getResourceAsStream("mybatis-config.xml");
		} catch(Exception ex) {
			System.out.println("마이바티즈 설정 실패:" + ex.getMessage());
		}
		SqlSessionFactory sessFac = new SqlSessionFactoryBuilder().build(in);
		return sessFac;
	}

}
