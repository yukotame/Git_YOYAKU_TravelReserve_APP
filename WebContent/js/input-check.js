'use strict';
{


	var elmSUBMIT = document.getElementById("SUBMIT");
	var elmName = document.getElementById("name");
	var elmEmail = document.getElementById("e-mail");
	var elmPlan = document.getElementById("plan");
	var elmCal = document.getElementById("myCal");



	elmSUBMIT.onclick = function(){


	var canSubmit = true;
	  if(elmName.value == "" ){
		    alert("名前を入力してください。");
		    canSubmit = false;
	  }

	  if(elmEmail.value == "" ){
		    alert("メールアドレスを入力してください。");
		    canSubmit = false;
	  }

	  if(elmPlan.value == ""  ||  elmPlan.value == undefined ){
		    alert("プランを入力してください。");
		    canSubmit = false;
	  }

	  if(elmCal.value == "" ){
		    alert("日程を入力してください。");
		    canSubmit = false;
	  }




	  return canSubmit;
	}
}
