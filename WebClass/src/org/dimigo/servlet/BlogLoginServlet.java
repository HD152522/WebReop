package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// jsp ������
		RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("asdfasdf");
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id: %s , pwd: %s\n", id, pwd);
		
		
		boolean result;
		if("test@naver.com".equals(id)) result=true;
		else result = false;
			
			
			
		if(result) {
			HttpSession session = request.getSession();
			UserVO user = new UserVO();
			user.setId(id);
			user.setName("홍길동");
			user.setNickname("홍길동");
			
			session.setAttribute("user", user);
			
			RequestDispatcher rd = request.getRequestDispatcher("jsp/index.jsp");
			
			rd.forward(request, response);
		} else {
			
			request.setAttribute("msg", "error");
			
			RequestDispatcher rd = request.getRequestDispatcher("jsp/index.jsp");
			rd.forward(request, response);
		}
		
		
		
	}
	
	protected void doPost2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
	//	System.out.printf("id: %s, pwd: %s\n", id, pwd);
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		/*
		 * {
		 * 	id: "testid"
		 * }
		 */
		
	//	out.println("{");
	//	out.println("\"id\":" + "\"" + id + "\"");
	//	out.println("}");
		
	//	JSONObject json = new JSONObject();
	//	json.put("id", id);
	//	System.out.println(json.toJSONString());
	//	out.write(json.toJSONString());
		
		
		JsonObject object = new JsonObject();
		object.addProperty("id", id);
		String json = object.toString();
		System.out.println(json);
		out.println(json);
		
		
		
		
		out.close();
		
		
		
		
		
		
		
		
	}

}
