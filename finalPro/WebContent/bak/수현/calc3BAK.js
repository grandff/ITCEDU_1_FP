/*n1=취득가액 / n2=취득세 / n3=농어촌특별세 / n4=지방교육세 / n6=세액합계*/

/*==========================
=====처음접속시기본선택화면제공
 ==========================*/

function init(){
    document.getElementById("but2").style.backgroundColor = 'green';
    document.getElementById("but3").style.backgroundColor = 'green';
    document.getElementById("but5").style.backgroundColor = 'green';
    sessionStorage.setItem("farmstate", 2); 
    sessionStorage.setItem("house", 3);
    sessionStorage.setItem("size", 5);
}
/*==========================
=====버튼클릭시
 ==========================*/

function but(num){
    switch(num){
        case 1:     // 농지 선택
            document.getElementById("but1").style.backgroundColor = 'green';
            document.getElementById("but2").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but3").style.display = 'none';
            document.getElementById("but4").style.display = 'none';
            document.getElementById("but5").style.display = 'none';
            document.getElementById("but6").style.display = 'none';
            sessionStorage.setItem("farmstate", 1);    // 농지, 비농지 구분 키워드 : farmstate -> 1: 농지 / 2 : 비농지
            break;
        case 2:     // 비농지 선택
            document.getElementById("but1").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but2").style.backgroundColor = 'green';
            document.getElementById("but3").style.display = 'block';
            document.getElementById("but4").style.display = 'block';
            document.getElementById("but5").style.display = 'block';
            document.getElementById("but6").style.display = 'block';
            sessionStorage.setItem("farmstate", 2);    // 농지, 비농지 구분 키워드 : farmstate -> 1: 농지 / 2 : 비농지
            
            break;
        case 3: 
            document.getElementById("but1").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but2").style.backgroundColor = 'green';
            document.getElementById("but3").style.backgroundColor = 'green';
            document.getElementById("but4").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but5").style.backgroundColor = 'green';
            document.getElementById("but6").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but5").style.display = 'block';
            document.getElementById("but6").style.display = 'block';
            sessionStorage.setItem("house", 3);         // 주택, 오피스텔 구분 키워드. 3: 주택, 4: 오피스텔 등
            break;
        case 4: 
            document.getElementById("but1").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but2").style.backgroundColor = 'green';
            document.getElementById("but3").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but4").style.backgroundColor = 'green';
            document.getElementById("but5").style.display = 'none';
            document.getElementById("but6").style.display = 'none';
            sessionStorage.setItem("house", 4);         // 주택, 오피스텔 구분 키워드. 3: 주택, 4: 오피스텔 등        
            break;
        case 5: 
            document.getElementById("but1").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but2").style.backgroundColor = 'green';
            document.getElementById("but3").style.backgroundColor = 'green';
            document.getElementById("but4").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but5").style.backgroundColor = 'green';
            document.getElementById("but6").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            sessionStorage.setItem("size", 5);  //주택 면적 구분키워드 5: 85㎡ 이하, 6: 85㎡ 초과
            break;
        case 6: 
            document.getElementById("but1").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but2").style.backgroundColor = 'green';
            document.getElementById("but3").style.backgroundColor = 'green';
            document.getElementById("but4").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but5").style.backgroundColor = 'rgba(158, 143, 143, 0.55)';
            document.getElementById("but6").style.backgroundColor = 'green';
            sessionStorage.setItem("size", 6);  //주택 면적 구분키워드 5: 85㎡ 이하, 6: 85㎡ 초과
            break;    
            
    }
}

/*==========================
=====계산하기 화면
 ==========================*/
