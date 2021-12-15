package model;

/**----------------------------------------------------------------------*
 *■■■CreateProjectBLクラス■■■
 *概要：ビジネスロジック（プロジェクト情報とプロジェクト日程情報の登録）
 *----------------------------------------------------------------------**/
public class TravelRegisterBL {

	/**----------------------------------------------------------------------*
	 *■executeInsertProjectメソッド
	 *概要  ：プロジェクト情報「RESERVE」テーブルに登録する。
	 *引数  ：予約情報（ユーザー入力 ReserveInfoDto型）
	 *戻り値：実行結果（真：成功、偽：例外発生）
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
