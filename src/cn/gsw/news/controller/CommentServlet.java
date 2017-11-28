package cn.gsw.news.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.gsw.news.bean.NewsComment;
import cn.gsw.news.service.comment.CommentService;
import cn.gsw.news.service.comment.CommentServiceImpl;


@WebServlet("/comment")
public class CommentServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String flag = req.getParameter("flag");
		CommentService cService = new CommentServiceImpl();
		PrintWriter out = resp.getWriter();
	
		if ("getComments".equals(flag)) {
			String id = req.getParameter("id");
			List<NewsComment> comments = cService.getCommentsByDid(id);
			req.getSession().setAttribute("comments", comments);
			resp.sendRedirect("comment.jsp");
		}else if ("add".equals(flag)) {
			String content = req.getParameter("content");
			String userName = req.getParameter("userName");
			String newid = req.getParameter("newsid");
			int newsid = Integer.parseInt(newid);
			
			NewsComment comment = new NewsComment();
			
			comment.setAuthor(userName);
			comment.setContent(content);
			comment.setCreatedate(new Date());
			comment.setNewsid(newsid);
			boolean result = cService.addComment(comment);
			if (result) {
				resp.sendRedirect("index.jsp");
			}else {
				out.print("<script>alert('Ìí¼ÓÆÀÂÛÊ§°Ü£¬Çë´ÓÐÂ³¢ÊÔ')</script>");
				resp.sendRedirect("addComment.jsp");
			}
		}
	}

	
}
