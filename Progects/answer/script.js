function answer() {
	var resultFild = document.getElementById('resultFild');
    var result = decodeURIComponent(location.search.substr(2)).split('&');;
    console.log(result);
    // if (result == 1){
    // 	resultFild.innerHTML = result + ' балл';
    // }

    // else if (result > 1 && result < 5)
    // 	resultFild.innerHTML = result + ' балла';
    // else
    // 	resultFild.innerHTML = result + ' баллов';

    resultFild.innerHTML = result + " / 10";
}