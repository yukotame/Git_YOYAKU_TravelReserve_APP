package model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**----------------------------------------------------------------------*
 *■■■ProjectInfoDaoクラス■■■
 *概要：DAO（「PROJECT」テーブル）
 *----------------------------------------------------------------------**/
public class ReserveInfoDao {
	//-------------------------------------------
	//データベースへの接続情報
	//-------------------------------------------

	//JDBCドライバの相対パス
	//※バージョンによって変わる可能性があります（MySQL5系の場合は「com.mysql.jdbc.Driver」）
	String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";

	//接続先のデータベース
	String JDBC_URL    = "jdbc:mysql://localhost/yoyaku_db?characterEncoding=UTF-8&serverTimezone=JST&useSSL=false";

	//接続するユーザー名
	String USER_ID     = "yoyaku_user";

	//接続するユーザーのパスワード
	String USER_PASS   = "yoyaku_pass";


	//----------------------------------------------------------------
	//メソッド
	//----------------------------------------------------------------

	/**----------------------------------------------------------------------*
	 *■doReserveInsertメソッド
	 *概要　：「RESERVE」テーブルに対象の予約データを挿入する
	 *引数　：対象のアンケートデータ（ReserveInfoDto型）
	 *戻り値：実行結果（真：成功、偽：例外発生）
	 *----------------------------------------------------------------------**/
	public boolean doReserveInsert(ReserveInfoDto dto) {

		//-------------------------------------------
		//JDBCドライバのロード
		//-------------------------------------------
		try {
			Class.forName(DRIVER_NAME);       //JDBCドライバをロード＆接続先として指定
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		//-------------------------------------------
		//SQL発行
		//-------------------------------------------

		//JDBCの接続に使用するオブジェクトを宣言
		//※finallyブロックでも扱うためtryブロック内で宣言してはいけないことに注意
		Connection        con = null ;   // Connection（DB接続情報）格納用変数
		PreparedStatement ps  = null ;   // PreparedStatement（SQL発行用オブジェクト）格納用変数

		//実行結果（真：成功、偽：例外発生）格納用変数
		//※最終的にreturnするため、tryブロック内で宣言してはいけないことに注意
		boolean isSuccess = true ;

		try {

			//-------------------------------------------
			//接続の確立（Connectionオブジェクトの取得）
			//-------------------------------------------
			con = DriverManager.getConnection(JDBC_URL, USER_ID, USER_PASS);

			//-------------------------------------------
			//トランザクションの開始
			//-------------------------------------------
			//オートコミットをオフにする（トランザクション開始）
			con.setAutoCommit(false);

			//-------------------------------------------
			//SQL文の送信 ＆ 結果の取得
			//-------------------------------------------

			//発行するSQL文の生成（「PROJECT」テーブル INSERT）
			StringBuffer buf1 = new StringBuffer();
			buf1.append("INSERT INTO yoyaku_db.RESERVE (  ");
			buf1.append("  user_name,                ");
			buf1.append("  plan_id,                ");
			buf1.append("  plan_period_from,                ");
			buf1.append("  plan_period_to,                ");
			buf1.append("  regist_timestamp               ");
			buf1.append(") VALUES (            ");
			buf1.append("  ?,                  ");
			buf1.append("  ?,                  ");
			buf1.append("  ?,                  ");
			buf1.append("  ?,                  ");
			buf1.append("  ?                  ");
			buf1.append(")                     ");

			//PreparedStatementオブジェクトを生成＆発行するSQLをセット
			ps = con.prepareStatement(buf1.toString() , java.sql.Statement.RETURN_GENERATED_KEYS);

			//パラメータをセット
			ps.setString(    1, dto.getUserName()              ); //第1パラメータ：更新データ（名前）
			ps.setString(    2, dto.getPlanId()              ); //第2パラメータ：更新データ（プラン）
			ps.setString(    3, dto.getPlanPeriodFrom()); //第3パラメータ：更新データ（期間FROM）
			ps.setString(    4, dto.getPlanPeriodTo()           ); //第4パラメータ：更新データ（期間TO）
			ps.setTimestamp( 5, dto.getTime()              ); //第5パラメータ：更新データ（更新時刻）

			//SQL文の実行
			ps.executeUpdate();

	        int autoIncKeyFromApi = -1;
	        // getGeneratedKeys()により、Auto_IncrementされたIDを取得する
	        ResultSet rs = ps.getGeneratedKeys();
	        if (rs.next()) {
	             autoIncKeyFromApi = rs.getInt(1);
	        } else {
	             // throw an exception from here
	        }

			System.out.println("--- 確認 ProjectInfoDao ---");
	        System.out.println("発番されたProject_id:"  + autoIncKeyFromApi);





		} catch (SQLException e) {
			e.printStackTrace();

			//実行結果を例外発生として更新
			isSuccess = false ;

		} finally {
			//-------------------------------------------
			//トランザクションの終了
			//-------------------------------------------
			if(isSuccess){
				//明示的にコミットを実施
				try {
					con.commit();
				} catch (SQLException e) {
					e.printStackTrace();
				}

			}else{
				//明示的にロールバックを実施
				try {
					con.rollback();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			//-------------------------------------------
			//接続の解除
			//-------------------------------------------

			//PreparedStatementオブジェクトの接続解除
			if (ps != null) {    //接続が確認できている場合のみ実施
				try {
					ps.close();  //接続の解除
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			//Connectionオブジェクトの接続解除
			if (con != null) {    //接続が確認できている場合のみ実施
				try {
					con.close();  //接続の解除
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}

		//実行結果を返す
		return isSuccess;
	}




}
