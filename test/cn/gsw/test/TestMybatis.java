package cn.gsw.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import cn.gsw.news.bean.NewsDetail;
import cn.gsw.news.dao.detail.DetailMapper;
import cn.gsw.news.util.MyBatisUtil;

public class TestMybatis {

	@Test
	public void test() {
		
		SqlSession session = MyBatisUtil.createSqlSession(false);
		List<NewsDetail> details = session.getMapper(DetailMapper.class).getAllDetails();
		for (NewsDetail newsDetail : details) {
			System.out.println(newsDetail);
		}
		session.close();
	}

}
