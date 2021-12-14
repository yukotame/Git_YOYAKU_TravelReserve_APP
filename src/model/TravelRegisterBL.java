package model;

/**----------------------------------------------------------------------*
 *■■■CreateProjectBLクラス■■■
 *概要：ビジネスロジック（プロジェクト情報とプロジェクト日程情報の登録）
 *----------------------------------------------------------------------**/
public class TravelRegisterBL {

	/**----------------------------------------------------------------------*
	 *■executeInsertProjectメソッド
	 *概要  ：プロジェクト情報「PROJECT」テーブルに登録し、プロジェクト日程情報を「PROJECT_DATE」テーブルに登録する
	 *引数  ：プロジェクト情報とプロジェクト日程情報（ユーザー入力 ProjectPackDto型）
	 *戻り値：「PROJECT_DATE」テーブルから発番されたPROJECT_ID（int型）
	 *----------------------------------------------------------------------**/
	public boolean executeInsertProject(ReserveInfoDto rdto) {

		boolean succesInsert = false ;  //DB操作成功フラグ（true:成功/false:失敗）

		//-------------------------------------------
		//データベースへの接続を実施
		//-------------------------------------------

		//DAOクラスをインスタンス化＆対象のプロジェクト情報を登録するよう依頼
		ReserveInfoDao dao = new ReserveInfoDao();
		succesInsert = dao.doReserveInsert(rdto);

		return succesInsert;

	}

}
