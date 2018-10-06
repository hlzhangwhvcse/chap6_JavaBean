package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import bean.ShoppingInfo;
import bean.ItemShopping;


/**
 * Servlet implementation class ConServlet
 */
@WebServlet("/ConServlet")
public class ConServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConServlet() 
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
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		ShoppingInfo shoppingInfo = (ShoppingInfo) session.getAttribute("shopping");
		
		if (null == shoppingInfo) 
		{
			shoppingInfo = new ShoppingInfo();
			session.setAttribute("shopping", shoppingInfo);
		}
		
		String url = "/checkMVC.jsp";
		String method = request.getParameter("method");
		if (method.equals("shop")) 
		{
			ItemShopping item = new ItemShopping();
			item.setId(shoppingInfo.getIndex());
			item.setName(request.getParameter("name"));
			item.setPrice(Float.parseFloat(request.getParameter("price")));
			item.setAmount(Integer.parseInt(request.getParameter("amount")));
			shoppingInfo.getItems().add(item);
		}
		if (method.equals("delete")) 
		{
			int id = Integer.parseInt(request.getParameter("id"));
			shoppingInfo.delItem(id);
		}
		
//		ServletContext servletContext = getServletContext();
//		RequestDispatcher requestDispacher = servletContext.getRequestDispatcher(url);
//		requestDispacher.forward(request, response);
		
		request.getRequestDispatcher(url).forward(request, response);//敲写自动完成代码
		
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
