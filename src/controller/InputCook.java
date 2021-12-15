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

@WebServlet("/InputCook")
public class InputCook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public InputCook() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			//レスポンス（出力データ）の文字コードを設定
			response.setContentType("text/html;charset=UTF-8");  //文字コードをUTF-8で設定
			//リクエスト（受信データ）の文字コードを設定
			request.setCharacterEncoding("UTF-8");                  //文字コードをUTF-8で設定

			//HTML文書（ログイン画面）の出力
			//Viewにフォワード（フォワード先：cook.jsp）
			RequestDispatcher dispatch = request.getRequestDispatcher("/WEB-INF/view/cook.jsp");
			dispatch.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
