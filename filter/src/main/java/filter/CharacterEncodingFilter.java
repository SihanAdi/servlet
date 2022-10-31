package filter;

import javax.servlet.*;//不要倒错包
import java.io.IOException;

public class CharacterEncodingFilter implements Filter {
    @Override
    //web服务器启动，就已经初始化了，随时等待过滤对象出现
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("initial");
    }

    @Override
//    过滤中的所有代码，在过滤特定请求的时候都会执行
//    必须让过滤器继续通行，chain.doFilter(request,response);
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

        System.out.println("这是CharacterEncodingFilter执行前");
        chain.doFilter(request,response);//让我们的请求继续走，如果不写，程序到这里就会被拦截停止
        System.out.println("这是CharacterEncodingFilter执行后");
    }
//销毁
    @Override
    //web服务器关闭的时候，会销毁
    public void destroy() {
        System.out.println("以销毁");
    }
}
