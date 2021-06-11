let addbutton = document.getElementById("addbutton");

addbutton.addEventListener("click", function(){
let detail = document.getElementById("detail");
let clone = detail.firstElementChild.cloneNode(true);
detail.appendChild(clone); 

});