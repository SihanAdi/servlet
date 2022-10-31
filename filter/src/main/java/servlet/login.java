package servlet;

import util.Constant;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取前端请求参数
        String username = req.getParameter("username");
        //判断登陆是否成功
        if (username.equals("admin")){
            req.getSession().setAttribute(Constant.USER_SESSION,req.getSession().getId());
            System.out.println("进来了");
            resp.sendRedirect("/filter_war/sys/success.jsp");
        }else {
            resp.sendRedirect("/filter_war/erro.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
