/**
 * 
 */
var vState = 0;
var vImg;

function imgslide(value){
	vImg = ["img1","img2","img3"];

	
	if(value==0){
		vState++;
		if(vState == 3){
			vState = 0;
		}
		switch(vState){
		case 0 :
			document.getElementById(vImg[vState+2]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState+2]).style.left = "-980px";
			document.getElementById(vImg[vState+2]).style.zIndex = "0"; 
			document.getElementById(vImg[vState]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState]).style.left = "-0";
			document.getElementById(vImg[vState]).style.zIndex = "10"; 
			document.getElementById(vImg[vState+1]).style.transition = "none";
			document.getElementById(vImg[vState+1]).style.left = "980px";
			document.getElementById(vImg[vState+1]).style.zIndex = "0";
			vState = 0;
			break;
		case 1 :
			document.getElementById(vImg[vState-1]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState-1]).style.left = "-980px";
			document.getElementById(vImg[vState-1]).style.zIndex = "0"; 
			document.getElementById(vImg[vState]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState]).style.left = "0px";
			document.getElementById(vImg[vState]).style.zIndex = "10";
			document.getElementById(vImg[vState+1]).style.transition = "none";
			document.getElementById(vImg[vState+1]).style.left = "980px";
			document.getElementById(vImg[vState+1]).style.zIndex = "0";
			break;
		case 2:
			document.getElementById(vImg[vState-2]).style.transition = "none";
			document.getElementById(vImg[vState-2]).style.left = "980px";
			document.getElementById(vImg[vState-2]).style.zIndex = "0"; 
			document.getElementById(vImg[vState-1]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState-1]).style.left = "-980px";
			document.getElementById(vImg[vState-1]).style.zIndex = "0"; 
			document.getElementById(vImg[vState]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState]).style.left = "0px";
			document.getElementById(vImg[vState]).style.zIndex = "10";
			break;
			
		}
	}
	else if(value == 1){
		vState--;
		if(vState <= -1){
			vState = 2;
		}
		switch(vState){
		case 0 :
			document.getElementById(vImg[vState+2]).style.transition = "none";
			document.getElementById(vImg[vState+2]).style.left = "-980px";
			document.getElementById(vImg[vState+2]).style.zIndex = "0"; 
			document.getElementById(vImg[vState]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState]).style.left = "0px";
			document.getElementById(vImg[vState]).style.zIndex = "10";
			document.getElementById(vImg[vState+1]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState+1]).style.left = "980px";
			document.getElementById(vImg[vState+1]).style.zIndex = "0";
			break;
		case 1:
			document.getElementById(vImg[vState+1]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState+1]).style.left = "980px";
			document.getElementById(vImg[vState+1]).style.zIndex = "0"; 
			document.getElementById(vImg[vState-1]).style.transition = "none";
			document.getElementById(vImg[vState-1]).style.left = "-980px";
			document.getElementById(vImg[vState-1]).style.zIndex = "0"; 
			document.getElementById(vImg[vState]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState]).style.left = "0px";
			document.getElementById(vImg[vState]).style.zIndex = "10";
			break;
		case 2:
			document.getElementById(vImg[vState-2]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState-2]).style.left = "980px";
			document.getElementById(vImg[vState-2]).style.zIndex = "0"; 
			document.getElementById(vImg[vState-1]).style.transition = "none";
			document.getElementById(vImg[vState-1]).style.left = "-980px";
			document.getElementById(vImg[vState-1]).style.zIndex = "0"; 
			document.getElementById(vImg[vState]).style.transition = "left 1s ease-in-out";
			document.getElementById(vImg[vState]).style.left = "0";
			document.getElementById(vImg[vState]).style.zIndex = "10";
			break;
		}
	}
}