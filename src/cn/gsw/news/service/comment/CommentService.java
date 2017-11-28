package cn.gsw.news.service.comment;

import java.util.List;

import cn.gsw.news.bean.NewsComment;

public interface CommentService {
	public List<NewsComment> getCommentsByDid(String id);

	public boolean addComment(NewsComment comment);
}
