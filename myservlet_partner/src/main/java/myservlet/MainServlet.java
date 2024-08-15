package myservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myservlet.dao.EmpDAO;
import myservlet.vo.Emp;

//@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init()");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		/*
			
			login.do, emplist.do, loginaction.do 로 넘어오게
			
			- 클라이언트가 뭘 요청했는지를 체크해야함
		*/
		String requestURI = req.getRequestURI();
		System.out.println(requestURI);
		String uri = requestURI.substring(requestURI.lastIndexOf('/'));
		System.out.println("uri=" + uri);
		
		String page = "/WEB-INF/login.jsp";
		
		if(uri.equals("/login.do")) {
			
		}
		
		if(uri.equals("/logout.do")) {
			//page default
			//session의 id attribute를 null처리
			HttpSession session = req.getSession();
			session.setAttribute("id", null);
		}
		
		if(uri.equals("/emplist.do")) {
			//forwarding
			page = "/WEB-INF/emplist3.jsp";
			try {
				List<Emp> list = EmpDAO.getEmpListByDeptId(80);
				req.setAttribute("list", list);
			} catch (Exception e) {

			}
			
		}
		RequestDispatcher rd = req.getRequestDispatcher(page);
		rd.forward(req, res);
	
		
	}

}
