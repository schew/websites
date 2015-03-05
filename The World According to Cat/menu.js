var x=false;

function openMenu(){
  document.getElementById("menu").style.display="block";
  x = true;
}

function closeMenu(){
  document.getElementById("menu").style.display="none";
  x = false;
}

function checkStatus(){
  if (x == false) {
    openMenu();
  }
  else {
    closeMenu();
  }
}


