function scrollWin() {
  const buttonPusher0 = document.querySelector("#scroll0");
  const buttonPusher1 = document.querySelector("#scroll1");
  const buttonPusher2 = document.querySelector("#scroll2");
  const buttonPusher3 = document.querySelector("#scroll3");

  if (buttonPusher0 === undefined) {return};
    buttonPusher0.addEventListener("click", click);

  if (buttonPusher1 === undefined) {return};
    buttonPusher1.addEventListener("click", click);

  if (buttonPusher2 === undefined) {return};
    buttonPusher2.addEventListener("click", click);

  if (buttonPusher3 === undefined) {return};
    buttonPusher3.addEventListener("click", click);

}

function click(event) {
  event.preventDefault();
  window.scrollBy(0, window.innerHeight)
}

export { scrollWin };
// window.scrollBy(0, 200)
