

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Multiple_parameter
 */
@WebServlet("/Multiple_parameter")
public class Multiple_parameter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Multiple_parameter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String[] hobby = request.getParameterValues("hobby");
				
		out.println("<html>");
		out.println("<head>");
		out.println("<title>다중 선택 확인창</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("결과 <hr>");
		if (hobby == null) {
			out.println("[선택한 취미가 없습니다.] ");
		}else {
			for(int i=0; i<hobby.length; i++) {
				out.println(hobby[i]);
				out.print("<br>");
			}
		}
		out.println("</body>");
		out.println("</html>");
	
	}

}
