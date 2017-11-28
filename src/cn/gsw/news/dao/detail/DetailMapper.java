package cn.gsw.news.dao.detail;

import java.util.List;

import cn.gsw.news.bean.NewsDetail;

public interface DetailMapper {
	public List<NewsDetail> getAllDetails();

	public int delDetail(int id);

	public List<NewsDetail> S(String title);

	public List<NewsDetail> getDetailsByTitle(String title);
}
