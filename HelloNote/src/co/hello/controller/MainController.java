package co.hello.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.hello.command.BankAcountCommand;
import co.hello.command.Command;


/**
 * Servlet implementation class MainController
 */
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private HashMap<String,Command> map = null; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
    	map = new HashMap<String,Command>();
    	map.put("/index.do", new IndexCommand());
    	map.put("/bankAcount.do",new BankAcountCommand());
      
    }


	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 들어온 요청을 확인해서 실행시켜주는 부분
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
//		System.out.println("URi:" + uri);
//		System.out.println("cs:" + context);
//		System.out.println("path:" + path);
		
		Command comm = map.get(path);
		String page = comm.execute(request, response);
		
		if(page!=null) {
			if(page.startsWith("redirect:")) {
				response.sendRedirect(page.substring(9));
				
			}else if(page.startsWith("ajax:")) {
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(page.substring(5));
				
			}else if(page.startsWith("script:")) {
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(page.substring(7));
				
			}else {
				RequestDispatcher dispatcher=request.getRequestDispatcher(page);
				dispatcher.forward(request, response);
			}
				
		}
	}
	
}
