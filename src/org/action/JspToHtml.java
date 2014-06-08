package org.action;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class JspToHtml extends ActionSupport{
	
	private String filename="hailuo";

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFilename() {
		return filename;
	}
	
	@Override
	public String execute() throws ServletException, UnsupportedEncodingException, FileNotFoundException{
		String url = "/" + filename + ".jsp";
		
		HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();

        String name=request.getRealPath("")+"/" + filename + ".html";
		ServletContext sc = ServletActionContext.getServletContext();
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
		
		try {
			rd.include(request, rep);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("catch 1");
			e.printStackTrace();
		}
		pw.flush();
		
		FileOutputStream fos = new FileOutputStream(name); // 把jsp输出的内容写到xxx.htm
		try {
			os.writeTo(fos);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("catch 2");
			e.printStackTrace();
		}
		try {
			fos.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("catch 3");
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
