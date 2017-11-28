package cn.gsw.news.service.detail;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cn.gsw.news.bean.NewsDetail;
import cn.gsw.news.dao.comment.CommentMapper;
import cn.gsw.news.dao.detail.DetailMapper;
import cn.gsw.news.util.MyBatisUtil;

public class DetailServiceImpl implements DetailService {
	private SqlSession session = MyBatisUtil.createSqlSession(false);
	@Override
	public List<NewsDetail> getAllDetails() {
		return session.getMapper(DetailMapper.class).getAllDetails();
	}
	@Override
	public boolean delDetail(int id) {
		if(session.getMapper(DetailMapper.class).delDetail(id)==1 && session.getMapper(CommentMapper.class).delCommentsBynewsid(id)>0){
			session.commit();
			return true;
		}
		session.rollback();
		return false;
	}
	@Override
	public List<NewsDetail> getDetailsBytitle(String title) {
		
		return session.getMapper(DetailMapper.class).getDetailsByTitle(title);
	}

}
