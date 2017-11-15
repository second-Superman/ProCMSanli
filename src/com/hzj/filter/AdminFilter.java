package com.hzj.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hzj.util.path.PathUtil;

@WebFilter(

filterName = "A002AdminFilter", urlPatterns = { "/admin/*" })
public class AdminFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		//ת��requestΪHttpServletRequest
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse httpServletResponse = (HttpServletResponse) response;
		
		//��ȡHttpSession����
		HttpSession httpSession = httpServletRequest.getSession();
		//�й���Ա�Ƿ��Ѿ���¼
		if (httpSession.getAttribute("admin") != null) {
			//����Ѿ��й���Ա��¼�������ǰ�������С�
			chain.doFilter(request, response);
		} else {

			
			//���û�й���Ա��¼�����ض���ĳһ��ҳ�棨��Ϊ����Ҫ�κδ��ݲ��������ֱ�����ض���
			httpServletResponse.sendRedirect(PathUtil.getPath(httpServletRequest, "index.jsp"));
		}

	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
