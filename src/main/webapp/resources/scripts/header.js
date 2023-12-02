const menuBtn = document.querySelector(".menu-btn");
const sideBar = document.querySelector(".menu-sidebar");

menuBtn.addEventListener("click", () => {
  menuBtn.classList.toggle("open");
  sideBar.classList.toggle("open");
  document.body.classList.toggle("open");
});
