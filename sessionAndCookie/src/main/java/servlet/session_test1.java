package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class session_test1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //解决乱码问题
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        //得到session
        HttpSession session = req.getSession();
        //给session中存东西
        session.setAttribute("name","adsh");
        session.setAttribute("Person",new Person("sy",18));
        //获得session的id
        String id = session.getId();
        //判断session是不是新创建的
        if (session.isNew()){
            resp.getWriter().write("session创建成功，ID是"+ id);
        }else {
            resp.getWriter().write("session已经存在，ID是" + id);
        }
        //session创建的时候做了什么：
//        Cookie jsessionid = new Cookie("JSESSIONID", id);
//        resp.addCookie(jsessionid);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
