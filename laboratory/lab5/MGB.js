function formato() {
  var el = document.getElementById("n1");
  el.style.borderColor = "green";
  el.style.fontWeight = "bold";
  el.style.backgroundColor = "#000";
  el.style.color = "#fff";
}

function vaciar() {
  var el = document.getElementById("n1");
  el.value = "";
  el.style.borderColor = "blue";
  el.style.borderWidth = "3px";
  el.style.fontSize = "12pt";
  el.style.fontWeight = "normal";
  el.style.backgroundColor = "initial";
  el.style.color = "initial";
}

function cuadrado() {
  var num = document.getElementById("n1");
  num.value *= num.value;
  formato();
}

function inverso() {
  var num = document.getElementById("n1");
  num.value = 1 / num.value;
  formato();
}

function sqrt() {
  var num = document.getElementById("n1");
  num.value = Math.sqrt(num.value);
  formato();
}

function factorial() {
  var num = document.getElementById("n1");
  var ctr;
  var res = 1;
  var n = num.value;
  if (n == 0) {
    num.value = res;
  } else {
    for (ctr = 1; ctr <= n; ctr++) {
      res *= ctr;
    }
    num.value = res;
  }
  formato();
}

function log() {
  var num = document.getElementById("n1");
  num.value = Math.log10(num.value);
  formato();
}
