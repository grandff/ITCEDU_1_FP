function radiochk() {
	var A = document.select1;
	var chkcount = 0;
	var chkcount2 = 0;
	var home = document.select1.home;
	var deal = document.select2.deal;
	var test = document.getElementById("resultshow");
	for (var i = 0; i < home.length; i++) {
		if (home[i].checked == true) {
			chkcount++;
			break;
		}
	}

	if (chkcount == 0) {
		alert("조회목적을 선택해주세요");
		return false;
	}
	
	for (var j = 0; j < deal.length; j++) {
		if (deal[j].checked == true) {
			chkcount2++;
			break;
		}
	}
	
	if (chkcount2 == 0) {
		alert("조회목적을 선택해주세요");
		return false;
	}


	if (deal[j].value == 1) {
		test.style.display = 'block';
		var num = document.getElementById("cal");
		var result = document.getElementById("result");
		var result2 = document.getElementById("result2");
		var result3 = document.getElementById("result3");
		if (num.value < 5000) {
			result.value = (num.value * 0.006)
			result2.value = 0.006
			if (result.value > 25) {
				result.value = 25
			}
		} else if (num.value >= 5000 && num.value < 20000) {
			result.value = (num.value * 0.005)
			result2.value = 0.005
			if (result.value > 80) {
				result.value = 80
			}
		} else if (num.value >= 20000 && num.value < 60000) {
			result.value = (num.value * 0.004)
			result2.value = 0.004
		}
		result.value = (Math.floor(result.value));
		result3.value = (num.value * 10000);
	}
	if (deal[j].value == 2) {
		test.style.display = 'block';
		var num = document.getElementById("cal");
		var result = document.getElementById("result");
		var result2 = document.getElementById("result2");
		var result3 = document.getElementById("result3");
		if (num.value < 5000) {
			result.value = (num.value * 0.005)
			result2.value = 0.005
			if (result.value > 20) {
				result.value = 20
			}
		} else if (num.value >= 5000 && num.value < 10000) {
			result.value = (num.value * 0.004)
			result2.value = 0.004
			if (result.value > 30) {
				result.value = 30
			}
		} else if (num.value >= 10000 && num.value < 30000) {
			result.value = (num.value * 0.003)
			result2.value = 0.003
		}
		result.value = (Math.floor(result.value));
		result3.value = (num.value * 10000);
	}
	if (deal[j].value == 3) {
		test.style.display = 'block';
		var num = document.getElementById("cal");
		var result = document.getElementById("result");
		var result2 = document.getElementById("result2");
		var result3 = document.getElementById("result3");
		if (num.value < 5000) {
			result.value = (num.value * 0.005)
			result2.value = 0.005
		} else if (num.value >= 5000) {
			result.value = (num.value * 0.003)
			result2.value = 0.003
		}
		result.value = (Math.floor(result.value));
		result3.value = (num.value * 10000);
	}

}
