package biz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import vo.UserVO;

@WebServlet("/Login")
public class LogServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LogServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String id, pwd;
        UserVO vo = null;
        PrintWriter out = response.getWriter();

        id = request.getParameter("id");
        pwd = request.getParameter("pwd");

        UserDAO dao = new UserDAO();
        System.out.println(id);
        
        vo = dao.login(id);


        if(vo == null || !pwd.equals(vo.getUser_password())) {
            out.println("<script> alert('회원정보가 맞지 않습니다'); history.go(-1); </script>");
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("loginOK", vo);
        }
    }
}

