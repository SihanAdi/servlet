package servletContext;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class getsc3 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //请求转发
        ServletContext servletContext = this.getServletContext();
        System.out.println("entre sc3");
        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/hello3");//转发的请求路径
        requestDispatcher.forward(req,resp);//调用forward实现请求转发

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
