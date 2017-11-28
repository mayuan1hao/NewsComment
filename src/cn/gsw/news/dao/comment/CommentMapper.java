package cn.gsw.news.dao.comment;

import java.util.List;

import cn.gsw.news.bean.NewsComment;

public interface CommentMapper {

	public List<NewsComment> getCommentsByid(String id);

	public int delCommentsBynewsid(int id);

	public int addComment(NewsComment comment);

}
