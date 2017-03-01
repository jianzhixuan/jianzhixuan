package cn.stud.show;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.domain.Stud;

public class ShowAllServlet extends HttpServlet {
	private ShowAllService service = new ShowAllService();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Stud> list = service.query();
		// 将查询的结果放到
		request.setAttribute("studs", list);
		request.getRequestDispatcher("/jsps/studs.jsp").forward(request, response);
	}
}
