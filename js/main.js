// SCRIPT CARROSSEL
document.getElementById("radio1").checked = true;

let count = 1;
function nextImage(){
  count++;
  if(count>3){
    count = 1;
  }
  document.getElementById("radio"+count).checked = true;
}
setInterval(function(){nextImage();}, 3000);


// SCRIPT SCROLL
function verificarScroll() {
  var scrollAtual = window.scrollY || window.pageYOffset;
  //scrollAtual > 0 ? alert(scrollAtual) : '';
}
window.addEventListener('scroll', verificarScroll);