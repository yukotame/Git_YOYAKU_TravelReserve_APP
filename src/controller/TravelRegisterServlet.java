package controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ReserveInfoDto;
import model.TravelRegisterBL;

/**
 * Servlet implementation class TravelRegisterServlet
 */
@WebServlet("/TravelRegisterServlet")
public class TravelRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TravelRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		System.out.println("TravelRegisterServlet");

		//リクエストパラメータからユーザー入力値を取得
		String userName   = request.getParameter("your-name");      //リクエストパラメータ（USER_ID）
		String email = request.getParameter("your-e-mail");     //リクエストパラメータ（PASSWORD）
		String plan_id = request.getParameter("your-plan");     //リクエストパラメータ（PASSWORD）
		String plan_period = request.getParameter("datepicker");     //リクエストパラメータ（PASSWORD）

		String plan_period_from = "";
		String work_plan_period_to = "";
		String plan_period_to = "";
		boolean succesFlg          = true;

		try {
			if (plan_period != null ) {

				plan_period_from = plan_period.substring(0, 10);
				work_plan_period_to = plan_period.substring(plan_period.length() - 14);
				plan_period_to = work_plan_period_to.substring(0,10);

			}

		} catch(Exception e) {
			  e.getStackTrace();
		}


		System.out.println("userName" + userName);
		System.out.println("email" + email);
		System.out.println("plan_id" + plan_id);
		System.out.println("plan_period" + plan_period);
		System.out.println("plan_period_from" + plan_period_from);
		System.out.println("plan_period_to" + plan_period_to);



		ReserveInfoDto rdto = new ReserveInfoDto();
		rdto.setReserveId(0);
		rdto.setUserName(userName);
		rdto.setPlanId(plan_id);
		rdto.setPlanPeriodFrom(plan_period_from);
		rdto.setPlanPeriodTo(plan_period_to);

		rdto.setTime( new Timestamp(System.currentTimeMillis()) );   //現在時刻を更新時刻として設定

		//アンケートデータをDBに登録
		TravelRegisterBL logic = new TravelRegisterBL();
		succesFlg          = logic.executeInsertProject(rdto);  //成功フラグ（true:成功/false:失敗）



	//成功/失敗に応じて表示させる画面を振り分ける
	if (succesFlg) {

		//成功した場合、回答完了画面（finish.html）を表示する
		response.sendRedirect("htmls/finish.html");

	} else {

		//失敗した場合、エラー画面（error.html）を表示する
		response.sendRedirect("htmls/error.html");

	}


	}

}
