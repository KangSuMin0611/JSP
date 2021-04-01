

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * Servlet implementation class gugu_xam
 */
@WebServlet("/gugu_xam")
public class gugu_ex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gugu_ex() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String gugu = request.getParameter("gugu");
		int gugudan=Integer.parseInt(gugu);
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
			for(int i=0; i<=10; i++) {
				out.print(gugudan + " x " + i + " : " + gugudan*i + "<br>");
			}
		out.println("</body>");
		out.println("</html>");
	//°­¼ö¹Î ¸ÛÃ»ÀÌ-´©±¸³Ä!
	}

}