function sum(){
    // n1 취득가액 , n2 취득세 , n3 농어촌 취득세, n4 지방교육세, n6 세액합계
    document.getElementById("resultshow").style.display = 'block'; //화면보여주기
    var result = document.getElementById("txt").value;             // 취득가액값 가져오기
    var farmstate = sessionStorage.getItem("farmstate");           // 농지 비농지 선택 확인
    if(farmstate == 1){         // 농지 선택시 바로 계산
        alert('농지선택 확인');
        document.getElementById("n1").value = numberWithCommas(result);               //취득가액
        document.getElementById("n2").value = numberWithCommas(Math.round(result * 0.03));        //취득세
        document.getElementById("n3").value = numberWithCommas(Math.round(result * 0.002));       //농어촌취득세
        document.getElementById("n4").value = numberWithCommas(Math.round(result * 0.002));       //지방교육세
        document.getElementById("n6").value = numberWithCommas(Math.round(result * 0.034));       //세액합계
    }else if(farmstate == 2){   // 비농지 선택시 세부사항 확인을 위한 if문 사용
        alert('비농지선택 확인');
        var house = sessionStorage.getItem("house");
        if(house == 3){
            alert('주택 확인');
            var size = sessionStorage.getItem("size");
            if(size == 5){
                alert('85㎡ 이하');
                if(result<=600000000){
                alert('6억이하');
                document.getElementById("n1").value = numberWithCommas(result);               //취득가액
                document.getElementById("n2").value = numberWithCommas(Math.round(result * 0.01));        //취득세
                document.getElementById("n3").value = "비과세";       //농어촌취득세
                document.getElementById("n4").value = numberWithCommas(Math.round(result * 0.001));       //지방교육세
                document.getElementById("n6").value = numberWithCommas(Math.round(result * 0.011));     //세액합계
                }
                else if(result>600000000 && result<=900000000){
                alert('6억~9억이하');
                document.getElementById("n1").value = numberWithCommas(result);               //취득가액
                document.getElementById("n2").value = numberWithCommas(Math.round(result * 0.02));        //취득세
                document.getElementById("n3").value = "비과세";      //농어촌취득세
                document.getElementById("n4").value = numberWithCommas(Math.round(result * 0.002));       //지방교육세
                document.getElementById("n6").value = numberWithCommas(Math.round(result * 0.022));     //세액합계
                }
                else if(result>900000000){
                alert('9억초과');
                document.getElementById("n1").value = numberWithCommas(result);               //취득가액
                document.getElementById("n2").value = numberWithCommas(Math.round(result * 0.03));        //취득세
                document.getElementById("n3").value = "비과세";      //농어촌취득세
                document.getElementById("n4").value = numberWithCommas(Math.round(result * 0.003));       //지방교육세
                document.getElementById("n6").value = numberWithCommas(Math.round(result * 0.033));     //세액합계
                }
            }
            else if(size == 6){
                alert('85㎡ 초과');
                if(result<=600000000){
                alert('6억이하');
                document.getElementById("n1").value = numberWithCommas(result);               //취득가액
                document.getElementById("n2").value = numberWithCommas(Math.round(result * 0.01));        //취득세
                document.getElementById("n3").value = numberWithCommas(Math.round(result * 0.02));       //농어촌취득세
                document.getElementById("n4").value = numberWithCommas(Math.round(result * 0.001));       //지방교육세
                document.getElementById("n6").value = numberWithCommas(Math.round(result * 0.013));     //세액합계
                }
                else if(result>600000000 && result<=900000000){
                alert('6억~9억이하');
                document.getElementById("n1").value = numberWithCommas(result);               //취득가액
                document.getElementById("n2").value = numberWithCommas(Math.round(result * 0.02));        //취득세
                document.getElementById("n3").value = numberWithCommas(Math.round(result * 0.02));      //농어촌취득세
                document.getElementById("n4").value = numberWithCommas(Math.round(result * 0.002));       //지방교육세
                document.getElementById("n6").value = numberWithCommas(Math.round(result * 0.024));     //세액합계
                }
                else if(result>900000000){
                alert('9억초과');
                document.getElementById("n1").value = numberWithCommas(result);               //취득가액
                document.getElementById("n2").value = numberWithCommas(Math.round(result * 0.03));        //취득세
                document.getElementById("n3").value = numberWithCommas(Math.round(result * 0.02));       //농어촌취득세
                document.getElementById("n4").value = numberWithCommas(Math.round(result * 0.003));       //지방교육세
                document.getElementById("n6").value = numberWithCommas(Math.round(result * 0.035));     //세액합계
                }
            }
                
        }else if(house == 4){
            alert('오피스텔 확인');
            document.getElementById("n1").value = numberWithCommas(result);               //취득가액
            document.getElementById("n2").value = numberWithCommas(Math.round(result * 0.04));        //취득세
            document.getElementById("n3").value = numberWithCommas(Math.round(result * 0.002));       //농어촌취득세
            document.getElementById("n4").value = numberWithCommas(Math.round(result * 0.004));       //지방교육세
            document.getElementById("n6").value = numberWithCommas(Math.round(result * 0.046));       //세액합계
        }
    }
}

function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }