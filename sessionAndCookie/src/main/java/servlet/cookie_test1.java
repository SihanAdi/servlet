package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Date;

//保存用户上一次访问的时间
public class cookie_test1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //服务器，告诉你，你来的时问，把这个时问封装成为一个 信件，你下次来，我就知道你来了

        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        PrintWriter out = resp.getWriter();
        //cookie服务器端从客户端获取
        Cookie[] cookies = req.getCookies();//说明cookie可能存在多个

        //判断cookie是否存在
        if (cookies != null){
            out.write("your last access time is:");
            for (int i = 0; i < cookies.length; i++) {
                Cookie cookie = cookies[i];
                if (cookie.getName().equals("llt")){//获取cookie的名字
                    String value = cookie.getValue();//获得cookie中的值
                    long l = Long.parseLong(value);
                    Date date = new Date(l);
                    out.write(URLDecoder.decode(date.toLocaleString(), StandardCharsets.UTF_8));//解码
                }
            }
        }else{
            out.write("this is first access");
        }

        //服务器给客户端响应一个cookie
        Cookie llt = new Cookie("llt", URLEncoder.encode((System.currentTimeMillis() + ""), StandardCharsets.UTF_8));//编码
        //cookie有效期设为一天
        llt.setMaxAge(24*60*60);//单位是秒
        resp.addCookie(llt);//响应给客户端
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
