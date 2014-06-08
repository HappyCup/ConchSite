package org.tool;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import org.apache.struts2.ServletActionContext;


public class ToHtml extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToHtml() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String filename = request.getParameter("filename");
		if(filename == null) filename="hailuo";
		String url = "/" + filename + ".jsp";
		
        String name=request.getRealPath("")+"/" + filename + ".html";
        ServletContext sc = getServletContext();
		RequestDispatcher rd = sc.getRequestDispatcher(url);
		
		final ByteArrayOutputStream os = new ByteArrayOutputStream();

		final ServletOutputStream stream = new ServletOutputStream() {
			public void write(byte[] data, int offset, int length) {
				os.write(data, offset, length);
			}

			public void write(int b) throws IOException {
				os.write(b);
			}
		};

		final PrintWriter pw = new PrintWriter(new OutputStreamWriter(os,"utf-8"),true);

		HttpServletResponse rep = new HttpServletResponseWrapper(response) {
			public ServletOutputStream getOutputStream() {
				return stream;
			}

			public PrintWriter getWriter() {
				return pw;
			}
		};
		
		rd.include(request, rep);
		pw.flush();
		FileOutputStream fos = new FileOutputStream(name); // 把jsp输出的内容写到xxx.htm
		os.writeTo(fos);
		fos.close();
		//PrintWriter out = response.getWriter(); 
		this.getServletContext().getRequestDispatcher("/" + filename + ".html").forward(request,response);
		//out.print("<p align=center><font size=3 color=red>页面已经成功生成！single<br>http://www.agilejava.org/space/? 233</font></p>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
