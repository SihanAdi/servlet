package servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class fileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //下载文件
//        1. 要获取下载文件的路径
//        String realPath = this.getServletContext().getRealPath("/1.png");
        String realPath = "/Users/adisihansun/IdeaProjects/servlet/response/target/response/WEB-INF/classes/1.png";
        System.out.println("下载文件的路径: " + realPath);
//        2．下载的文件名是啥？
        String filename = realPath.substring(realPath.lastIndexOf("\\") + 1);
//        3.设置想办法让浏览器能够支持(Content-Disposition)下载我们需要的东西
        resp.setHeader("Content-Disposition", "attachment;filename=" + filename);
//        4. 获取下载文件的输入流
        FileInputStream fileInputStream = new FileInputStream(realPath);
//        5. 创建缓冲区
        int len = 0;
        byte[] bytes = new byte[1024];
//        6. 获取Outputstream对象
        ServletOutputStream outputStream = resp.getOutputStream();
//        7.将Fileoutputstream流写入到buffer缓冲区，使用Outputstream将缓冲区中的数据输出到客户端
        while((len = fileInputStream.read(bytes)) > 0){
            outputStream.write(bytes, 0, len);
        }
//        8.关闭
        fileInputStream.close();
        outputStream.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
