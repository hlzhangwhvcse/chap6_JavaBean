package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import bean.UserDoRegist;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	private UserDoRegist userDoRegist = new UserDoRegist();
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		userDoRegist.setUsername(name);
		userDoRegist.setPassword(password);
		
		boolean mark = userDoRegist.doRegist();
		if (mark) 
		{
			out.print("用户名注册成功！");
			//跳转到注册成功页面
		} 
		else 
		{
			out.print("对不起！用户名已注册！");
			//停留在注册页面
		}

		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
