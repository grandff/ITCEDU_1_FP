package board;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class boardController
 */
@WebServlet(name = "boardController.do", urlPatterns = { "/boardController.do" })
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BoardController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// =================== 한글 처리 ========================
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		// ==================================================
		// ================== 파라미터 처리 ======================
				String vCategory = request.getParameter("q");
				String vList = request.getParameter("list");
				String vName, vPwd, vSubject, vContent, vImg;
				String vMsg, vUrl="";
				vName = request.getParameter("BOD_NAME");
				vPwd = request.getParameter("BOD_PWD");
				vSubject = request.getParameter("BOD_SUBJECT");
				vContent = request.getParameter("BOD_CONTENT");
				vImg = request.getParameter("BOD_IMG");
		// ==================================================
		// ========== 인덱스 자동 증가 및 데이터 저장 로드 ===============
				int num, su;
				BoardDTO dto = new BoardDTO(vName, vPwd, vSubject, vContent, vImg);
				BoardDAO dao;
				dao = BoardDAO.getInstance();

				// =================== 게시판 글쓰기 ====================
				if(vCategory.equals("boardWrite")) { // vCategory 값을 다르게 줘서 게시판 구분하기
					// test용으로 boardWrite 사용
					su = dao.boardWrite(dto,vList);
					if(su != 0) {
						ArrayList<BoardDTO> dtoL = dao.boardSelect(vList);
						// test용으로 QA_List.jsp 사용
						// 게시판 구분해서 하기
						vMsg = vName + "님 글쓰기 성공 확인!";
						vUrl = "/html/board/???.jsp?msg="+URLEncoder.encode(vMsg, "UTF-8");
						request.setAttribute("dtoL", dtoL);
						RequestDispatcher dispatcher = request.getRequestDispatcher(vUrl);
						dispatcher.forward(request, response);
					}
				// =================================================
				// ================== 게시판 목록 =======(완)==============
				}else if(vCategory.equals("boardTitle")) {
					// vList => 게시판 구분 파라미터
					if(vList.equals("1")) {
						vUrl = "/html/board/QA_list.jsp";
					}else	if(vList.equals("2")) {
						vUrl = "/html/board/Issue_list.jsp";
					}else if(vList.equals("3")) {
						vUrl = "/html/board/Show_list.jsp";
					}else if(vList.equals("4")) {
					vUrl = "/html/board/Buy_list.jsp";
					}
					// 해당 게시판 목록 가져오는 boardSelect(String num) 메소드 실행
					ArrayList<BoardDTO> dtoL = dao.boardSelect(vList);
					// dtoL에 저장 후 Url 이동
					request.setAttribute("dtoL", dtoL);
					RequestDispatcher dispatcher = request.getRequestDispatcher(vUrl);
					dispatcher.forward(request, response);
				}
				// ===================================================
	}
}
