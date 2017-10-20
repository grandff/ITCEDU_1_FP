package membership;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "memberController.do", urlPatterns = { "/memberController.do" })
public class memberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public memberController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	
	protected void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// =================== 한글 처리 ========================
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
		// ==================================================
				String vCategory = request.getParameter("q"); 
				String vList = request.getParameter("list");
				// ====== 회원 정보를 컨트롤러에서 불러옴 ========
				String vId, vPwd, vName, vEmail, vRepwd, vGender;
				vId = request.getParameter("mem_id");
				vPwd = request.getParameter("mem_pwd");
				vName = request.getParameter("mem_name");
				vEmail = request.getParameter("mem_email");
				vRepwd = request.getParameter("repwd");
				vGender = request.getParameter("gender");
				memDTO dto = new memDTO(vName, vId, vPwd, vEmail, vGender);		
				dto.setRepwd(vRepwd);
				memDAO dao = new memDAO();
				// =====================================
				// ============ 페이지 이동 ================
				if(vCategory.equals("100")) {
					response.sendRedirect("./index_main2.jsp?q=100");
				} else if (vCategory.equals("101")) {
					response.sendRedirect("./index_main2.jsp?q=101");
				} else if (vCategory.equals("102")) {
					response.sendRedirect("./index_main2.jsp?q=102");
				} else if (vCategory.equals("103")) {
					response.sendRedirect("./index_main2.jsp?q=103");
				} else if (vCategory.equals("104")) {
					response.sendRedirect("./index_main2.jsp?q=104");
				}else	if (vCategory.equals("200")) {
					response.sendRedirect("./index_main2.jsp?q=200");
				} else	if (vCategory.equals("300")) {
					System.out.println("컨트롤러에서 받은 vList = " + vList);
					response.sendRedirect("./index_main2.jsp?q=300&list="+vList);
				}else	if (vCategory.equals("301")) {
					response.sendRedirect("./index_main2.jsp?q=301");
				} else if (vCategory.equals("302")) {
					response.sendRedirect("./index_main2.jsp?q=302");
				} else if (vCategory.equals("303")) {
					response.sendRedirect("./index_main2.jsp?q=303");
				} else if (vCategory.equals("304")) {
					response.sendRedirect("./index_main2.jsp?q=304");
				}  else if (vCategory.equals("401")) {
					response.sendRedirect("./index_main2.jsp?q=401");
				}  else if (vCategory.equals("402")) {
					response.sendRedirect("./index_main2.jsp?q=402");
				} 	
				
			
				
				// =====================================
				// ============= 회원가입 =================
				int su;
				if(vCategory.equals("memInsert")) {
					dao = memDAO.getInstance();
					su = dao.memInsert(dto);
					if(su != 0) {
						out.println("회원가입 성공");
					}
				}
				// =====================================
	}

}
