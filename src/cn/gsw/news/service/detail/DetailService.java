package cn.gsw.news.service.detail;

import java.util.List;

import cn.gsw.news.bean.NewsDetail;

public interface DetailService {
	public List<NewsDetail> getAllDetails();

	public boolean delDetail(int id);

	public List<NewsDetail> getDetailsBytitle(String title);
}
