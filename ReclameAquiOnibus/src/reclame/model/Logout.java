package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Logout implements Acao{

	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		request.getSession().invalidate();
		return "Index.jsp";
	}
}
