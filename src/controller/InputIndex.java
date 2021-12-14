package controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**----------------------------------------------------------------------*
 *■■■InputLoginクラス■■■
 *概要：サーブレット
 *詳細：HTML文書（ログイン画面）を出力する。
 *----------------------------------------------------------------------**/

@WebServlet("/InputIndex")
public class InputIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public InputIndex() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {



			//HTML文書（ログイン画面）の出力
			//Viewにフォワード（フォワード先：login.jsp）
			RequestDispatcher dispatch = request.getRequestDispatcher("/WEB-INF/view/index.jsp");
			dispatch.forward(request, response);

			//response.sendRedirect("htmls/index.html");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
