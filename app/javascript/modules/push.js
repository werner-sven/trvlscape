function scrollWin() {
  const buttonPusher0 = document.querySelector("#scroll0");
  const buttonPusher1 = document.querySelector("#scroll1");
  const buttonPusher2 = document.querySelector("#scroll2");
  const buttonPusher3 = document.querySelector("#scroll3");

  if (buttonPusher0 != null) {
    buttonPusher0.addEventListener("click", click);
    buttonPusher1.addEventListener("click", click);
    buttonPusher2.addEventListener("click", click);
    buttonPusher3.addEventListener("click", click);

}

function click(event) {
  event.preventDefault();
  window.scrollBy(0, window.innerHeight)
}};

export { scrollWin };
// window.scrollBy(0, 200)
