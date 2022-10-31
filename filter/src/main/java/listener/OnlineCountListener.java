package listener;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

//统计网站在线人数
public class OnlineCountListener implements HttpSessionListener {
    @Override
    //一旦创建一个session就会出发一次这个事件
    public void sessionCreated(HttpSessionEvent se) {

        ServletContext servletContext = se.getSession().getServletContext();
        System.out.println(se.getSession().getId());
        Integer onlineCount = (Integer) servletContext.getAttribute("OnlineCount");

        if(onlineCount == null){
            onlineCount = 1;
        }else{
            onlineCount++;
        }
        servletContext.setAttribute("OnlineCount",onlineCount);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        ServletContext servletContext = se.getSession().getServletContext();
        Integer onlineCount = (Integer) servletContext.getAttribute("OnlineCount");
        if(onlineCount == null){
            onlineCount = 0;
        }else{
            onlineCount--;
        }
        servletContext.setAttribute("OnlineCount",onlineCount);
    }
    //session手动销毁
    //session自动销毁
}
