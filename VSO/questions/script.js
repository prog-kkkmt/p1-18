var content__boxFild = document.getElementsByClassName('content__box');
var len_conten__box = content__boxFild.length;
//Всем блокам ставим display: "none"
for (var i = 1; i < len_conten__box; ++i)
	content__boxFild[i].style.display = "none";
document.getElementById('case').style.display = "none"; //итоговому окну ставим display: "none"
content__boxFild[0].style.display = "block"; //Первому блоку делаем display: "block"

//Для перехода к следующему блоку
function swapDisplay(before_element_id, after_element_id){
	document.getElementById(before_element_id).style.display = "none";
	document.getElementById(after_element_id).style.display = "block";
}

//Для отправки результатов
var btnResutl = document.getElementById('btnResutl');
var resultFild = document.getElementById('resultFild');
var inputFild = document.getElementsByTagName('input');

//Вывод итога
function final(element_id){
	document.getElementById(element_id).style.display = "none";
	document.getElementById('case').style.display = "block";

	let resultedInputs = document.querySelectorAll("input[type='radio']:checked");
    var result = 0;
    Array.prototype.map.call(resultedInputs, (el)=>{
      result += parseInt(el.dataset.value);
    });

    var resultFild = document.getElementById('resultFild');
    resultFild.innerHTML = result + " / 5";
}

