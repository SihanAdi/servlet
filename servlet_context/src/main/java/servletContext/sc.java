package servletContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class sc extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        this.getInitParameter() //获得初始化参数
//        this.getServletConfig() //获得servlet配置
//        this.getServletContext() //获得servlet上下文

//        共享数据
        ServletContext servletContext = this.getServletContext();
        String username = "adsha";//数据
        servletContext.setAttribute("username", username);//将一个数据保存在了servletContext中，名字为username，值username


        System.out.println("hello");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
