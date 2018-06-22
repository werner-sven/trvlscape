var left = document.getElementById('left');

if (left != null) {
var right = document.getElementById('right');
var btn = document.getElementById('btn');
var scream = document.getElementById('omg');

function split() {
  left.classList.add('split-left');
  right.classList.add('split-right');
  btn.classList.add('scale-down');
  scream.classList.add('scream');
}

btn.addEventListener('click', split, false);
}
