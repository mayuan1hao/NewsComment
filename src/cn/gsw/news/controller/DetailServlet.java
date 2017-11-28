package cn.gsw.news.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import cn.gsw.news.bean.NewsDetail;
import cn.gsw.news.service.detail.DetailService;
import cn.gsw.news.service.detail.DetailServiceImpl;

@WebServlet("/detail")
public class DetailServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String flag = req.getParameter("flag");
		DetailService detailService = new DetailServiceImpl();
		PrintWriter out = resp.getWriter();
		if ("init".equals(flag)) {
			List<NewsDetail> allDetails = detailService.getAllDetails();
			String jsonString = JSON.toJSONStringWithDateFormat(allDetails, "yyyy-MM-dd HH:mm:ss");
			out.print(jsonString);
		}else if ("del".equals(flag)) {
			int id = Integer.parseInt(req.getParameter("id"));
			boolean result = detailService.delDetail(id);
			if (!result) {
				out.print("");
			}
			List<NewsDetail> allDetails = detailService.getAllDetails();
			String jsonString = JSON.toJSONStringWithDateFormat(allDetails, "yyyy-MM-dd HH:mm:ss");
			out.print(jsonString);
		}else if ("search".equals(flag)) {
			String title = req.getParameter("title");
			//String title = URLDecoder.decode(ss,"utf-8");
			List<NewsDetail> details = detailService.getDetailsBytitle(title);
			String jsonString = JSON.toJSONStringWithDateFormat(details, "yyyy-MM-dd HH:mm:ss");
			out.print(jsonString);
		}
	}
	
}
