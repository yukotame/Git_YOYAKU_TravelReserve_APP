package model;

import java.sql.Timestamp;

/**----------------------------------------------------------------------*
 *■■■ReserveDtoクラス■■■
 *概要：DTO（「RESERVE」テーブル）
 *----------------------------------------------------------------------**/
public class ReserveInfoDto {

	//----------------------------------------------------------------
	//フィールド
	//----------------------------------------------------------------

	private int       reserve_id ;        //予約ID
	private String    plan_id;            //プランID
	private String    plan_period_from ;  //期間FROM
	private String    plan_period_to;     //期間TO
	private String    user_name;          //予約者
	private Timestamp time ;              //更新時刻
	//----------------------------------------------------------------
	//getter/setter
	//----------------------------------------------------------------

	//getter/setter（対象フィールド：reserve_id）
	public int getReserveId() { return reserve_id; }
	public void setReserveId(int reserve_id) { this.reserve_id = reserve_id; }

	//getter/setter（対象フィールド：plan_id）
	public String getPlanId() { return plan_id; }
	public void setPlanId(String plan_id) { this.plan_id = plan_id; }

	//getter/setter（対象フィールド：plan_name）
	public String getPlanPeriodFrom() { return plan_period_from; }
	public void setPlanPeriodFrom(String plan_period_from) { this.plan_period_from = plan_period_from; }

	//getter/setter（対象フィールド：plan_period_from）
	public String getPlanPeriodTo() { return plan_period_to; }
	public void setPlanPeriodTo(String plan_period_to) { this.plan_period_to = plan_period_to; }


	//getter/setter（対象フィールド：user_name）
	public String getUserName() { return user_name; }
	public void setUserName(String user_name) { this.user_name = user_name; }

	//getter/setter（対象フィールド：time）
	public Timestamp getTime() { return time; }
	public void setTime(Timestamp time) { this.time = time; }


}
