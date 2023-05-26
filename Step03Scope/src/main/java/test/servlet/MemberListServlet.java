package test.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import test.member.dto.MemberDto;


@WebServlet("/member/list")
public class MemberListServlet extends HttpServlet{

		@Override
		public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
			List<MemberDto> list = new ArrayList<>();
			
			list.add(new MemberDto(1,"김구라","노량진"));
			list.add(new MemberDto(2,"해골","행신동"));
			list.add(new MemberDto(3,"원숭이","상도동"));
			
			req.setAttribute("list", list);
			
			RequestDispatcher rd=req.getRequestDispatcher("/member/list.jsp");
			rd.forward(req, res);
		}
}
