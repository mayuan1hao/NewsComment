package cn.gsw.news.service.comment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cn.gsw.news.bean.NewsComment;
import cn.gsw.news.dao.comment.CommentMapper;
import cn.gsw.news.util.MyBatisUtil;

public class CommentServiceImpl implements CommentService {
	private SqlSession session = MyBatisUtil.createSqlSession(false);
	@Override
	public List<NewsComment> getCommentsByDid(String id) {
		List<NewsComment> comments = session.getMapper(CommentMapper.class).getCommentsByid(id);
		return comments;
	}
	@Override
	public boolean addComment(NewsComment comment) {
		if (session.getMapper(CommentMapper.class).addComment(comment)==1) {
			session.commit();
			return true;
		}
		return false;
	}

}
