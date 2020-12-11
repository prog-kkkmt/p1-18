var btnResutl = document.getElementById('btnResutl');
var resultFild = document.getElementById('resultFild');
var inputFild = document.getElementsByTagName('input');
btnResutl.addEventListener('click', function(){
    let resultedInputs = document.querySelectorAll("input[type='radio']:checked");
    let result = 0;
    Array.prototype.map.call(resultedInputs, (el)=>{
      result += parseInt(el.dataset.value);
    });
    console.log(result);

    window.open('../answer/answer.html?&'+result);
    resultFild.innerHTML = result + ' баллов'
});