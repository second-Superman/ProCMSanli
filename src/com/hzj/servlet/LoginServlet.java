package com.hzj.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hzj.beans.Admin;
import com.hzj.server.AdminServer;

@WebServlet(name = "LoginServlet", urlPatterns = { "/LoginServlet.action" }

)
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// �ռ�����
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String kaptcha = req.getParameter("kaptcha");
		String mess = "";

		AdminServer adminServer = new AdminServer();

		if (username == null || password == null || kaptcha == null) {

			mess = "��������˺Ż�����������";
			req.setAttribute("mess", mess);
			req.getRequestDispatcher("/mess.jsp").forward(req, resp);
			return;
		}
		String resKaptcha = (String) req.getSession()
				.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		if (!kaptcha.equalsIgnoreCase(resKaptcha)) {
			mess = "���������֤���д���";
			req.setAttribute("mess", mess);
			req.getRequestDispatcher("/mess.jsp").forward(req, resp);
			return;
		}

		Admin admin = new Admin();
		admin.setUsername(username);
		admin.setPassword(password);

		Admin resultAdmin = adminServer.login(admin);

		if (resultAdmin == null) {
			mess = "���������������˺�����";
			req.setAttribute("mess", mess);
			req.getRequestDispatcher("/mess.jsp").forward(req, resp);

		} else {
			req.getSession().setAttribute("admin", resultAdmin);

			req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
